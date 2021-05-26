package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <title>Đăng nhập</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/base.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/mai.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/grid.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/responsive.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fonts/fontawesome-free-5.14.0/css/all.min.css\" />\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!--Modal layout-->\n");
      out.write("    <div class=\"app\">\n");
      out.write("        <div class=\"modal\">\n");
      out.write("            <div class=\"modal__overlay\"></div>\n");
      out.write("\n");
      out.write("            <div class=\"modal__body\">\n");
      out.write("                <!-- Register Form -->\n");
      out.write("\n");
      out.write("                <!-- Login Form -->\n");
      out.write("                <form id=\"login-form\" class=\"auth-form\" action=\"login\" method=\"POST\">\n");
      out.write("                    <div class=\"auth-form__container\">\n");
      out.write("                        <div class=\"auth-form__header\">\n");
      out.write("                            <div class=\"auth-form__heading\">Đăng nhập</div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"auth-form__groups\">\n");
      out.write("                            <div class=\"auth-form__group\">\n");
      out.write("                                <input id=\"email\" name=\"user\" rules=\"required|min:6\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"auth-form__input\" placeholder=\"Tài khoản của bạn\" />\n");
      out.write("                                <span class=\"form-message\" style=\"color: red;\"></span>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"auth-form__group\">\n");
      out.write("                                <input id=\"password\" name=\"password\" rules=\"required|min:6\" type=\"password\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pass}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"auth-form__input\" placeholder=\"Mật khẩu của bạn\" />\n");
      out.write("                                <span class=\"form-message\" style=\"color: red;\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <p style=\"color: red;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"auth-form__aside\">\n");
      out.write("                            <div class=\"auth-form__help\">\n");
      out.write("                                <a href=\"\" class=\"auth-form__help-link auth-form__help-forgot\">Quên mật khẩu</a>\n");
      out.write("                                <span class=\"auth-form__help-separate\"></span>\n");
      out.write("                                <a href=\"\" class=\"auth-form__help-link\">Cần trợ giúp?</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"auth-form__controls\">\n");
      out.write("                            <button class=\"btn auth-form__controls-back\"><a href=\"home.jsp\">TRỞ LẠI</a></button>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn--primary\">ĐĂNG NHẬP</button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"auth-form__switch-wrapper\">\n");
      out.write("                            <span class=\"auth-form__switch-text\">Bạn chưa có tài khoản?</span>\n");
      out.write("                            <a href=\"./register.jsp\" class=\"auth-form__switch-btn\">Đăng ký</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"auth-form__socials\">\n");
      out.write("                        <a href=\"\" class=\"auth-form__socials--facebook btn btn--size-s btn--with-icon\">\n");
      out.write("                            <i class=\"auth-form__socials-icon fab fa-facebook-square\"></i>\n");
      out.write("                            <span class=\"auth-form__socials-title\">\n");
      out.write("                            Kết nối với Facebook\n");
      out.write("                        </span>\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"\" class=\"auth-form__socials--google btn btn--size-s btn--with-icon\">\n");
      out.write("                            <i class=\"auth-form__socials-icon fab fa-google\"></i>\n");
      out.write("                            <span class=\"auth-form__socials-title\">\n");
      out.write("                            Kết nối với Google\n");
      out.write("                        </span>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("<script src=\"./Javascript/general-bugs.js\"></script>\n");
      out.write("<script src=\"./Javascript/validator.js\"></script>\n");
      out.write("<script>\n");
      out.write("    Validator('#login-form', {\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("\n");
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
