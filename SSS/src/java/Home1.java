/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 *
 * @author Vaibs
 */
public class Home1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
           String Id1=request.getParameter("Id");
           String name=request.getParameter("Name");
           String batch=request.getParameter("Batch");
           String dob=request.getParameter("Dob");
           String email=request.getParameter("Email");
           String mobile=request.getParameter("Mobile");
           out.print(Id1);
           Session s=new AnnotationConfiguration().configure().buildSessionFactory().openSession();
            Transaction t=s.beginTransaction();
           
           File ProfilePath = new File(request.getParameter("Profile"));
            byte[] pFile = new byte[(int) ProfilePath.length()];
            File CertificatePath = new File(request.getParameter("Certificate"));
            byte[] cFile = new byte[(int) CertificatePath.length()];
            File MarksheetPath = new File(request.getParameter("Marksheet"));
            byte[] mFile = new byte[(int) MarksheetPath.length()];
            
            try{
                FileInputStream pf=new FileInputStream(ProfilePath);
                FileInputStream cf=new FileInputStream(CertificatePath);
               FileInputStream mf=new FileInputStream(MarksheetPath); 
                pf.read(pFile);
                cf.read(cFile);
                mf.read(mFile);
                pf.close();
                cf.close();
                mf.close();
            }catch(Exception ex)
            {
                ex.printStackTrace();
            }
            
            
            Pojo p=new Pojo();
            p.setId(1);
            p.setId1(Id1);
            p.setName(name);
            p.setBatch(batch);
            p.setDob(dob);
            p.setEmail(email);
            p.setMobile(mobile);
            p.setProfile(pFile);
            p.setCertificate(cFile);
            p.setMarks(mFile);
            
            s.save(p);
            t.commit();
            s.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
