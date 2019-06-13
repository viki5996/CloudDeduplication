/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang.RandomStringUtils;


/**
 *
 * @author sluser
 */
@WebServlet(name = "Mail2", urlPatterns = {"/Mail2"})
public class Mail2 extends HttpServlet {
  String decrypted="";
  String encrypted="";
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
     public String userName;
     public synchronized  boolean sendMail(String userName, String passWord, String host, String port, String starttls, String auth, boolean debug, String socketFactoryClass, String fallback, String[] to, String[] cc, String[] bcc, String subject, String text)
    {
        this.userName=userName;
 

        Properties props = new Properties();

        //Properties props=System.getProperties();

        props.put("mail.smtp.user", userName);

        props.put("mail.smtp.host", host);

        if (!"".equals(port)) {
            props.put("mail.smtp.port", port);
        }

        if (!"".equals(starttls)) {
            props.put("mail.smtp.starttls.enable", starttls);
        }

        props.put("mail.smtp.auth", auth);

        if (debug) {

            props.put("mail.smtp.debug", "true");

        } else {
            props.put("mail.smtp.debug", "false");

        }

        if (!"".equals(port)) {
            props.put("mail.smtp.socketFactory.port", port);
        }

        if (!"".equals(socketFactoryClass)) {
            props.put("mail.smtp.socketFactory.class", socketFactoryClass);
        }

        if (!"".equals(fallback)) {
            props.put("mail.smtp.socketFactory.fallback", fallback);
        }



        try {

            Session session = Session.getDefaultInstance(props, null);

            session.setDebug(debug);

            MimeMessage msg = new MimeMessage(session);

            msg.setText(text);

            msg.setSubject(subject);

            msg.setFrom(new InternetAddress(userName));

            for (int i = 0; i < to.length; i++) {

                msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to[i]));

            }

            for (int i = 0; i < cc.length; i++) {

                msg.addRecipient(Message.RecipientType.CC, new InternetAddress(cc[i]));

            }

            for (int i = 0; i < bcc.length; i++) {

                msg.addRecipient(Message.RecipientType.BCC, new InternetAddress(bcc[i]));

            }

            msg.saveChanges();

            Transport transport = session.getTransport("smtp");

            transport.connect(host, userName, passWord);

            transport.sendMessage(msg, msg.getAllRecipients());

            transport.close();

            return true;

        } catch (Exception mex) {


            mex.printStackTrace();

            return false;

        }
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
        String sn=(String)session.getAttribute("Sn");
        String fn=request.getParameter("fn1");
         String fid=request.getParameter("fid1");
        System.out.println(sn);
        String usrid="mvinomsc@gmail.com";
		String passwd="1991vinoth";
             
             

        try {
           
String otp=RandomStringUtils.randomAlphanumeric(4);
System.out.println(otp);
 try {

                     // Create encrypter/decrypter class
                     System.out.println("Inside Helper");
                     Helper encrypter = new Helper("");

                     // Pass the word to be Encrypted to Encrypt()
                    
                  encrypted = encrypter.encrypt(otp);
                     out.println("encrypted String:" + encrypted);

                     // Pass the encrypted word to be Decrypted to Decrypt()
                     decrypted = encrypter.decrypt(encrypted);
                     out.println("decrypted String:" + decrypted);
              } catch (Exception e) {
              }

 DB Db=new DB();
 int i=0,j=0;
 String nf="no";
 if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0)
 {
 ResultSet rs=Db.Select("select count(b.Email) as count1 from reg b ,file_share a where a.User=b.Un and a.fid='"+fid+"' and a.Status1='"+nf+"'");
 System.out.println("select count(b.Email) as count1 from reg b ,file_share a where a.User=b.Un and a.fid='"+fid+" and a.Status1='"+nf+"'");
while(rs.next())
{
     i=rs.getInt(1);
}
rs.close();
String[] t = new String[i];int k=0;

 rs=Db.Select("select b.Email,b.Un from reg b ,file_share a where a.User=b.Un and a.fid='"+fid+"' and a.Status1='"+nf+"'");
 System.out.println("select b.Email,b.Un from reg b ,file_share a where a.User=b.Un and a.fid='"+fid+"' and a.Status1='"+nf+"'");
while(rs.next())
{
     t[k]=rs.getString("Email");
     System.out.println("**"+t[k]);
     k++;
     String un1=rs.getString("Un");
     String d1="yes";
      j=Db.Insert("Update file_share set Status1='"+d1+"' where User='"+un1+"' and Fid='"+fid+"'");
}
rs.close();
 String[] cc = {usrid};
        String[] bcc = {usrid};
         
    ResultSet rf=Db.Select("SELECT * FROM upload where Fid='"+fid+"'");
    if(rf.next())
    {
        otp=rf.getString("Keyvalue");
    }
                 String text="Your Key for the File '"+fn+"' is: "+otp;
               
             sendMail(usrid, passwd, "smtp.gmail.com", "465", "true", "true", true, "javax.net.ssl.SSLSocketFactory", "false", t, cc, bcc, "mail", text);
 }
 

        

//response.sendRedirect("OtpAuthentication.jsp");

if(j>0){
      response.sendRedirect("Upload.jsp#!/page_SERVICES");

}

  
       
    }
        catch(Exception e)
        {
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
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
