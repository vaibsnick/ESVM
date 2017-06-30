/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.cdac;

import in.cdac.DB.SimpleJDBC;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author cdac
 */
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            /*---- Using ServletContext ----*/
            ServletContext myContext = getServletContext();
            out.println(myContext.getInitParameter("ProjectName"));

            String status = null;
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            SimpleJDBC myJDBC = new SimpleJDBC();
            status = myJDBC.validateUser(email, password);

            if (status.equals("valid")) {
                //out.println("<h1>Successfully Logged in<h1>");
                //out.println("<h4>Welcome "+email+"</h4>");

                /*----Using Cookies ----
                Cookie ck = new Cookie("email", email);
                response.addCookie(ck);
                 */
 /* ---- Using Hidden Params       
        out.println("<form action='./Welcome' method='Post'>");
        out.println("<input type='Submit' value='Continue'/>");
        out.println("<input type='hidden' name='email' value='" + email + "'/>");
        out.println("</form>");
                 */
 /* --- Using URL Rewriting --
        out.println("<a href='./Welcome?email="+email+"'>Continue </a>");
                 */
 
                HttpSession session = request.getSession(true);
                session.setAttribute("email", email);
 
 
 /*----- Using Request Dispatcher & Forward */
                RequestDispatcher dispatcher = request.getRequestDispatcher("/Welcome");
                dispatcher.forward(request, response);
                 
            } else {
                // out.println("Invalid USer....Try Again");
                response.sendRedirect("html/InvalidUser.html");
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
