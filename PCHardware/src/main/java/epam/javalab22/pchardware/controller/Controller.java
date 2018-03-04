package epam.javalab22.pchardware.controller;

import epam.javalab22.pchardware.service.BasicService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

import static epam.javalab22.pchardware.util.Constant.*;

public class Controller extends HttpServlet {

    private Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.traceEntry();
        logger.traceExit();
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.traceEntry();

        ServletContext servletContext = request.getServletContext();
        String parameter = request.getParameter(SERVICE);
        logger.debug(SERVICE_PARAM, parameter);

        Map<String, BasicService> mapOfServices = (Map<String, BasicService>) servletContext.getAttribute(MAP_OF_SERVICES);
        BasicService service = mapOfServices.get(parameter);
        logger.debug(SERVICE_IS, service.getClass().getSimpleName());

        String path = service.execute(request);
        RequestDispatcher dispatcher = request.getRequestDispatcher(path);

        logger.traceExit(path);
        dispatcher.forward(request, response);
    }
}
