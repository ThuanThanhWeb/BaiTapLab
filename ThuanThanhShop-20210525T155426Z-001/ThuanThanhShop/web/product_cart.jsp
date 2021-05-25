<%-- 
    Document   : product_cart
    Created on : May 17, 2021, 9:45:58 AM
    Author     : Hoang Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thuận Thành Shop</title>
    <link rel="stylesheet" type="text/css" href="CSS/base.css" />
    <link rel="stylesheet" type="text/css" href="CSS/main.css" />
    <link rel="stylesheet" type="text/css" href="CSS/responsive.css" />
    <link rel="stylesheet" type="text/css" href="CSS/product-info.css" />
    <link rel="stylesheet" type="text/css" href="CSS/product_cart.css" />
    <link rel="stylesheet" href="fonts/fontawesome-free-5.14.0/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="CSS/responsive.css" />
    <link rel="stylesheet" type="text/css" href="CSS/grid.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
</head>

<body>
    <div class="app">
        <!-- Cart navbar -->
        <div class="cart-navbar-container">
            <jsp:include page="header.jsp"></jsp:include>
        </div>
        
        <!-- Cart main content -->
        <div class="grid wide" style="padding-bottom: 25px;">
            <div class="cart-suggestion">
                <i class="fas fa-truck-loading"></i>
                <span>Nhấn vào mục Mã giảm giá ở cuối trang để hưởng miễn phí vận chuyển bạn nhé!</span>
            </div>

            <!-- Cart product header -->
            <div class="cart-page-product-header hide-on-mobile-tablet">
                <span class="cart-page-product-header__product">
                    <i class="fas fa-cart-arrow-down"></i>
                    Sản Phẩm
                </span>
                <span class="cart-page-product-header__unit-price">Đơn Giá</span>
                <span class="cart-page-product-header__qnt">Số Lượng</span>
                <span class="cart-page-product-header__total-price">Số Tiền</span>
                <span class="cart-page-product-header__action">Thao Tác</span>
            </div>

            <!-- Cart shop content-->
            <div class="cart-page-shop-container">

                <div class="cart-page-shop__container-items">
                    <div class="cart-bundle">


                        <div class="cart-item-container">

                        </div>

                        <div class="cart-item-container-mobile">

                        </div>
                    </div>
                </div>

                <div class="cart-voucher hide-on-mobile">
                    <i class="cart-voucher__icon fas fa-archive"></i>
                    <div class="cart-voucher__message">Lưu voucher giảm ₫8k</div>
                    <button class="cart-voucher__btn-save">Lưu</button>
                </div>

                <div class="cart-shipping">
                    <i class="cart-shipping__icon fas fa-shipping-fast"></i>
                    <div class="cart-shipping__message">Miễn Phí Vận Chuyển cho đơn hàng từ ₫50.000 (giảm tối đa ₫20.000); Miễn Phí Vận Chuyển cho đơn hàng từ ₫300.000 (giảm tối đa ₫70.000)</div>
                    <div class="cart-shipping__learn-more hide-on-mobile-tablet">Tìm hiểu thêm</div>
                </div>
            </div>

            <!-- Cart page footer -->
            <div class="cart-page-footer">
                <div class="cart-page-footer__row1">
                    <div class="cart-page-footer__voucher">
                        <i class="cart-page-footer__voucher-icon fas fa-box-tissue"></i>
                        <div class="cart-page-footer__voucher-name">Shop Voucher</div>
                    </div>
                    <div class="cart-page-footer__option">Chọn hoặc nhập mã</div>
                </div>

                <div class="cart-page-footer__row2">
                    <div class="cart-page-footer__checkbox hide-on-mobile">
                        <div class="shop-checkbox shop-checkbox--disabled">
                            <input class="shop-checkbox__input" type="checkbox">
                            <div class="shop-checkbox__bgc"></div>
                        </div>
                    </div>

                    <div class="cart-page-footer__title disabled">
                        <i class="cart-page-footer__title-icon-label blur-item fas fa-donate"></i>
                        <div class="cart-page-footer__title-name blur-item hide-on-mobile">Minecraft Xu</div>
                        <div class="cart-page-footer__title-message">Bạn chưa có Minecraft Xu</div>
                        <i class="cart-page-footer__title-icon-question far fa-question-circle"></i>
                    </div>
                    <div class="cart-page-footer__value hide-on-mobile">-₫0</div>
                </div>

                
                <div class="cart-page-footer__row3">
                    <div class="cart-page-footer__actions">
                        <div id="shop-checkbox-all" class="shop-checkbox">
                            <input class="shop-checkbox__input" type="checkbox">
                            <div class="shop-checkbox__bgc"></div>
                        </div>
                        <button class="cart-page-footer__actions-btn cart-page-footer__select-all clear-btn">Tất cả
                            <span class="hide-on-mobile-tablet">
                                (<span class="qnt">0</span>)
                            </span>
                        </button>
                        <button class="cart-page-footer__actions-btn cart-page-footer__remove clear-btn hide-on-mobile-tablet">Xóa</button>
                        <button class="cart-page-footer__actions-btn cart-page-footer__save clear-btn hide-on-mobile-tablet">Lưu vào mục Đã thích</button>
                    </div>

                    <div class="cart-page-footer__summary">
                        <div class="cart-page-footer__summary-total">
                            <div class="cart-page-footer__summary-total-text">Tổng tiền
                                <span class="hide-on-mobile-tablet">(<span class="qnt">0</span> sản phẩm):</span>
                            </div>
                            <div class="cart-page-footer__summary-total-amount">₫0</div>
                        </div>
                        <div class="cart-page-footer__summary-bonus">Nhận 0 Xu</div>
                    </div>

                    <button class="cart-page-footer__checkout clear-btn">Mua hàng</button>
                </div>
            </div>

            <!-- Confirm deletion -->
            <div class="confirm-deletion-container">
                <div class="confirm-deletion-overlay"></div>
                <div class="confirm-deletion">
                    <div class="confirm-deletion__message">
                        Bạn có muốn xóa <span class="qnt">0</span> sản phẩm?
                    </div>
                    <div class="confirm-deletion__btn-wrapper">
                        <button class="confirm-deletion__btn confirm-deletion__btn--back clear-btn">Trở lại</button>
                        <button class="confirm-deletion__btn confirm-deletion__btn--agree clear-btn">Có</button>
                    </div>
                </div>
            </div>

            <!-- Empty cart -->
            <div class="empty-cart">
                <div class="empty-cart__img"></div>
                <div class="empty-cart__msg">Giỏ hàng của bạn còn trống</div>
                <a href="home.jsp" class="empty-cart__link">
                    <button class="empty-cart__link-btn clear-btn">MUA NGAY</button>
                </a>
            </div>

        </div>

        <!-- Toast message -->
        <div class="toast-msg-container">

        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>

<script src="./Javascript/shop_libraries.js"></script>
<script src="./Javascript/general-bugs.js"></script>
<script src="./Javascript/cart-info.js" async></script>

</html>
