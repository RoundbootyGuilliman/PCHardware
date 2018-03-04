package epam.javalab22.pchardware.service.impl;

import epam.javalab22.pchardware.service.BasicService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Locale;

import static epam.javalab22.pchardware.util.Constant.*;

public class LocaleChangeService implements BasicService {

    private Logger logger = LogManager.getLogger(this.getClass());

    @Override
    public String execute(HttpServletRequest request) {
        logger.traceEntry();

        HttpSession session = request.getSession();
        String locale = request.getParameter(LOCALE);

        switch (locale) {
            case RU:
                session.setAttribute(LOCALE, new Locale(RU, KZ));
                break;
            case EN:
                session.setAttribute(LOCALE, new Locale(EN, US));
                break;
        }

        logger.traceExit();
        return INDEX_JSP;
    }
}

