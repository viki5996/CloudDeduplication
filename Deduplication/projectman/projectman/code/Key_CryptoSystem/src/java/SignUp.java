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
import javax.swing.JOptionPane;

/**
 *
 * @author selvarani
 */
@WebServlet(urlPatterns = {"/SignUp"})
public class SignUp extends HttpServlet {

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
            String Name=request.getParameter("Name");
            String Un=request.getParameter("Un");
            String Pwd=request.getParameter("Pwd");
            String Email=request.getParameter("Email");
             String Cn=request.getParameter("Cn");
            String Scheme=request.getParameter("Scheme");
            String S_Name=request.getParameter("S_Name");
               String G_Name=request.getParameter("G_Name");
                  String Key=request.getParameter("key");
                   DB Db=new DB();boolean st=false;boolean st1=false;
                   ResultSet rs=Db.Select("Select * from reg where Un='"+Un+"'");
         if(rs.next())
         {
            session.setAttribute("msg", "This Username is Already Exist !!!");
              session.setAttribute("color", "red"); 
          response.sendRedirect("User.jsp#!/page_MORE");  
         }
         else
         {
             st1=true;
         }
         if(st1==true)
         {
            if(S_Name==null)
            {
                S_Name="Not";
                 st=true;   
            }
            else if(S_Name.compareToIgnoreCase("Create")==0 && S_Name!=null)
            {
                S_Name=G_Name;
                 st=true;   
            }
            else if(S_Name.compareToIgnoreCase("Create")!=0 && S_Name!=null)
            {
                System.out.println("hi:Select * from reg where S_Name='"+S_Name+"' and Security='"+Key+"'");
                rs=Db.Select("Select * from reg where S_Name='"+S_Name+"'");
                  if(rs.next())
                  {
                      if(rs.getString("Security").compareTo(Key)!=0)
                      {
                           System.out.println("hello");
                      session.setAttribute("msg", "Sorry,Incorrect Security Key !!");
              session.setAttribute("color", "red"); 
          response.sendRedirect("User.jsp#!/page_MORE"); 
                      }
                  else
                   st=true;  
                   }
            rs.close();
            }  
            
        if(st==true)
        {
         
         int i=Db.Insert("insert into reg values('"+Name+"','"+Un+"','"+Pwd+"','"+Email+"','"+Scheme+"','"+S_Name+"','"+Cn+"','"+Key+"')");
         if(i>0)
         {
           session.setAttribute("msg", "Congratulations,Your AcCount has been Activated.You can Enjoy Our cloud service as '"+Scheme+"'");
              
          response.sendRedirect("Alert.jsp");
         }
         else
         {
           session.setAttribute("msg", "Registration Failed !!!");
              session.setAttribute("color", "red"); 
          response.sendRedirect("User.jsp#!/page_MORE"); 
         }
         }
         rs.close();
        }
        } catch(Exception e) {            
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
