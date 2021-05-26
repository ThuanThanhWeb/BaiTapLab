<%-- 
    Document   : manage-product
    Created on : May 22, 2021, 11:21:02 PM
    Author     : Hoang Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý sản phẩm Thuận Thành Shop</title>
    <link rel="stylesheet" type="text/css" href="CSS/base.css" />
    <link rel="stylesheet" type="text/css" href="CSS/grid.css" />
    <link rel="stylesheet" type="text/css" href="CSS/main.css" />
    <link rel="stylesheet" type="text/css" href="CSS/responsive.css" />
    <link rel="stylesheet" type="text/css" href="CSS/product-info.css" />
    <link rel="stylesheet" type="text/css" href="CSS/product_cart.css" />
    <link rel="stylesheet" type="text/css" href="CSS/manage-product.css" />
    <link rel="stylesheet" href="fonts/fontawesome-free-5.14.0/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="CSS/responsive.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">


</head>


<body>
    <div class="app">
        <header class="header">
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="Search.jsp"></jsp:include>
        </header>

        <!-- Cart main content -->
        <div class="grid wide" style="padding-bottom: 25px;">
            <div class="cart-suggestion">
                <i class="cart-suggestion-icon fas fa-plus"></i>
                <span class="cart-suggestion-txt">Thêm sản phẩm</span>
            </div>

            <!-- Cart product header -->
            <div class="cart-page-product-header hide-on-mobile-tablet">
                <span class="cart-page-product-header__product">
                    <i class="fas fa-cart-arrow-down"></i>
                    Sản Phẩm
                </span>
                <span class="cart-page-product-header__qnt cart-page-product-header__cate">Phân loại</span>
                <span class="cart-page-product-header__unit-price">Giá trị</span>
                <span class="cart-page-product-header__qnt">Số Lượng</span>
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


            </div>

            <!-- Cart page footer -->
            <div class="cart-page-footer">



                <div class="cart-page-footer__row3">
                    <div class="cart-page-footer__actions">
                        <div id="shop-checkbox-all" class="shop-checkbox">
                            <input class="shop-checkbox__input" type="checkbox">
                            <div class="shop-checkbox__bgc"></div>
                        </div>
                        <button class="cart-page-footer__actions-btn cart-page-footer__select-all clear-btn">Tất cả
                            <span class="hide-on-mobile-tablet">
                                (<span class="confirm-deletion-qnt qnt">0</span>)
                            </span>
                        </button>
                        <button class="cart-page-footer__actions-btn cart-page-footer__remove clear-btn hide-on-mobile-tablet">Xóa</button>
                        <button class="cart-page-footer__actions-btn cart-page-footer__save clear-btn hide-on-mobile-tablet">Lưu vào mục Đã thích</button>
                    </div>


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
                <a href="#" class="empty-cart__link">
                    <button class="empty-cart__link-btn clear-btn">THÊM NGAY</button>
                </a>
            </div>


        </div>

        <!-- Toast message -->
        <div class="toast-msg-container">
        </div>

            <jsp:include page="footer.jsp"></jsp:include>

        
        <div class="modal">
            <div class="modal__overlay"></div>

            <div class="modal__body">

                <!-- add form -->
                <div id="add-form" class="auth-form" action="">
                    <div class="auth-form__container">
                        <div class="auth-form__header">
                            <div class="auth-form__heading">Thêm sản phẩm</div>
                        </div>
                        <div class="auth-form__groups">
                            <div class="auth-form__group">
                                <span>Tên sản phẩm</span>
                                <input id="name" name="" rules="min" class="auth-form__input" placeholder="Tên sản phẩm" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Loại sản phẩm</span>
                                <input id="category" name="" rules="min" class="auth-form__input" placeholder="Loại sản phẩm" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Số lượng</span>
                                <input id="qnt" name="" rules="number" class="auth-form__input" placeholder="Số lượng" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Chất liệu</span>
                                <input id="material" name="" rules="min" class="auth-form__input" placeholder="Chất liệu" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Hình ảnh</span>
                                <input id="img" name="" rules="min" class="auth-form__input" placeholder="Hình ảnh" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Giá cũ</span>
                                <input id="oldPrice" name="" rules="number" class="auth-form__input" placeholder="Giá cũ" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Giá mới</span>
                                <input id="newPrice" name="" rules="number" class="auth-form__input" placeholder="Giá mới" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Địa chỉ</span>
                                <input id="address" name="" rules="min" class="auth-form__input" placeholder="Địa chỉ" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Mô tả sản phẩm</span>
                                <textarea name="" id="describe" rules="min" cols="50" rows="100" class="auth-form__input auth-form__textarea" placeholder="Mô tả sản phẩm"></textarea>
                                <span class="form-message" style="color: red;"></span>
                            </div>

                        </div>
                        <div class="auth-form__controls">
                            <button class="btn auth-form__controls-back">TRỞ LẠI</button>
                            <button class="auth-form__controls-add btn btn--primary">THÊM </button>
                        </div>


                    </div>


                </div>
                <!-- add form -->
                <div id="edit-form" class="auth-form" action="">
                    <div class="auth-form__container">
                        <div class="auth-form__header">
                            <div class="auth-form__heading">Sản phẩm</div>
                        </div>
                        <div class="auth-form__groups">
                            <div class="auth-form__group">
                                <span>Tên sản phẩm</span>
                                <input id="name-e" name="" rules="min" class="auth-form__input" placeholder="Tên sản phẩm" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Loại sản phẩm</span>
                                <input id="category-e" name="" rules="min" class="auth-form__input" placeholder="Loại sản phẩm" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Số lượng</span>
                                <input id="qnt-e" name="" rules="number" class="auth-form__input" placeholder="Số lượng" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Chất liệu</span>
                                <input id="material-e" name="" rules="min" class="auth-form__input" placeholder="Chất liệu" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Hình ảnh</span>
                                <input id="img-e" name="" rules="min" class="auth-form__input" placeholder="Hình ảnh" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Giá cũ</span>
                                <input id="oldPrice-e" name="" rules="number" class="auth-form__input" placeholder="Giá cũ" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                 <span>Giá mới</span>
                                <input id="newPrice-e" name="" rules="number" class="auth-form__input" placeholder="Giá mới" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Địa chỉ</span>
                                <input id="address-e" name="" rules="min" class="auth-form__input" placeholder="Địa chỉ" />
                                <span class="form-message" style="color: red;"></span>
                            </div>
                            <div class="auth-form__group">
                                <span>Mô tả sản phẩm</span>
                                <textarea name="" id="describe-e" rules="min" cols="50" rows="100" class="auth-form__input auth-form__textarea" placeholder="Mô tả sản phẩm"></textarea>
                                <span class="form-message" style="color: red;"></span>
                            </div>

                        </div>
                        <div class="auth-form__controls">
                            <button class="btn auth-form__controls-back">TRỞ LẠI</button>
                            <button class="auth-form__controls-add btn btn--primary">LƯU </button>
                        </div>


                    </div>


                </div>

            </div>
        </div>


    </div>

</body>

<script src="./Javascript/shop_libraries.js"></script>
<script src="./Javascript/general-bugs.js"></script>
<script src="./Javascript/manage_product.js"></script>
<script src="./Javascript/validatorAddProduct.js"></script>
<script>
    Validator('#add-form');
</script>
<script>
    Validator('#edit-form');
</script>

</html>