/*
 *   CSCI398 - Assignment - 4 "EJB"
 *   Project: EnterpriseCars-war (ImageViewServlet.java)
 *   Student Name: Choong Teik Tan
 *   Student Number: 3577028
 *   Student Email: ctt999@uowmail.edu.au
 *   Web: www.choongteik-tan.info
 */

package web;

import EnterpriseCarsBeans.EnterpriseCarsLocal;
import java.io.IOException;
import java.io.OutputStream;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// this class is stright forward provided by lecturer,
// it will read database blob stored picture and display it in jpg format.
public class ImageViewServlet extends HttpServlet {
    @EJB
    private EnterpriseCarsLocal enterpriseCars;

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String imageid = request.getParameter("ident");     // get parameter identification number.
        Integer idval = 0;

        try {
            idval = Integer.parseInt(imageid);
        } catch (NumberFormatException nfe) {
            return;
        }

        byte[] data = null;

        data = enterpriseCars.getPicture(idval);

        response.setContentType("image/jpg");

        OutputStream out = response.getOutputStream();
        out.write(data);
        out.close();

    }
}
