<%-- 
    Document   : product_info
    Created on : May 17, 2021, 9:46:20 AM
    Author     : Hoang Anh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${detail.name}</title>
        <link rel="stylesheet" type="text/css" href="CSS/base.css" />
        <link rel="stylesheet" type="text/css" href="CSS/main.css" />
        <link rel="stylesheet" type="text/css" href="CSS/grid.css" />
        <link rel="stylesheet" type="text/css" href="CSS/product-info.css" />
        <link rel="stylesheet" type="text/css" href="CSS/product_cart.css" />
        <link rel="stylesheet" type="text/css" href="CSS/responsive.css" />
        <link rel="stylesheet" href="fonts/fontawesome-free-5.14.0/css/all.min.css" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    </head>

    <body>
        <div class="app">
            <header class="header hide-on-mobile-tablet">
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

                <div id="product-info-container">
                    <div class="grid wide">
                        <!-- Product slide & content -->
                        <div class="row sm-gutter product">
                            <div class="col l-5 c-12">
                                <div class="product-slide">
                                    <img src="${detail.img}" class="product__img">
                                <div class="product__cards product__cards-mobile">
                                    <button class="product__cards-btn product__cards-btn--prev">
                                        <i class="fas fa-chevron-left"></i>
                                    </button>
                                    <button class="product__cards-btn product__cards-btn--next">
                                        <i class="fas fa-chevron-right"></i>
                                    </button>

                                    <div class="product__cards-container">
                                        <div class="product__card-wrapper">
                                            <div class="product__card">
                                                <img src="${image.img1}" class="product__card-img">
                                            </div>
                                        </div>
                                        <div class="product__card-wrapper">
                                            <div class="product__card">
                                                <img src="${image.img2}" class="product__card-img">
                                            </div>
                                        </div>
                                        <div class="product__card-wrapper">
                                            <div class="product__card">
                                                <img src="${image.img3}" class="product__card-img">
                                            </div>
                                        </div>
                                        <div class="product__card-wrapper">
                                            <div class="product__card">
                                                <img src="${image.img4}" class="product__card-img">
                                            </div>
                                        </div>
                                        <div class="product__card-wrapper">
                                            <div class="product__card">
                                                <img src="${image.img5}" class="product__card-img">
                                            </div>
                                        </div>
                                        <div class="product__card-wrapper">
                                            <div class="product__card">
                                                <img src="${image.img6}" class="product__card-img">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="product__actions hide-on-mobile-tablet">
                                    <div class="product__sharing-icons hide-on-mobile-tablet">
                                        <div class="text">Chia sẻ:</div>
                                        <a href="#" class="product__action-icon messenger">
                                            <i class="fab fa-facebook-messenger"></i>
                                        </a>
                                        <a href="#" class="product__action-icon facebook">
                                            <i class="fab fa-facebook"></i>
                                        </a>
                                        <a href="#" class="product__action-icon google">
                                            <i class="fab fa-google-plus"></i>
                                        </a>
                                        <a href="#" class="product__action-icon pinterest">
                                            <i class="fab fa-pinterest"></i>
                                        </a>
                                        <a href="#" class="product__action-icon twitter">
                                            <i class="fab fa-twitter-square"></i>
                                        </a>
                                    </div>
                                    <div class="product__liking">
                                        <i class="product__action-icon product__action-icon--liking far fa-heart"></i>
                                        <a class="text">Đã thích (${detail.liked}k)</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col l-7 c-12">
                            <div class="product-content">
                                <div class="product__title">
                                    <div class="label-loving">
                                        ${detail.react}
                                    </div>
                                    <span class="product-content-name" idproduct="${detail.id}">${detail.name}</span>
                                </div>

                                <div class="product__status">
                                    <div class="product__status-rating">
                                        <div class="product__status-rating-point underscore">${detail.rate}</div>
                                        <div class="product__status-rating-stars">
                                            <i class="product__status-rating-star fas fa-star"></i>
                                            <i class="product__status-rating-star fas fa-star"></i>
                                            <i class="product__status-rating-star fas fa-star"></i>
                                            <i class="product__status-rating-star fas fa-star"></i>
                                            <i class="product__status-rating-star fas fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product__status-reviewing hide-on-mobile">
                                        <span class="product__status-reviewing-qnt underscore">${detail.review}</span>
                                        <span class="product__status-text pr-text">Đánh Giá</span>
                                    </div>
                                    <div class="product__status-sold">
                                        <span class="product__status-sold-qnt">${detail.sold}</span>
                                        <span class="product__status-text pr-text">Đã Bán</span>
                                    </div>
                                    <div class="product__liking">
                                        <i class="product__action-icon product__action-icon--liking far fa-heart"></i>
                                        <a class="text hide-on-mobile">Đã thích (${detail.liked}k)</a>
                                    </div>
                                </div>

                                <div class="product__price">
                                    <div class="product__price-main">
                                        <span class="product__price-old">₫${detail.oldPrice}</span>
                                        <div class="product__price-current">
                                            <span class="product__price-new">₫${detail.curPrice}</span>
                                            <span class="product__price-label bgr-orange">${detail.per}% GIẢM</span>
                                        </div>
                                    </div>
                                    <div class="product__price-slogan hide-on-mobile-tablet">
                                        <i class="product__price-icon-tag fas fa-tags"></i>
                                        <span class="product__price-slogan-text">Ở đâu rẻ hơn, Thuận Thành Shop hoàn
                                            tiền</span>
                                        <i class="product__price-icon-question far fa-question-circle"></i>
                                    </div>
                                </div>

                                <div class="product__info">
                                    <div class="product__codes hide-on-mobile-tablet">
                                        <label class="product__codes-label width-label">Mã Giảm Giá Của Shop</label>
                                        <div class="product__codes-wrapper">
                                            <div class="product__code">${detail.label} ₫3k</div>
                                            <div class="product__code">${detail.label} ₫5k</div>
                                            <div class="product__code">${detail.label} ₫8k</div>
                                        </div>
                                    </div>

                                    <div class="product__combo hide-on-mobile-tablet">
                                        <label class="product__combo-label width-label">Combo Khuyến Mãi</label>
                                        <div class="product__combo-note">Mua 2 & giảm 5%</div>
                                    </div>

                                    <div class="product__shipping">
                                        <label class="product__shipping-label width-label">Vận Chuyển</label>
                                        <div class="product__shipping-wrapper">
                                            <div class="product__shipping-free">
                                                <div class="product__shipping-free-icon-wrapper">
                                                    <i class="product__shipping-free-icon fas fa-truck-loading"></i>
                                                </div>
                                                <div class="product__shipping-free-wrapper">
                                                    <div class="product__shipping-free-title">Miễn Phí Vận Chuyển</div>
                                                    <div class="product__shipping-free-note">Miễn Phí Vận Chuyển khi đơn đạt giá trị tối thiểu</div>
                                                </div>
                                            </div>

                                            <div class="product__shipping-to">
                                                <i class="product__shipping-to-icon-truck fas fa-truck"></i>
                                                <div class="product__shipping-to-wrapper">
                                                    <div class="product__shipping-to-destination">
                                                        <label class="product__shipping-to-label">Vận Chuyển Tới</label>
                                                        <div class="product__shipping-to-cities">
                                                            <span class="product__shipping-to-city">${detail.to}</span>
                                                            <i class="product__shipping-to-icon fas fa-chevron-down"></i>
                                                        </div>
                                                    </div>

                                                    <div class="product__shipping-to-fee">
                                                        <label class="product__shipping-to-label">Phí Vận Chuyển</label>
                                                        <div class="product__shipping-to-fee-wrapper">
                                                            <div class="product__shipping-to-fees">₫15000</div>
                                                            <i class="product__shipping-to-icon fas fa-chevron-down"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!--                                <div class="product__options">
                                                                        <label class="product__options-label width-label">Chọn loại hàng</label>
                                                                        <div class="product__options-items-wrapper">
                                                                            <div class="product__options-items">
                                    
                                                                            </div>
                                                                            <div class="product__options-items-error-message">Vui lòng chọn Phân loại hàng
                                                                            </div>
                                                                        </div>
                                                                    </div>-->

                                    <div class="product__qnt hide-on-mobile">
                                        <label class="product__qnt-label width-label">Số Lượng</label>
                                        <div class="shop__qnt-btns">
                                            <button class="shop__qnt-btn shop__qnt-btn--dec">
                                                <i class="shop__qnt-btn-icon fas fa-minus"></i>
                                            </button>
                                            <input class="shop__qnt-input" type="text" value="1"></input>
                                            <button class="shop__qnt-btn shop__qnt-btn--inc">
                                                <i class="shop__qnt-btn-icon fas fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="product__qnt-note">
                                            <span class="product__qnt-note-num" avai="${detail.available}">${detail.available}</span> sản phẩm có sẵn
                                        </div>
                                    </div>

                                    <div class="product-btns-main">
                                        <button class="product-btn-main product-btn-main__msg clear-btn hide-on-tablet">
                                            <i class="product-btn-main__msg-icon far fa-comment-dots"></i>
                                        </button>
                                        <button class="product-btn-main product-btn-main__adding">
                                            <i class="product-btn-main__adding-icon fas fa-cart-plus"></i>
                                            <span class="product-btn-main__text product-btn-main__adding-text hide-on-mobile">Thêm Vào Giỏ Hàng</span>
                                        </button>
                                        <c:if test="${sessionScope.acc == null}">
                                            <button onclick="document.location.href = this.getAttribute('href');" href="login.jsp" class="product-btn-main product-btn-main__buying">
                                                <span class="product-btn-main__text product-btn-main__buying-text">Mua
                                                    Ngay</span>
                                            </button></c:if>
                                        <c:if test="${sessionScope.acc != null}">
                                            <button onclick="document.location.href = this.getAttribute('href');" href="product_cart.jsp" class="product-btn-main product-btn-main__buying">
                                                <span class="product-btn-main__text product-btn-main__buying-text">Mua
                                                    Ngay</span>
                                            </button></c:if>
                                        </div>
                                    </div>

                                    <div class="product__guarantee-container">
                                        <a href="*" class="product__guarantee">
                                            <div class="product__guarantee-wrapper">
                                                <span>
                                                    <i class="product__guarantee-icon fas fa-clipboard-check"></i>
                                                </span>
                                                <div class="product__guarantee-text">Thuận Thành Shop Đảm Bảo</div>
                                            </div>
                                            <span class="product__guarantee-note">3 Ngày Trả Hàng / Hoàn Tiền</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="grid wide">
                        <!-- Product shop -->
                        <div class="row sm-gutter product-shop">
                            <div class="product-shop__contact">
                                <a href="#" class="product-shop__contact-img-link">
                                    <div class="product-shop__contact-avatar-wrapper">
                                        <img class="product-shop__contact-avatar" src="./Images/shop_manager.png">
                                    </div>
                                    <span class="label-loving">Yêu Thích</span>
                                </a>

                                <div class="product-shop__contact-container">
                                    <div class="product-shop__contact-info">
                                        <div class="product-shop__contact-name">Admin</div>
                                        <div class="product-shop__contact-online-time">Online 30 Phút Trước</div>
                                    </div>

                                    <div class="product-shop__contact-main">
                                        <button class="product-shop__contact-btn product-shop__contact-message-btn hide-on-mobile">
                                            <i class="product-shop__contact-icon far fa-comment-alt"></i>
                                            <span class="product-shop__contact-message-text">Chat Ngay</span>
                                        </button>

                                        <a href="#" class="product-shop__contact-btn product-shop__contact-viewing">
                                            <i class="product-shop__contact-icon fas fa-store"></i>
                                            <div class="product-shop__contact-viewing-text">Xem Shop</div>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="product-shop__side hide-on-mobile-tablet">
                                <div class="product-shop__side-container">
                                    <div class="product-shop__side-wrapper">
                                        <label class="product-shop__side-label">Đánh giá</label>
                                        <div class="product-shop__side-qnt">999</div>
                                    </div>

                                    <a href="#" class="product-shop__side-wrapper">
                                        <label class="product-shop__side-label">Sản phẩm</label>
                                        <div href="#" class="product-shop__side-qnt product-shop__side-qnt--link">${detail.proQnt}</div>
                                </a>
                            </div>

                            <div class="product-shop__side-container">
                                <div class="product-shop__side-wrapper">
                                    <label class="product-shop__side-label">Tỉ Lệ Phản Hồi</label>
                                    <div class="product-shop__side-qnt">100%</div>
                                </div>

                                <div class="product-shop__side-wrapper">
                                    <label class="product-shop__side-label">Thời Gian Phản Hồi</label>
                                    <div class="product-shop__side-qnt">trong vài phút</div>
                                </div>
                            </div>

                            <div class="product-shop__side-container">
                                <div class="product-shop__side-wrapper">
                                    <label class="product-shop__side-label">Tham gia</label>
                                    <div class="product-shop__side-qnt">2 tháng trước</div>
                                </div>

                                <div class="product-shop__side-wrapper">
                                    <label class="product-shop__side-label">Người theo dõi</label>
                                    <div class="product-shop__side-qnt">100k</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product shop slide on mobile -->
                        <div class="product-shop__side-mobile">
                            <div class="product-shop__side-wrapper">
                                <label class="product-shop__side-label">Đánh giá</label>
                                <div class="product-shop__side-qnt">100</div>
                            </div>

                            <a href="#" class="product-shop__side-wrapper">
                                <label class="product-shop__side-label">Sản phẩm</label>
                                <div href="#" class="product-shop__side-qnt product-shop__side-qnt--link">200</div>
                            </a>

                            <div class="product-shop__side-wrapper">
                                <label class="product-shop__side-label">Tỉ Lệ Phản Hồi</label>
                                <div class="product-shop__side-qnt">100%</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="grid wide">
                    <div class="row sm-gutter product-content__side" style="padding-bottom: 25px;">
                        <!-- Product left content -->
                        <div class="product-content--left">
                            <!-- Product details -->
                            <div class="product-details">
                                <div class="product-detail">
                                    <div class="product-detail__title">Chi tiết sản phẩm</div>
                                    <div class="product-details__wrapper">
                                        <div class="product-detail__wrapper">
                                            <span class="product-detail__label">Danh Mục</span>
                                            <div class="product-detail__links">
                                                <a class="product-detail__link" href="/">
                                                    <span>Thuận Thành Shop</span>
                                                </a>
                                                <svg class="product-detail__icon" enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon _3kIvpP icon-arrow-right">
                                                <path
                                                    d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z">
                                                </path>
                                                </svg>
                                                <a class="product-detail__link" href="/">
                                                    <span>Phụ kiện</span>
                                                </a>
                                                <svg class="product-detail__icon" enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shopee-svg-icon _3kIvpP icon-arrow-right">
                                                <path
                                                    d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5 4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z">
                                                </path>
                                                </svg>
                                                <a class="product-detail__link" href="/">
                                                    <span>${detail.type}</span>
                                                </a>
                                            </div>
                                        </div>

                                        <div class="product-detail__wrapper">
                                            <span class="product-detail__label">Thương hiệu</span>
                                            <a class="product-detail__link" href="/">
                                                <span>No brand</span>
                                            </a>
                                        </div>

                                        <div class="product-detail__wrapper">
                                            <span class="product-detail__label">Chất liệu</span>
                                            <span class="product-detail__text">${detail.material}</span>
                                        </div>

                                        <div class="product-detail__wrapper">
                                            <span class="product-detail__label">Xuất xứ</span>
                                            <span class="product-detail__text">Mỹ</span>
                                        </div>

                                        <div class="product-detail__wrapper">
                                            <span class="product-detail__label">Kho hàng</span>
                                            <span class="product-detail__text">2000</span>
                                        </div>

                                        <div class="product-detail__wrapper">
                                            <span class="product-detail__label">Gửi từ</span>
                                            <span class="product-detail__text">${detail.from}</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-description">
                                    <div class="product-description__title">Mô tả sản phẩm</div>
                                    <span class="product-description__content">${detail.description}</span>
                                </div>
                            </div>

                            <!-- Product reviews -->
                            <div class="product-reviews">
                                <div class="product-reviews__header">ĐÁNH GIÁ SẢN PHẨM</div>
                                <!-- Stars on mobile -->
                                <div class="product-reviews__rating-mobile">
                                    <div class="product-reviews__rating-stars product-reviews__rating-stars-mobile">
                                        <i class="product-reviews__rating-star fas fa-star"></i>
                                        <i class="product-reviews__rating-star fas fa-star"></i>
                                        <i class="product-reviews__rating-star fas fa-star"></i>
                                        <i class="product-reviews__rating-star fas fa-star"></i>
                                        <i class="product-reviews__rating-star fas fa-star"></i>
                                    </div>
                                    <div class="product-reviews__rating-score-wrapper">
                                        <span class="product-reviews__rating-score">${detail.rate}</span><span class="product-reviews__rating-score-out-of">/5</span>
                                    </div>
                                    <div class="product-reviews__total">(44 đánh giá)</div>
                                </div>

                                <div class="product-reviews__container hide-on-mobile">
                                    <div class="product-reviews__rating">
                                        <div class="product-reviews__rating-score-wrapper">
                                            <span class="product-reviews__rating-score">${detail.rate}</span>
                                            <span class="product-reviews__rating-score-out-of"> trên 5 </span>
                                        </div>

                                        <div class="product-reviews__rating-stars">
                                            <i class="product-reviews__rating-star fas fa-star"></i>
                                            <i class="product-reviews__rating-star fas fa-star"></i>
                                            <i class="product-reviews__rating-star fas fa-star"></i>
                                            <i class="product-reviews__rating-star fas fa-star"></i>
                                            <i class="product-reviews__rating-star fas fa-star"></i>
                                        </div>
                                    </div>

                                    <div class="product-reviews__filters">
                                        <div class="product-reviews__filter product-reviews__filter--active">tất cả</div>
                                        <div class="product-reviews__filter">5 Sao (0)</div>
                                        <div class="product-reviews__filter">4 Sao (0)</div>
                                        <div class="product-reviews__filter">3 Sao (0)</div>
                                        <div class="product-reviews__filter">2 Sao (0)</div>
                                        <div class="product-reviews__filter">1 Sao (0)</div>
                                        <div class="product-reviews__filter product-reviews__filter--comment">Có Bình luận (0)
                                        </div>
                                        <div class="product-reviews__filter product-reviews__filter--photo">Có hình ảnh / video (0)</div>
                                    </div>
                                </div>

                                <div class="product-reviews__comments">
                                    <div class="product-reviews__comment">Rất tiếc, hiện chưa có bình luận nào</div>
                                </div>
                            </div>
                        </div>

                        <div class="product-content--right hide-on-mobile-tablet">
                            <!-- Product vouchers -->
                            <div class="product-vouchers hide-on-mobile">
                                <div class="product-vouchers__header">Mã giảm giá của Shop</div>
                                <div class="product-vouchers__list">
                                    <div class="product-vouchers__item">
                                        <div class="product-vouchers__item-wrapper">
                                            <div class="product-vouchers__item-title">Giảm ₫3k Đơn Tối Thiểu ₫89k</div>
                                            <div class="product-vouchers__item-expiry">HSD:31-03-2021</div>
                                        </div>
                                        <div class="product-vouchers__btn-wrapper">
                                            <button class="product-vouchers__btn-save">Lưu</button>
                                            <div class="product-vouchers__border-dashed"></div>
                                        </div>
                                        <div class="product-vouchers__border-circle">
                                            <div class="product-vouchers__border-circle-edge"></div>
                                        </div>
                                    </div>

                                    <div class="product-vouchers__item">
                                        <div class="product-vouchers__item-wrapper">
                                            <div class="product-vouchers__item-title">Giảm ₫3k Đơn Tối Thiểu ₫89k</div>
                                            <div class="product-vouchers__item-expiry">HSD:31-03-2021</div>
                                        </div>
                                        <div class="product-vouchers__btn-wrapper">
                                            <button class="product-vouchers__btn-save">Lưu</button>
                                            <div class="product-vouchers__border-dashed"></div>
                                        </div>
                                        <div class="product-vouchers__border-circle">
                                            <div class="product-vouchers__border-circle-edge"></div>
                                        </div>
                                    </div>

                                    <div class="product-vouchers__item">
                                        <div class="product-vouchers__item-wrapper">
                                            <div class="product-vouchers__item-title">Giảm ₫3k Đơn Tối Thiểu ₫89k</div>
                                            <div class="product-vouchers__item-expiry">HSD:31-03-2021</div>
                                        </div>
                                        <div class="product-vouchers__btn-wrapper">
                                            <button class="product-vouchers__btn-save">Lưu</button>
                                            <div class="product-vouchers__border-dashed"></div>
                                        </div>
                                        <div class="product-vouchers__border-circle">
                                            <div class="product-vouchers__border-circle-edge"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product hot sales -->
                            <div class="product-hot-sales hide-on-mobile-tablet">
                                <div class="product-hot-sales__header">Top Sản Phẩm Bán Chạy</div>
                                <c:forEach items="${soldest}" var="o">
                                    <a href="#" class="product-hot-sales__link">
                                        <div>
                                            <img class="product-hot-sales__item-img" src=${o.img}>
                                        </div>
                                        <div class="product-hot-sales__item-wrapper">
                                            <div class="product-hot-sales__item-name">${o.name}</div>
                                            <div class="product-hot-sales__item-price">₫${o.curPrice}</div>
                                        </div>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>

        <!-- Toast action -->
        <div class="action-toast">
            <div class="action-toast-container">
                <i class="fas fa-check-circle"></i>
                <div class="action-toast__message">Sản phẩm đã được thêm vào Giỏ hàng</div>
            </div>
        </div>

        <!-- Toast message -->

    </body>


    <script src="./Javascript/shop_libraries.js"></script>
    <script src="./Javascript/info-product.js"></script>
    <script src="./Javascript/general-bugs.js"></script>


</html>
