/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.cdac;

import in.cdac.DB.SimpleJDBC;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cdac
 */
public class Register extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        /*---- ServletConfig --- */
        ServletConfig myconfig = getServletConfig();
        
        /*---- ServletContext --- */
        ServletContext myContext = getServletContext();
        out.println(myContext.getInitParameter("ProjectName")); 
        out.println("<br>");            
        String drivername = myconfig.getInitParameter("MysqlDriver");
        /*---------------------------*/
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String name = request.getParameter("username");
        String mobile = request.getParameter("mobile");
        int age = Integer.parseInt(request.getParameter("age"));
        String address = request.getParameter("address");       
        int rowsInserted = 0;

        SimpleJDBC myJDBC = new SimpleJDBC();
        rowsInserted = myJDBC.insertData(email, name, password, mobile, age, address);
        if (rowsInserted == 1) {
            out.println("Data Inserted Successfully....");
        } else {
            out.println("Insertion failure....Please check the server.");
        }

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
