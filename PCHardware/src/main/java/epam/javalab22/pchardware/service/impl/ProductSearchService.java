package epam.javalab22.pchardware.service.impl;

import epam.javalab22.pchardware.dao.IProductDAO;
import epam.javalab22.pchardware.entity.Product;
import epam.javalab22.pchardware.service.BasicService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

import static epam.javalab22.pchardware.util.Constant.*;

public class ProductSearchService implements BasicService {

    private static final int MAX_PRICE_THRESHOLD = 400000;
    private static final int MIN_PRICE_THRESHOLD = 0;

    private Logger logger = LogManager.getLogger(this.getClass());

    @Override
    public String execute(HttpServletRequest request) {
        logger.traceEntry();

        ServletContext context = request.getServletContext();
        HttpSession session = request.getSession();

        IProductDAO productDAO = (IProductDAO) context.getAttribute(PRODUCT_DAO);

        String type = request.getParameter(TYPE);
        Locale locale = (Locale) session.getAttribute(LOCALE);
        List<Product> listOfProducts = productDAO.findByType(type, locale.toString());
        Set<String> setOfVendors = new HashSet<>();
        for (Product product : listOfProducts) {
            setOfVendors.add(product.getVendor());
        }

        if (request.getParameter(SEARCH_PARAMS) != null) {

            List<Product> priceWasteList = new ArrayList<>();
            List<Product> vendorWasteList = new ArrayList<>();

            int maxPrice;
            int minPrice;
            String vendor;

            if (request.getParameter(MAX_PRICE) == EMPTY) {
                maxPrice = MAX_PRICE_THRESHOLD;
            } else {
                maxPrice = Integer.parseInt(request.getParameter(MAX_PRICE));
            }
            if (request.getParameter(MIN_PRICE) == EMPTY) {
                minPrice = MIN_PRICE_THRESHOLD;
            } else {
                minPrice = Integer.parseInt(request.getParameter(MIN_PRICE));
            }

            for (Product product : listOfProducts) {
                vendor = product.getVendor();

                if (product.getPrice() > maxPrice) {
                    priceWasteList.add(product);
                    continue;
                }
                if (product.getPrice() < minPrice) {
                    priceWasteList.add(product);
                    continue;
                }
                if (request.getParameter(vendor) == null) {
                    vendorWasteList.add(product);
                }
            }
            listOfProducts.removeAll(priceWasteList);
            if (listOfProducts.size() > vendorWasteList.size()) {
                listOfProducts.removeAll(vendorWasteList);
            }
        }
        request.setAttribute(LIST_OF_PRODUCTS, listOfProducts);
        request.setAttribute(SET_OF_VENDORS, setOfVendors);

        logger.traceExit();
        return SEARCH_JSP;
    }
}