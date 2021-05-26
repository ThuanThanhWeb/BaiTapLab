package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class product_005fcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Giỏ hàng Thuận Thành Shop</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/base.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/main.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/responsive.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/product-info.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/product_cart.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"fonts/fontawesome-free-5.14.0/css/all.min.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/responsive.css\" />\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/grid.css\" />\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"app\">\n");
      out.write("        <!-- Cart navbar -->\n");
      out.write("        <div class=\"cart-navbar-container\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <!-- Cart main content -->\n");
      out.write("        <div class=\"grid wide\" style=\"padding-bottom: 25px;\">\n");
      out.write("            <div class=\"cart-suggestion\">\n");
      out.write("                <i class=\"fas fa-truck-loading\"></i>\n");
      out.write("                <span>Nhấn vào mục Mã giảm giá ở cuối trang để hưởng miễn phí vận chuyển bạn nhé!</span>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Cart product header -->\n");
      out.write("            <div class=\"cart-page-product-header hide-on-mobile-tablet\">\n");
      out.write("                <span class=\"cart-page-product-header__product\">\n");
      out.write("                    <i class=\"fas fa-cart-arrow-down\"></i>\n");
      out.write("                    Sản Phẩm\n");
      out.write("                </span>\n");
      out.write("                <span class=\"cart-page-product-header__unit-price\">Phân loại</span>\n");
      out.write("                <span class=\"cart-page-product-header__unit-price\">Đơn Giá</span>\n");
      out.write("                <span class=\"cart-page-product-header__qnt\">Số Lượng</span>\n");
      out.write("                <span class=\"cart-page-product-header__total-price\">Số Tiền</span>\n");
      out.write("                <span class=\"cart-page-product-header__action\">Thao Tác</span>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Cart shop content-->\n");
      out.write("            <div class=\"cart-page-shop-container\">\n");
      out.write("\n");
      out.write("                <div class=\"cart-page-shop__container-items\">\n");
      out.write("                    <div class=\"cart-bundle\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"cart-item-container\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"cart-item-container-mobile\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"cart-voucher hide-on-mobile\">\n");
      out.write("                    <i class=\"cart-voucher__icon fas fa-archive\"></i>\n");
      out.write("                    <div class=\"cart-voucher__message\">Lưu voucher giảm ₫8k</div>\n");
      out.write("                    <button class=\"cart-voucher__btn-save\">Lưu</button>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"cart-shipping\">\n");
      out.write("                    <i class=\"cart-shipping__icon fas fa-shipping-fast\"></i>\n");
      out.write("                    <div class=\"cart-shipping__message\">Miễn Phí Vận Chuyển cho đơn hàng từ ₫50.000 (giảm tối đa ₫20.000); Miễn Phí Vận Chuyển cho đơn hàng từ ₫300.000 (giảm tối đa ₫70.000)</div>\n");
      out.write("                    <div class=\"cart-shipping__learn-more hide-on-mobile-tablet\">Tìm hiểu thêm</div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Cart page footer -->\n");
      out.write("            <div class=\"cart-page-footer\">\n");
      out.write("                <div class=\"cart-page-footer__row1\">\n");
      out.write("                    <div class=\"cart-page-footer__voucher\">\n");
      out.write("                        <i class=\"cart-page-footer__voucher-icon fas fa-box-tissue\"></i>\n");
      out.write("                        <div class=\"cart-page-footer__voucher-name\">Shop Voucher</div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cart-page-footer__option\">Chọn hoặc nhập mã</div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"cart-page-footer__row2\">\n");
      out.write("                    <div class=\"cart-page-footer__checkbox hide-on-mobile\">\n");
      out.write("                        <div class=\"shop-checkbox shop-checkbox--disabled\">\n");
      out.write("                            <input class=\"shop-checkbox__input\" type=\"checkbox\">\n");
      out.write("                            <div class=\"shop-checkbox__bgc\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"cart-page-footer__title disabled\">\n");
      out.write("                        <i class=\"cart-page-footer__title-icon-label blur-item fas fa-donate\"></i>\n");
      out.write("                        <div class=\"cart-page-footer__title-name blur-item hide-on-mobile\">Minecraft Xu</div>\n");
      out.write("                        <div class=\"cart-page-footer__title-message\">Bạn chưa có Minecraft Xu</div>\n");
      out.write("                        <i class=\"cart-page-footer__title-icon-question far fa-question-circle\"></i>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cart-page-footer__value hide-on-mobile\">-₫0</div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                \n");
      out.write("                <div class=\"cart-page-footer__row3\">\n");
      out.write("                    <div class=\"cart-page-footer__actions\">\n");
      out.write("                        <div id=\"shop-checkbox-all\" class=\"shop-checkbox\">\n");
      out.write("                            <input class=\"shop-checkbox__input\" type=\"checkbox\">\n");
      out.write("                            <div class=\"shop-checkbox__bgc\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <button class=\"cart-page-footer__actions-btn cart-page-footer__select-all clear-btn\">Tất cả\n");
      out.write("                            <span class=\"hide-on-mobile-tablet\">\n");
      out.write("                                (<span class=\"qnt\">0</span>)\n");
      out.write("                            </span>\n");
      out.write("                        </button>\n");
      out.write("                        <button class=\"cart-page-footer__actions-btn cart-page-footer__remove clear-btn hide-on-mobile-tablet\">Xóa</button>\n");
      out.write("                        <button class=\"cart-page-footer__actions-btn cart-page-footer__save clear-btn hide-on-mobile-tablet\">Lưu vào mục Đã thích</button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"cart-page-footer__summary\">\n");
      out.write("                        <div class=\"cart-page-footer__summary-total\">\n");
      out.write("                            <div class=\"cart-page-footer__summary-total-text\">Tổng tiền\n");
      out.write("                                <span class=\"hide-on-mobile-tablet\">(<span class=\"qnt\">0</span> sản phẩm):</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"cart-page-footer__summary-total-amount\">₫0</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"cart-page-footer__summary-bonus\">Nhận 0 Xu</div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <button class=\"cart-page-footer__checkout clear-btn\">Mua hàng</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Confirm deletion -->\n");
      out.write("            <div class=\"confirm-deletion-container\">\n");
      out.write("                <div class=\"confirm-deletion-overlay\"></div>\n");
      out.write("                <div class=\"confirm-deletion\">\n");
      out.write("                    <div class=\"confirm-deletion__message\">\n");
      out.write("                        Bạn có muốn xóa <span class=\"qnt\">0</span> sản phẩm?\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"confirm-deletion__btn-wrapper\">\n");
      out.write("                        <button class=\"confirm-deletion__btn confirm-deletion__btn--back clear-btn\">Trở lại</button>\n");
      out.write("                        <button class=\"confirm-deletion__btn confirm-deletion__btn--agree clear-btn\">Có</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Empty cart -->\n");
      out.write("            <div class=\"empty-cart\">\n");
      out.write("                <div class=\"empty-cart__img\"></div>\n");
      out.write("                <div class=\"empty-cart__msg\">Giỏ hàng của bạn còn trống</div>\n");
      out.write("                <a href=\"home.jsp\" class=\"empty-cart__link\">\n");
      out.write("                    <button class=\"empty-cart__link-btn clear-btn\">MUA NGAY</button>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Toast message -->\n");
      out.write("        <div class=\"toast-msg-container\">\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("<script src=\"./Javascript/shop_libraries.js\"></script>\n");
      out.write("<script src=\"./Javascript/general-bugs.js\"></script>\n");
      out.write("<script src=\"./Javascript/cart-info.js\" async></script>\n");
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
