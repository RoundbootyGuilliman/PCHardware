package epam.javalab22.pchardware.util;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Closer {

    private Closer(){}

    public static void closeResultSet(ResultSet resultSet) {
        try {
            if (resultSet != null) resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
