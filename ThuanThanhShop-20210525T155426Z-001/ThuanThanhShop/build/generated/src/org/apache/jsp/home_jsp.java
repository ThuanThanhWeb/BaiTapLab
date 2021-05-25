package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <title>Thuận Thành Shop</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/base.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/main.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/grid.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/responsive.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/fontawesome-free-5.14.0/css/all.min.css\" />\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- Block Element Modifier -->\n");
      out.write("        <div class=\"app\">\n");
      out.write("            <header class=\"header\">\n");
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Search.jsp", out, false);
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Sort bar on mobile -->\n");
      out.write("                    <ul class=\"header__sort-bar\">\n");
      out.write("                        <li class=\"header__sort-item\">\n");
      out.write("                            <a href=\"\" class=\"header__sort-link\">Liên quan</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"header__sort-item header__sort-item--active\">\n");
      out.write("                            <a href=\"\" class=\"header__sort-link\">Mới nhất</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"header__sort-item\">\n");
      out.write("                            <a href=\"\" class=\"header__sort-link\">Bán chạy</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"header__sort-item\">\n");
      out.write("                            <a href=\"\" class=\"header__sort-link\">Giá</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </header>\n");
      out.write("\n");
      out.write("                <div class=\"app__container\">\n");
      out.write("                    <div class=\"grid wide\">\n");
      out.write("                        <div class=\"row sm-gutter app__content\">\n");
      out.write("                            <div class=\"col l-2 m-0 c-0\">\n");
      out.write("                                <div class=\"category-pc\">\n");
      out.write("                                    <nav class=\"category\">\n");
      out.write("                                        <div class=\"category__heading-wrapper\">\n");
      out.write("                                            <i class=\"category__heading-icon fas fa-th-large\"></i>\n");
      out.write("                                            <div class=\"category__heading\">Danh Mục</div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <!-- Content category items -->\n");
      out.write("                                        <ul class=\"category-list\">\n");
      out.write("\n");
      out.write("                                        </ul>\n");
      out.write("                                    </nav>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"col l-10 m-12 c-12\">\n");
      out.write("                                <div class=\"home-filter hide-on-mobile-tablet\">\n");
      out.write("                                    <span class=\"home-filter__label\">Sắp xếp theo</span>\n");
      out.write("                                    <button class=\"home-filter__btn btn\">Phổ biến</button>\n");
      out.write("                                    <button class=\"home-filter__btn btn btn--primary\">Mới nhất</button>\n");
      out.write("                                    <button class=\"home-filter__btn btn\">Bán chạy</button>\n");
      out.write("\n");
      out.write("                                    <div class=\"select-input\">\n");
      out.write("                                        <span class=\"select-input__label\">Giá</span>\n");
      out.write("                                        <i class=\"select-input__icon fas fa-angle-down\"></i>\n");
      out.write("\n");
      out.write("                                        <!-- List option -->\n");
      out.write("                                        <ul class=\"select-input__list\">\n");
      out.write("                                            <li class=\"select-input__item\">\n");
      out.write("                                                Giá: Thấp đến cao\n");
      out.write("                                            </li>\n");
      out.write("                                            <li class=\"select-input__item\">\n");
      out.write("                                                Giá: Cao đến thấp\n");
      out.write("                                            </li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"home-product\">\n");
      out.write("                                    <div class=\"row sm-gutter\">\n");
      out.write("                                        <!-- Product item -->\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"./Javascript/shop_libraries.js\"></script>\n");
      out.write("    <script src=\"./Javascript/home.js\"></script>\n");
      out.write("    <script src=\"./Javascript/general-bugs.js\"></script>  \n");
      out.write("\n");
      out.write("\n");
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
