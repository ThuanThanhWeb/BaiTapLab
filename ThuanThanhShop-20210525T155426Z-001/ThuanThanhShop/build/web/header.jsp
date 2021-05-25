<%-- 
    Document   : header
    Created on : May 17, 2021, 9:42:59 AM
    Author     : Hoang Anh
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="grid wide">
    <nav class="header__navbar hide-on-mobile-tablet">
        <ul class="header__navbar-list">
            <a class="header__navbar-item header__navbar-item-separate" href="home.jsp">
                Trang chủ
            </a>

            <li class="header__navbar-item header__navbar-item-has-qr header__navbar-item-separate">
                Tải ứng dụng
                <!-- Header QR code -->
                <div class="header__qr">
                    <img src="./Images/QR_code.png" alt="QR code" class="header__qr-img" />
                    <div class="header__qr-apps">
                        <a class="header__qr-link">
                            <img src="./Images/google_play.png" alt="Google Play" class="header__qr-dowload-img"></img>
                        </a>
                        <a class="header__qr-link">
                            <img src="./Images/app_store.png" alt="App Store" class="header__qr-dowload-img"></img>
                        </a>
                    </div>
                </div>
            </li>

            <li class="header__navbar-item">
                <span class="header__navbar-title--no-pointer">Kết nối</span>
                <a href="" class="header__navbar-icon-link">
                    <i class="header__navbar-icon fab fa-facebook"></i>
                </a>
                <a href="" class="header__navbar-icon-link">
                    <i class="header__navbar-icon fab fa-instagram"></i>
                </a>
            </li>
        </ul>

        <ul class="header__navbar-list">
            <li class="header__navbar-item header__navbar-item--has-notify">
                <a class="header__navbar-item-link">
                    <i class="header__navbar-icon far fa-bell"></i> Thông Báo
                </a>
                <div class="header__notify">
                    <header class="header__notify-header">
                        Thông báo mới nhận
                    </header>
                    <ul class="header__notify-list">
                        <li class="header__notify-item header__notify-item--viewed">
                            <a href="" class="header__notify-link">
                                <img src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRML3DsAXxxT73rrt7F_8s5_Cmm5B6h6NAfq9jFqbERYtTB9vbN9e_CaRccF2cDZG4jmY5T1EJI&usqp=CAc" alt="" class="header__notify-img">
                                <div class="header__notify-info">
                                    <span class="header__notify-name">Giày Nike</span>
                                    <span class="header__notify-description">Giày Nike hiện đang giảm giá 60%</span>
                                </div>
                            </a>

                        </li>
                        <li class="header__notify-item header__notify-item--viewed">
                            <a href="" class="header__notify-link">
                                <img src="data:image/jpeg;base64,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" alt="" class="header__notify-img">
                                <div class="header__notify-info">
                                    <span class="header__notify-name">Giày Converse</span>
                                    <span class="header__notify-description">Giày Converse hiện đang giảm giá 50%</span>
                                </div>
                            </a>
                        </li>
                        <footer class="header__notify-footer">
                            <a href="" class="header__notify-footer-btn">Xem tất cả</a>
                        </footer>
                    </ul>
                </div>
            </li>
            <li class="header__navbar-item">
                <a class="header__navbar-item-link">
                    <i class="header__navbar-icon far fa-question-circle"></i> Trợ Giúp
                </a>
            </li>

            <c:if test="${sessionScope.acc == null}">
                <a href="./register.jsp" id="register-item" class="header__navbar-item header__navbar-item-separate">Đăng Ký</a>
                <a href="login" id="login-item" class="header__navbar-item"> Đăng nhập</a>

            </c:if>
            <c:if test="${sessionScope.acc != null}">
                <li class="header__navbar-item header__navbar-user">
                    <img src="Images/user.png" class="header__navbar-user-img"></img>
                    <span class="header__navbar-user-name" iduser="${sessionScope.acc.user}">${sessionScope.acc.hoTen}</span>

                    <ul class="header__navbar-user-menu">
                        <c:if test="${sessionScope.acc.isSell == 1}">
                            <li class="header__navbar-user-item">
                                <a href="manage-product.jsp">Quản lý sản phẩm</a>
                            </li>
                        </c:if>

                        <li class="header__navbar-user-item">
                            <a href="">Địa chỉ của tôi</a>
                        </li>
                        <li class="header__navbar-user-item">
                            <a href="">Đơn mua</a>
                        </li>
                        <li class="header__navbar-user-item header__navbar-user-item--separate">
                            <a href="logout">Đăng xuất</a>
                        </li>
                    </ul>
                </li>
            </c:if>
        </ul>

    </nav>

</div>
