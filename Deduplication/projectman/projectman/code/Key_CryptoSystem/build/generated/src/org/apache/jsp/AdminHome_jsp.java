package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminHome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title> Key-Aggregate Cryptosystem</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<link rel=\"stylesheet\" href=\"styles.css\" type=\"text/css\" media=\"all\">\n");

             String un = (String)session.getAttribute("un");
           if (un == null) {
                session.invalidate(); 
                session=request.getSession(true);
    session.setAttribute("msg", "Sorry!!! Your SignIn Time Out.Please SignIn Again ");
     session.setAttribute("color", "red ");
response.sendRedirect("Alert.jsp");
                
            }
            String Servlet_Msg = (String) session.getAttribute("msg");
              String color = (String) session.getAttribute("color");

        
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"spinner\"></div>\n");
      out.write("\n");
      out.write("<div class=\"extra\">\n");
      out.write("<!-- do not delete or change--><div class=\"mycopy\">Website Design: <a href=\"http://www.myfreecsstemplates.com\" class=\"link33\">free web templates</a></div><!-- end -->\n");
      out.write("<div class=\"main1\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"main2\">\n");
      out.write("  \n");
      out.write("<div class=\"bg1\"></div>\n");
      out.write("\n");
      out.write("<div class=\"grad1\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("  <a href=\"\" class=\"logo\">    \n");
      out.write("    <div class=\"txt1\">Secure Data Sharing in Cloud Computing</div>\n");
      out.write("    <div class=\"txt2\">Secure Data Sharing in Cloud Computing</div>\n");
      out.write("    <div class=\"txt3\">Using Key-Aggregate Cryptosystem</div>\n");
      out.write("  </a>\n");
      out.write("    <a href=\"Logout.jsp\" style=\" margin-left: -18px; margin-top: -10px;\">\n");
      out.write("     \n");
      out.write("        <span class=\"over2\"><img src=\"images/logoutbutton-hi.png\" alt=\"\"  class=\"img\" style=\"height: 54px; width: 198px; \">\n");
      out.write("       </span>\n");
      out.write("      </a>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<nav class=\"menu\" style=\"margin-top: 180px; width: 1065px; margin-left: 235px;\">\n");
      out.write("  <ul id=\"menu\">\n");
      out.write("      <li class=\"nav\" style=\"margin-left: -223px;\">\n");
      out.write("          <a href=\"AdminHome.jsp\" >\n");
      out.write("        <span class=\"over1\"><span class=\"txt1\">Home</span></span>\n");
      out.write("        <span class=\"over2\"><img src=\"images/Home.png\" alt=\"\" class=\"img\" style=\"height: 161px; margin-left: -18px; width: 198px;\"></span>\n");
      out.write("      </a>\n");
      out.write("    </li>\n");
      out.write("    <li class=\"nav1\">\n");
      out.write("        <a href=\"Userdetails.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"over1\"><span class=\"txt1\">User Details</span></span>\n");
      out.write("        <span class=\"over2\"><img src=\"images/upload_icon.png\" alt=\"\" class=\"img\" style=\"height: 161px; margin-left: -18px; width: 198px;\"></span>\n");
      out.write("      </a>\n");
      out.write("    </li>\n");
      out.write("    <li class=\"nav2\">\n");
      out.write("      <a href=\"Uploaddetails.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"over1\"><span class=\"txt1\">Uploads</span></span>\n");
      out.write("        <span class=\"over2\"><img src=\"images/download_icon.png\" alt=\"\" class=\"img\" style=\"height: 161px; margin-left: -18px; width: 198px;\"></span>\n");
      out.write("      </a>\n");
      out.write("    </li>\n");
      out.write("    <li class=\"nav3 with_ul\">\n");
      out.write("      <a href=\"Downloaddetails.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"over1\"><span class=\"txt1\">Downloads</span></span>\n");
      out.write("        <span class=\"over2\"><img src=\"images/group-11.png\" alt=\"\" class=\"img\" style=\"height: 161px; margin-left: -18px; width: 198px;\"></span>\n");
      out.write("      </a>      \n");
      out.write("    </li>\n");
      out.write("    <li class=\"nav4\">\n");
      out.write("      <a href=\"costAnalysis.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"over1\"><span class=\"txt1\">Cost Analysis</span></span>\n");
      out.write("        <span class=\"over2\"><img src=\"images/history.png\" alt=\"\" class=\"img\" style=\"height: 161px; margin-left: -18px; width: 198px;\"></span>\n");
      out.write("      </a>\n");
      out.write("    </li>\n");
      out.write("     <li class=\"nav5\">\n");
      out.write("      <a href=\"Download_1_1.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"over1\"><span class=\"txt1\">REVOKE</span></span>\n");
      out.write("        <span class=\"over2\"><img src=\"images/icon1.png\" alt=\"\" class=\"img\" style=\"height: 161px; margin-left: -18px; width: 198px;\"></span>\n");
      out.write("      </a>\n");
      out.write("    </li>\n");
      out.write("   \n");
      out.write(" \n");
      out.write("  </ul>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--content -->\n");
      out.write("<article id=\"content\">\n");
      out.write("\n");
      out.write("  <ul>\n");
      out.write("          \n");
      out.write("   \n");
      out.write("    <li id=\"page_SERVICES\">\n");
      out.write("     \n");
      out.write("      \n");
      out.write(" \n");
      out.write("   \n");
      out.write("    \n");
      out.write("     \n");
      out.write("    \n");
      out.write("    \n");
      out.write("  \n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("  </ul>\n");
      out.write("</article>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<footer>\n");
      out.write("\n");
      out.write("<div class=\"copyright\">Copyright (c) 2014. All rights reserved.</div>\n");
      out.write("\n");
      out.write("<div class=\"tola\">\n");
      out.write("   </div>\n");
      out.write("<a href=\"#!/page_PRIVACY\" class=\"privacy\">Privacy policy</a>\n");
      out.write("\n");
      out.write("</footer>\n");
      out.write("</div>\n");
      out.write("<script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
