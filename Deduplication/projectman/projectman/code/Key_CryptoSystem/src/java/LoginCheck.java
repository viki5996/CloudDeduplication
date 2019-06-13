/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author selvarani
 */
@WebServlet(urlPatterns = {"/LoginCheck"})
public class LoginCheck extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        try {
             String Un=request.getParameter("Un");
            String Pwd=request.getParameter("Pwd");
            if(Un.compareToIgnoreCase("admin")==0 && Pwd.compareToIgnoreCase("admin")==0)
            {   
               session.setAttribute("un",Un);
                 response.sendRedirect("AdminHome.jsp");  
            }
            else
            {
            DB Db=new DB();
           ResultSet rs= Db.Select("select * from reg where Un='"+Un+"' and Pwd='"+Pwd+"'");
           if(rs.next())
           {
              session.setAttribute("un", Un);
               session.setAttribute("Sn", rs.getString("S_Name"));
              if(rs.getString("Scheme").compareToIgnoreCase("Individual")==0)
              response.sendRedirect("Userhome.jsp");
              else
              {
                 
                 response.sendRedirect("GroupUserhome.jsp");  
              }
           }
           else
           {  
           session.setAttribute("msg", "Invalid Username or Password !!!");
          response.sendRedirect("Alert.jsp");
           }
           rs.close();
            }
        } catch(Exception e){            
           e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
