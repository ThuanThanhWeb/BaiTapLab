<%-- 
    Document   : home
    Created on : May 16, 2021, 8:43:40 PM
    Author     : Hoang Anh
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang chủ Thuận Thành Shop</title>
        <link rel="stylesheet" type="text/css" href="CSS/base.css" />
        <link rel="stylesheet" type="text/css" href="CSS/main.css" />
        <link rel="stylesheet" type="text/css" href="CSS/grid.css" />
        <link rel="stylesheet" type="text/css" href="CSS/responsive.css" />
        <link rel="stylesheet" href="fonts/fontawesome-free-5.14.0/css/all.min.css" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <meta charset="UTF-8">
    </head>

    <body>
        <!-- Block Element Modifier -->
        <div class="app">
            <header class="header">

                <jsp:include page="header.jsp"></jsp:include>
                <jsp:include page="Search.jsp"></jsp:include>  


                    <!-- Sort bar on mobile -->
                    <ul class="header__sort-bar">
                        <li class="header__sort-item">
                            <a href="" class="header__sort-link">Liên quan</a>
                        </li>
                        <li class="header__sort-item header__sort-item--active">
                            <a href="" class="header__sort-link">Mới nhất</a>
                        </li>
                        <li class="header__sort-item">
                            <a href="" class="header__sort-link">Bán chạy</a>
                        </li>
                        <li class="header__sort-item">
                            <a href="" class="header__sort-link">Giá</a>
                        </li>
                    </ul>
                </header>

                <div class="app__container">
                    <div class="grid wide">
                        <div class="row sm-gutter app__content">
                            <div class="col l-2 m-0 c-0">
                                <div class="category-pc">
                                    <nav class="category">
                                        <div class="category__heading-wrapper">
                                            <i class="category__heading-icon fas fa-th-large"></i>
                                            <div class="category__heading">Danh Mục</div>
                                        </div>

                                        <!-- Content category items -->
                                        <ul class="category-list">

                                        </ul>
                                    </nav>
                                </div>
                            </div>

                            <div class="col l-10 m-12 c-12">
                                <div class="home-filter hide-on-mobile-tablet">
                                    <span class="home-filter__label">Sắp xếp theo</span>
                                    <button class="home-filter__btn btn">Phổ biến</button>
                                    <button class="home-filter__btn btn btn--primary">Mới nhất</button>
                                    <button class="home-filter__btn btn">Bán chạy</button>

                                    <div class="select-input">
                                        <span class="select-input__label">Giá</span>
                                        <i class="select-input__icon fas fa-angle-down"></i>

                                        <!-- List option -->
                                        <ul class="select-input__list">
                                            <li class="select-input__item">
                                                Giá: Thấp đến cao
                                            </li>
                                            <li class="select-input__item">
                                                Giá: Cao đến thấp
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="home-product">
                                    <div class="row sm-gutter">
                                        <!-- Product item -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
    <script src="./Javascript/shop_libraries.js"></script>
    <script src="./Javascript/home.js"></script>
    <script src="./Javascript/general-bugs.js"></script>  

</html>
