/*
 *   CSCI398 - Assignment - 4 "EJB"
 *   Project: EnterpriseCars-war (ShowDetails.java)
 *   Student Name: Choong Teik Tan
 *   Student Number: 3577028
 *   Student Email: ctt999@uowmail.edu.au
 *   Web: www.choongteik-tan.info
 */

package web;

import Cars.Cars;
import EnterpriseCarsBeans.EnterpriseCarsLocal;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ctt999
 */
public class ShowDetails extends HttpServlet {
    @EJB
    private EnterpriseCarsLocal enterpriseCars;
    private static final String jspFailPage = "Errors.jsp";
    private static final String jspReporter = "ShowDetailsReport.jsp";
    String carid = "";

    private void doErrorReport(String error, HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.setAttribute("errMsg", error);
        RequestDispatcher dispatch = request.getRequestDispatcher(jspFailPage);
        dispatch.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        carid = request.getParameter("ident");
        if(carid.length()<1) {
            doErrorReport("Error no identifier input!", request, response);
            return;
        }
        // Once check it is not empty ident passed convert string to int.
        Integer id = Integer.parseInt(carid);

        Cars s7t = null;
        s7t = enterpriseCars.getRecord(id);

        if(s7t != null) {
            request.setAttribute("carDetails", s7t);
            RequestDispatcher dispatch = request.getRequestDispatcher(jspReporter);
            dispatch.forward(request, response);
        }
        else {
            doErrorReport("Error cars had been just removed!", request, response);
        }

    }
}
