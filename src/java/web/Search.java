/*
 *   CSCI398 - Assignment - 4 "EJB"
 *   Project: EnterpriseCars-war (Search.java)
 *   Student Name: Choong Teik Tan
 *   Student Number: 3577028
 *   Student Email: ctt999@uowmail.edu.au
 *   Web: www.choongteik-tan.info
 */

package web;

import Cars.Cars;
import EnterpriseCarsBeans.EnterpriseCarsLocal;
import java.io.IOException;
import java.util.List;
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
public class Search extends HttpServlet {
    @EJB
    private EnterpriseCarsLocal enterpriseCars;
    
    private static final String jspFailPage = "Errors.jsp";
    private static final String jspReporter = "SearchResults.jsp";
    private static final String jspNoMatches = "NoMatches.jsp";

    private void doErrorReport(String error, HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.setAttribute("errMsg", error);
        RequestDispatcher dispatch = request.getRequestDispatcher(jspFailPage);
        dispatch.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String CONSTRAINTS[] = new String[5];
        CONSTRAINTS[0] = request.getParameter("make");
        CONSTRAINTS[1] = request.getParameter("model");
        CONSTRAINTS[2] = request.getParameter("year");
        CONSTRAINTS[3] = request.getParameter("body");
        CONSTRAINTS[4] = request.getParameter("price");
        
        if(CONSTRAINTS[0].length()<1 
                || CONSTRAINTS[1].length()<1
                || CONSTRAINTS[2].length()<1
                || CONSTRAINTS[3].length()<1
                || CONSTRAINTS[4].length()<1) {
            doErrorReport("Search field must not be empty! (All field must be filled in)", request, response);
            return;
        }
        
        List<Cars> car = null;
        try { car = enterpriseCars.findCars(CONSTRAINTS); }
        catch (Exception re) { doErrorReport("Database Connection Error", request, response); }
        //doErrorReport("Database Connection Error??", request, response);
        if(car == null || car.isEmpty()) {
            RequestDispatcher dispatch = request.getRequestDispatcher(jspNoMatches);
            dispatch.forward(request, response);
        }
        
        request.setAttribute("searchResult", car);
        RequestDispatcher dispatch = request.getRequestDispatcher(jspReporter);
        dispatch.forward(request, response);
    }
}
