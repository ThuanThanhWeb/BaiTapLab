<%-- 
    Document   : Search
    Created on : May 20, 2021, 9:58:41 PM
    Author     : Hoang Anh
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="grid wide">
    <input type="checkbox" hidden class="nav__input" id="nav-mobile-input"></input>

    <!-- Nav on mobile -->
    <div class="nav__mobile">
        <ul class="nav__mobile-list">
            <div class="category__heading">Danh mục</div>
            <ul class="category-list">
                <li class="category-item category-item--active">
                    <a href="" class="category-item__link">Đồ bán chạy hôm nay</a>
                </li>
                <li class="category-item">
                    <a href="" class="category-item__link">Deal hot</a>
                </li>
                <li class="category-item">
                    <a href="" class="category-item__link">Top bán chạy</a>
                </li>
                <li class="category-item">
                    <a href="" class="category-item__link">Giày Adidas</a>
                </li>
                <li class="category-item">
                    <a href="" class="category-item__link">Giày Converse</a>
                </li>
                <li class="category-item">
                    <a href="" class="category-item__link">Giày Nike</a>
                </li>
                <li class="category-item">
                    <a href="" class="category-item__link">Giày Balenciaga</a>
                </li>

            </ul>
        </ul>

        <label for="nav-mobile-input" class="nav__mobile-close">
            <i class="nav__mobile-close--icon fas fa-times"></i>
        </label>
    </div>

    <label for="nav-mobile-input" class="nav__overlay"></label>

    <!-- Header-with-search -->
    <div class="header-with-search">
        <label for="nav-mobile-input" class="mobile__menu-btn">
            <i class="mobile__menu-icon fas fa-ellipsis-v"></i>
        </label>
        <input type="checkbox" hidden class="header__search-checkbox" id="mobile-search-checkbox">

        <div class="header__logo hide-on-mobile-tablet">
            <a href="home.jsp" class="header__logo-link">
                <img src="Images/Logo.png" class="header__logo-img" />
            </a>
        </div>

        <div class="header__search">
            <div class="header__search-input-wrap">
                <input type="text" class="header__search-input" placeholder="Nhập để tìm kiếm"></input>
                <i class="header__search-camera fas fa-camera "></i>
                <!-- Search history -->
                <div class="header__search-history">
                    <div class="header__search-history-heading">Lịch sử tìm kiếm</div>
                    <ul class="header__search-history-list">
                        <li class="header__search-history-item">
                            <div class="header__search-history-cookie"></div>
                        </li>                      
                    </ul>
                </div>
            </div>

            <button class="header__search-btn hide-on-mobile-tablet" type="submit">
                <i class="header__search-btn-icon fas fa-search"></i>
            </button>
        </div>

        <button class="header__search-fillter-wrapper clear-btn">
            <i class="header__search-fillter-icon fas fa-filter"></i>
            <span class="header__search-fillter-text">Lọc</span>
        </button>

        <!-- Cart layout -->
        <div class="header__cart hide-on-mobile-tablet">
            <div class="header__cart-wrap">
                <i class="header__cart-icon fas fa-shopping-cart"></i>
                <span class="header__cart-wrap-notice">0</span>

                <!-- No cart: Header__cart-list--no-cart -->
                <div class="header__cart-list">
                    <img src="Images/empty-cart.png" class="header__cart-no-card-img"></img>
                    <span class="header__cart-list-no-card-msg">
                        Chưa có sản phẩm
                    </span>


                    <div class="header__cart-heading">Sản phẩm đã thêm</div>
                    <ul class="header__cart-list-item">
                        <!-- Cart item -->
                        <!--file json-->
                    </ul>
                    <c:if test="${sessionScope.acc == null}">
                        <a class="header__cart-view-cart btn btn--primary" href="">Xem giỏ hàng</a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <a class="header__cart-view-cart btn btn--primary" href="product_cart.jsp">Xem giỏ hàng</a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./Javascript/product-cart-list.js"></script>
<script src="./Javascript/cookie.js"></script>
