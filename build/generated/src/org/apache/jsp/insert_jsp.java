package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insert_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charse\n");
      out.write("              t=UTF-8\"/>\n");
      out.write("        <!-- Boostrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/bootstrap.min.css\"/>\n");
      out.write("        <!-- Font awesom CSS -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/all.min.css\"/>\n");
      out.write("        <!-- Header CSS -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/style.css\"/>\n");
      out.write("        <script src=\"js/pagger.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link rel=\"shorcut icon\" href=\"assets/images/logomercedes.svg\"/>\n");
      out.write("        <title>Mercedes-Benz by SomeOne</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light fixed-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <a href=\"#\"><img src=\"assets/images/logomercedes.svg\"></a>\n");
      out.write("                    <a class=\"navbar-brand logo\" href=\"products\">\n");
      out.write("                        Mercedes-Benz<br>by SomeOne</a>\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarTogglerDemo02\" aria-controls=\"navbarTogglerDemo02\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarTogglerDemo02\">\n");
      out.write("                        <ul class=\"navbar-nav ml-auto mt-2 mt-lg-0\">\n");
      out.write("                            <li class=\"nav-item \">\n");
      out.write("                                <a class=\"nav-link\" href=\"products\">Trang Chủ</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item \">\n");
      out.write("                                <a class=\"nav-link\" href=\"products#portfolio\">Sản Phẩm</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item \">\n");
      out.write("                                <a class=\"nav-link\" href=\"products\">Liên lạc</a>\n");
      out.write("                            </li>\n");
      out.write("                            <!--Taikhoan-->\n");
      out.write("                            <li class=\"nav-item \">\n");
      out.write("                                <a class=\"nav-link\" href=\"logout\">Đăng xuất</a>\n");
      out.write("                            </li>\n");
      out.write("                            <a style=\"color: #202326;background-color: white;text-align: center;border-radius: 15px\n");
      out.write("                               \" class=\"nav-link\" >Chào admin</a>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div> <!-- het container -->\n");
      out.write("            </nav> <!-- hết nav -->\n");
      out.write("        </header>\n");
      out.write("        <div class=\"container\" style=\"background: white;display: flex;height: 1200px\">\n");
      out.write("            <form style=\"margin-top: 150px\" action=\"insert\" method=\"post\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Name</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"name\">\n");
      out.write("                </div>\n");
      out.write("                   <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Image</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"images\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Brand Id</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"brandid\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Type Id</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"typeid\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Description</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"description\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Status Id</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"statusid\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Quanlity</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"quanlity\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Price</label>\n");
      out.write("                    <input  class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" name=\"price\">\n");
      out.write("                </div>\n");
      out.write("                 <input type=\"submit\" value=\"Save\"/>\n");
      out.write("            </form> \n");
      out.write("         \n");
      out.write("        </div>   \n");
      out.write("                        \n");
      out.write("        <section class=\"footer\"  >\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row-2\" >\n");
      out.write("                    <div class=\"title\">\n");
      out.write("                        <a href=\"#\" style=\"color: #999999;font-size: 30px;\n");
      out.write("                           padding: 10px 50px;text-decoration: none;display: block;text-align: center\" />\n");
      out.write("                        Mercedes-Benz by SomeOne \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
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
