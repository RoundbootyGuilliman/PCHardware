package epam.javalab22.pchardware.dao.impl;

import epam.javalab22.pchardware.connection.ConnectionPool;
import epam.javalab22.pchardware.dao.IProductDAO;
import epam.javalab22.pchardware.entity.Product;
import epam.javalab22.pchardware.util.Closer;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.*;
import java.util.*;

import static epam.javalab22.pchardware.util.Constant.*;

public class ProductDAO implements IProductDAO {

    private final String FIND_ALL_PRODUCTS = "SELECT * FROM products ORDER BY product_id DESC";
    private final String FIND_PRODUCTS_BY_TYPE = "SELECT * FROM products WHERE type=? ORDER BY price DESC";
    private final String FIND_PRODUCTS_BY_ID = "SELECT * FROM products WHERE product_id=?";
    private final String FIND_CHARS = "SELECT * FROM chars WHERE product_id=? AND locale_id=?";
    private final String FIND_LOCALES = "SELECT * FROM locales WHERE locale_name=?";
    private final String ADD_PRODUCT = "INSERT INTO products (name, price, type, img) VALUES (?,?,?,?)";
    private final String ADD_CHARS = "INSERT INTO chars (product_id, char_id, locale_id, description_key, description_value) VALUES (?,?,?,?,?)";
    private final String DELETE_PRODUCT = "DELETE FROM products WHERE product_id=?";

    private ConnectionPool connectionPool = ConnectionPool.getConnectionPool();

    private Logger logger = LogManager.getLogger(this.getClass());

    public List<Product> getAllProducts() {
        logger.traceEntry();
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        int id;
        String name;
        int price;
        String type;
        String img;
        List<Product> listOfProducts = new ArrayList<>();

        try {
            preparedStatement = connection.prepareStatement(FIND_ALL_PRODUCTS);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt(1);
                name = resultSet.getString(2);
                price = resultSet.getInt(3);
                type = resultSet.getString(4);
                img = resultSet.getString(5);
                listOfProducts.add(new Product(id, name, price, type, img));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closeResultSet(resultSet);
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        logger.traceExit(PRODUCTS_FOUND, listOfProducts.size());
        return listOfProducts;
    }

    public List<Product> findByType(String type, String locale) {
        logger.traceEntry(TYPE_SEARCH, type, locale);
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        int id;
        String name;
        int price;
        String img;
        Product product;
        List<Product> listOfProducts = new ArrayList<>();

        try {
            preparedStatement = connection.prepareStatement(FIND_PRODUCTS_BY_TYPE);
            preparedStatement.setString(1, type);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt(1);
                name = resultSet.getString(2);
                price = resultSet.getInt(3);
                img = resultSet.getString(5);
                product = new Product(id, name, price, type, img);
                product = findChars(product, locale);
                listOfProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closeResultSet(resultSet);
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        logger.traceExit(PRODUCTS_FOUND, listOfProducts.size());
        return listOfProducts;
    }

    public Product findById(int id, String locale) {
        logger.traceEntry(SEARCH_PR, id, locale);
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        Product product = null;

        try {
            preparedStatement = connection.prepareStatement(FIND_PRODUCTS_BY_ID);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();
            product = new Product(id, resultSet.getString(2), resultSet.getInt(3),
                    resultSet.getString(4),resultSet.getString(5));
            product = findChars(product, locale);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closeResultSet(resultSet);
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        logger.traceExit();
        return product;
    }

    private Product findChars(Product product, String locale) {
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        Map<String, String> mapOfCharacteristics = new LinkedHashMap<>();

        try {
            preparedStatement = connection.prepareStatement(FIND_CHARS);
            preparedStatement.setString(1, String.valueOf(product.getId()));
            preparedStatement.setInt(2, getLocaleId(locale));
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                if (resultSet.getInt(2) == 1) {
                    product.setVendor(resultSet.getString(5));
                }
                mapOfCharacteristics.put(resultSet.getString(4), resultSet.getString(5));
            }
            product.setMapOfCharacteristics(mapOfCharacteristics);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closeResultSet(resultSet);
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        return product;
    }

    private int getLocaleId(String locale) {
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        int localeId = 0;

        try {
            preparedStatement = connection.prepareStatement(FIND_LOCALES);
            preparedStatement.setString(1, locale);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();
            localeId = resultSet.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closeResultSet(resultSet);
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        return localeId;
    }

    public void addProduct(Product product, Map<String, String> mapOfCharsEng,  Map<String, String> mapOfCharsRus) {
        logger.traceEntry(ADDING_PRODUCT, product.getName(), mapOfCharsEng.size(), mapOfCharsRus.size());
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        int productId;

        try {
            preparedStatement = connection.prepareStatement(ADD_PRODUCT, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setInt(2, product.getPrice());
            preparedStatement.setString(3, product.getType());
            preparedStatement.setString(4, product.getImg());
            preparedStatement.executeUpdate();
            resultSet = preparedStatement.getGeneratedKeys();
            resultSet.next();
            productId = resultSet.getInt(1);
            insertChars(productId, mapOfCharsEng, mapOfCharsRus);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closeResultSet(resultSet);
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        logger.traceExit();
    }

    private void insertChars(int productId, Map<String, String> mapOfCharsEng,  Map<String, String> mapOfCharsRus) {
        logger.traceEntry(ADDING_CHARS, productId);
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;

        try {
            Iterator<Map.Entry<String, String>> iterator = mapOfCharsEng.entrySet().iterator();
            for (int i = 1; i < mapOfCharsEng.entrySet().size()+1; i++) {
                Map.Entry<String, String> entry = iterator.next();

                preparedStatement = connection.prepareStatement(ADD_CHARS);
                preparedStatement.setInt(1, productId);
                preparedStatement.setInt(2, i);
                preparedStatement.setInt(3, 1);
                preparedStatement.setString(4, entry.getKey());
                preparedStatement.setString(5, entry.getValue());
                preparedStatement.executeUpdate();
            }
            iterator = mapOfCharsRus.entrySet().iterator();
            for (int i = 1; i < mapOfCharsRus.entrySet().size()+1; i++) {
                Map.Entry<String, String> entry = iterator.next();

                preparedStatement = connection.prepareStatement(ADD_CHARS);
                preparedStatement.setInt(1, productId);
                preparedStatement.setInt(2, i);
                preparedStatement.setInt(3, 2);
                preparedStatement.setString(4, entry.getKey());
                preparedStatement.setString(5, entry.getValue());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        logger.traceExit();
    }

    public void deleteProduct (int productId) {
        logger.traceEntry(DELETING_PRODUCT, productId);
        Connection connection = connectionPool.getConnection();
        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(DELETE_PRODUCT);
            preparedStatement.setInt(1, productId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Closer.closePreparedStatement(preparedStatement);
            connectionPool.returnConnection(connection);
        }
        logger.traceExit();
    }
}