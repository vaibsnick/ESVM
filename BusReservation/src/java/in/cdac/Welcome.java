/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.cdac;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
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
public class Welcome extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String eMail = null;
            /*
            Cookie ckies[] = request.getCookies();                     
            if(ckies != null){   
                String name = ckies[0].getName();   
                eMail = ckies[0].getValue();                             
            }         
            */
            /* 
            eMail = request.getParameter("email");
            */
            
            HttpSession session = request.getSession(false);
            eMail = (String) session.getAttribute("email");
            session.setAttribute("Id", 123);
            /*        
            out.println("<html>");
            out.println("<h1>Welcome...");
            out.print(eMail);
            out.println("</h1>");
            out.println("<div style='float:left'>");
            out.println("<a href='./Logout'>Logout</a>");
            out.println("</div>");
            out.println("</html>");
            
            */
            
        RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/welcome.jsp");      
        dispatcher.include(request, response);
        }
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
