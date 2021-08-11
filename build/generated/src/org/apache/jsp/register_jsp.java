package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <!-- Boostrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"shorcut icon\" href=\"assets/images/logomercedes.svg\"/>\n");
      out.write("        <title>Anh Truong Mercedes-Benz Auto</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"formm\">\n");
      out.write("            <form action=\"register\" method=\"post\">\n");
      out.write("                <label>Hello Guest , Registnation</label>\n");
      out.write("\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                    <label for=\"example-text-input\" class=\"col-2 col-form-label\">Account</label>\n");
      out.write("                    <div class=\"col-10\">\n");
      out.write("                        <input class=\"form-control\" type=\"text\" name=\"acc\" id=\"example-text-input\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                    <label for=\"example-text-input\" class=\"col-2 col-form-label\">Name</label>\n");
      out.write("                    <div class=\"col-10\">\n");
      out.write("                        <input class=\"form-control\" type=\"text\" name=\"name\" id=\"example-text-input\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                    <label for=\"example-password-input\" class=\"col-2 col-form-label\">Password</label>\n");
      out.write("                    <div class=\"col-10\">\n");
      out.write("                        <input class=\"form-control\" type=\"password\" name=\"pass\" id=\"example-password-input\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                    <label for=\"example-email-input\" class=\"col-2 col-form-label\">Email</label>\n");
      out.write("                    <div class=\"col-10\">\n");
      out.write("                        <input class=\"form-control\" type=\"email\" name=\"email\" id=\"example-email-input\"  pattern=\"^([^\\x00-\\x20\\x22\\x28\\x29\\x2c\\x2e\\x3a-\\x3c\\x3e\\x40\\x5b-\\x5d\\x7f-\\xff]+|\\x22([^\\x0d\\x22\\x5c\\x80-\\xff]|\\x5c[\\x00-\\x7f])*\\x22)(\\x2e([^\\x00-\\x20\\x22\\x28\\x29\\x2c\\x2e\\x3a-\\x3c\\x3e\\x40\\x5b-\\x5d\\x7f-\\xff]+|\\x22([^\\x0d\\x22\\x5c\\x80-\\xff]|\\x5c[\\x00-\\x7f])*\\x22))*\\x40([^\\x00-\\x20\\x22\\x28\\x29\\x2c\\x2e\\x3a-\\x3c\\x3e\\x40\\x5b-\\x5d\\x7f-\\xff]+|\\x5b([^\\x0d\\x5b-\\x5d\\x80-\\xff]|\\x5c[\\x00-\\x7f])*\\x5d)(\\x2e([^\\x00-\\x20\\x22\\x28\\x29\\x2c\\x2e\\x3a-\\x3c\\x3e\\x40\\x5b-\\x5d\\x7f-\\xff]+|\\x5b([^\\x0d\\x5b-\\x5d\\x80-\\xff]|\\x5c[\\x00-\\x7f])*\\x5d))*$\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <label>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mesright!=null?mesright:\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</label>\n");
      out.write("                <label>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${meswrong!=null?meswrong:\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</label>\n");
      out.write("                <button style=\"background-color: white;color: #282828\" type=\"submit\" class=\"btn btn-primary\">Đăng kí</button>\n");
      out.write("                <button style=\"background-color: white;color: #282828\" class=\"btn btn-primary\">\n");
      out.write("                    <a style=\"text-decoration: none;color: #000000\" href=\"login.jsp\"/>\n");
      out.write("                    Trở lại đăng nhập</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <style>\n");
      out.write("            * {\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                margin: 0;padding: 0;\n");
      out.write("                  font-family: 'Literata', serif;\n");
      out.write("            }\n");
      out.write("            .formm {\n");
      out.write("                min-height: 100vh;\n");
      out.write("                display: flex;\n");
      out.write("                margin: 0;\n");
      out.write("                background: #000000;  /* fallback for old browsers */\n");
      out.write("                background: -webkit-linear-gradient(to top, #434343, #000000);  /* Chrome 10-25, Safari 5.1-6 */\n");
      out.write("                background: linear-gradient(to top, #434343, #000000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n");
      out.write("            }\n");
      out.write("            .form-group label{\n");
      out.write("                   color: white;\n");
      out.write("                display: block;\n");
      out.write("                margin-right: 2px;\n");
      out.write("            }\n");
      out.write("            .form-group col-10{\n");
      out.write("                margin-left: 10px;\n");
      out.write("            }\n");
      out.write("            .btn-primary{\n");
      out.write("                margin-left: 27px;\n");
      out.write("            }\n");
      out.write("            label{\n");
      out.write("                   color: white;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            form{\n");
      out.write("                display: table;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                margin-top: 200px;\n");
      out.write("                border-radius:10px;\n");
      out.write("                background-color: #282828;\n");
      out.write("                padding: 50px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
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
