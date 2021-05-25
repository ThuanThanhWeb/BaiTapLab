// render cart products
let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser");
let cartProductsInfo;
let xmlhttp = new XMLHttpRequest();

let suggest = document.querySelector('.cart-suggestion'); // get element of cart suggestion
let proHeaderCtn = document.querySelector('.cart-page-product-header'); // get element of cart product header container
let proBodyCtn = document.querySelector('.cart-page-shop-container'); // get element of cart product body container
let profooterCtn = document.querySelector('.cart-page-footer'); // get element of cart product footer container
let empCart = document.querySelector('.empty-cart'); // get element of empty cart

// remove all parts when cart is empty
let removeAllParts = () => {
    suggest.remove();
    proHeaderCtn.remove();
    proBodyCtn.remove();
    profooterCtn.remove();
}
xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
        cartProductsInfo = JSON.parse(this.responseText);
//        alert(cartProductsInfo.length);
        if (cartProductsInfo.length < 1) {
            removeAllParts();
            let empCart = document.querySelector('.empty-cart');
            let confirmCtn = document.querySelector('.confirm-deletion-container');
            empCart.style.display = 'flex';
            confirmCtn.style.display = 'none';
        } else
            renderCartProducts();
    }
};
xmlhttp.open("POST", "JsonCartProductByUser?user=" + user.toString(), false);
xmlhttp.send();

function renderCartProducts() {

    let cartProductsCtn = document.querySelector('.cart-item-container'); // get element of cart products container
    let cartProductsCtnMob = document.querySelector('.cart-item-container-mobile'); // get element of mobile cart products container
    let cartProductEl = ''; // save cart product elements

    if (window.matchMedia("(min-width: 1024px)").matches) {
        for (let cartProductInfo of cartProductsInfo) {
            cartProductEl +=
                    `
                <div class="cart-item">
                    <div class="shop-checkbox shop-checkbox-sup">
                        <input class="shop-checkbox__input" type="checkbox">
                        <div class="shop-checkbox__bgc"></div>
                    </div>
        
                    <div class="cart-item__overview">
                        <a href="#" class="cart-item__overview-img-link">
                            <img class="cart-item__overview-img" src="${cartProductInfo.image}">
                        </a>
                        <a href="#" class="cart-item__overview-name" idProduct=${cartProductInfo.id}>${cartProductInfo.name}</a>
                    </div>
        
                    <div class="cart-item__variations">
                        <div class="cart-item__variation-label">
                            Phân loại hàng:
                            <button class="cart-item__variation-btn-arrow">
                                <i class="cart-item__variation-icon-arrow-down fas fa-sort-down"></i>
                            </button>
                        </div>
                        <div class="cart-item__variation-model">${cartProductInfo.type}</div>
                    </div>
        
                    <div class="cart-item__price">
                        <div class="cart-item__price-old">₫${numberWithCommas(cartProductInfo.oldPrice)}</div>
                        <div class="cart-item__price-current">₫${numberWithCommas(cartProductInfo.curPrice)}</div>
                    </div>
        
                    <div class="shop__qnt-btns">
                        <button class="shop__qnt-btn shop__qnt-btn--dec">
                            <i class="shop__qnt-btn-icon fas fa-minus"></i>
                        </button>
                        <input class="shop__qnt-input" type="text" value="${cartProductInfo.soLuong}"></input>
                        <button class="shop__qnt-btn shop__qnt-btn--inc">
                            <i class="shop__qnt-btn-icon fas fa-plus"></i>
                        </button>
                    </div>
        
                    <div class="cart-item__price-total">₫${numberWithCommas(cartProductInfo.curPrice * cartProductInfo.soLuong)}</div>
        
                    <div class="cart-item__actions">
                        <button class="cart-item__action-remove">Xóa</button>
                       
                    </div>
                </div>
            `
        }
        cartProductsCtn.innerHTML = cartProductEl;
    } else {
        for (let cartProductInfo of cartProductsInfo) {
            cartProductEl +=
                    `
                <div class="cart-item cart-item-mobile">
                    <div class="cart-item-col-1">
                        <div class="shop-checkbox shop-checkbox-sup">
                            <input class="shop-checkbox__input" type="checkbox">
                            <div class="shop-checkbox__bgc"></div>
                        </div>
                        
                        <div class="cart-item__overview">
                            <a href="#" class="cart-item__overview-img-link">
                                <img class="cart-item__overview-img" src="${cartProductInfo.image}">
                            </a>
                        </div>
                    </div>
                    
                    <div class="cart-item-col-2">
                        <a href="#" class="cart-item__overview-name" idProduct=${cartProductInfo.id}">${cartProductInfo.name}</a>
                        <div class="cart-item__variations">
                            <div class="cart-item__variation-label">
                                Phân loại hàng:
                                <button class="cart-item__variation-btn-arrow">
                                    <i class="cart-item__variation-icon-arrow-down fas fa-sort-down"></i>
                                </button>
                            </div>
                            <div class="cart-item__variation-model hide-on-mobile">${cartProductInfo.type}</div>
                        </div>
    
                        <div class="cart-item__price">
                            <div class="cart-item__price-old">₫${numberWithCommas(cartProductInfo.oldPrice)}</div>
                            <div class="cart-item__price-current">₫${numberWithCommas(cartProductInfo.curPrice)}</div>
                        </div>
    
                        <div class="shop__qnt-btns">
                            <button class="shop__qnt-btn shop__qnt-btn--dec">
                                <i class="shop__qnt-btn-icon fas fa-minus"></i>
                            </button>
                            <input class="shop__qnt-input" type="text" value="${cartProductInfo.soLuong}"></input>
                            <button class="shop__qnt-btn shop__qnt-btn--inc">
                                <i class="shop__qnt-btn-icon fas fa-plus"></i>
                            </button>
                        </div>
    
                        <div class="cart-item__price-total hide-on-mobile-tablet">₫${numberWithCommas(cartProductInfo.curPrice * cartProductInfo.soLuong)}</div>
    
                        <div class="cart-item__actions hide-on-mobile-tablet">
                            <button class="cart-item__action-remove">Xóa</button>
                            
                        </div>
                    </div>
                </div>
            `
        }
        cartProductsCtn.innerHTML = cartProductEl;
    }
}


// render toast message when voucher save button is clicked
let cartVouSaveBtn = document.querySelectorAll('.cart-voucher__btn-save'); // get element of cart voucher save button
sildeToastMsg(cartVouSaveBtn);

// handle add products quanity
let cartProductsCtn = document.querySelector('.cart-item-container'); // get element of cart items container
let cartEls = cartProductsCtn.querySelectorAll('.cart-item'); // get element of cart items
for (let cartEl of cartEls) {
    cartQntAndPrice(cartEl);
}

// plus product quantity to input
function cartQntAndPrice(el) {
    let inpEl = el.querySelector('.shop__qnt-input'); // get element of input
    let qntValue = Number(inpEl.getAttribute('value')); // get value of input
    let decBtn = el.querySelector('.shop__qnt-btn--dec'); // get element of decrease button
    let incBtn = el.querySelector('.shop__qnt-btn--inc'); // get element of increase button
    //
//    let qntProduct = el.querySelector('.product__qnt-note-num').getAttribute("avai");
    // let maxQnt = Number(document.querySelector('.product__qnt-note-num').innerHTML); // get element of max quantity then convert to number
    let maxQnt = 1100;

    let priceTotal = el.querySelector('.cart-item__price-total'); // get element of total price of item
    let cartEls = document.querySelectorAll('.cart-item'); // get element of cart items
    let amountTotal = document.querySelector('.cart-page-footer__summary-total-amount'); // get element of total amount
    let amountTotalNew = 0;

    let itemsQnt = document.querySelector('.cart-page-footer__summary-total-text .qnt'); // get element of current cart items quanity
    let allQntBtn = document.querySelector('.cart-page-footer__select-all'); // get element of cart sellect all quanity button
    let allQnt = allQntBtn.querySelector('.qnt'); // get element of cart sellect all quanity

    let cartElsQnt; // save quantity of cart items

    // get quantity of cart items
    let getCardsQnt = () => {
        let cartProductsCtn = document.querySelector('.cart-item-container'); // get element of cart items container
        let cartEls = cartProductsCtn.querySelectorAll('.cart-item'); // get element of cart items
        cartElsQnt = 0;

        for (let cartEl of cartEls) {
            cartElsQnt += Number(cartEl.querySelector('.shop__qnt-input').value);
        }
        itemsQnt.innerHTML = cartElsQnt;
        allQnt.innerHTML = cartElsQnt;
    }

    getCardsQnt();

    // handle total price when manipulate with input
    let handlePriceTotal = (btn) => {
        let curPrice = btn.parentElement.previousElementSibling.querySelector('.cart-item__price-current').innerHTML; // get element of current price
        curPrice = Number(curPrice.replace(/₫|\./g, '')); // convert current price to number
        curPrice *= inpEl.value;
        priceTotal.innerHTML = `₫${numberWithCommas(curPrice)}`;
    }

    inpEl.setAttribute('maxlength', (maxQnt.toString()).length);

    inpEl.oninput = () => {
        inpEl.setAttribute('value', inpEl.value);
        qntValue = Number(inpEl.value);

        if (inpEl.value >= maxQnt) {
            inpEl.value = maxQnt;
            inpEl.setAttribute('value', maxQnt);
            qntValue = Number(inpEl.value);
        }

        if (/^\d*$/.test(inpEl.value)) {
            inpEl.oldValue = inpEl.value;
        } else if ('oldValue' in inpEl) {
            inpEl.setAttribute('value', inpEl.oldValue);
            inpEl.value = inpEl.oldValue;
        } else {
            inpEl.value = '';
        }

        handlePriceTotal(inpEl);
        handleAmountTotal(0);
        getCardsQnt(inpEl.value);
    }

    window.onclick = () => {
        let inpEls = document.querySelectorAll('.shop__qnt-input'); // get element of inputs
        for (let inpEl of inpEls) {
            if (inpEl.value === '') {
                let inpPar = inpEl.parentElement; // get element of input's parrent
                let oldPrice = inpPar.previousElementSibling.querySelector('.cart-item__price-current').innerHTML; // get element of old price
                let totalPrice = inpPar.nextElementSibling; // get element of total price

                inpEl.setAttribute('value', '1');
                inpEl.value = 1;
                totalPrice.innerHTML = oldPrice;
                handleAmountTotal(0);
            }
        }
    }

    incBtn.onclick = () => {
        if (incBtn.previousElementSibling.value === '1') {
            qntValue = 1;
        }

        if (qntValue < maxQnt) {
            inpEl.setAttribute('value', qntValue += 1);
            inpEl.value = qntValue;

            handlePriceTotal(incBtn);
            handleAmountTotal(0);
            getCardsQnt(inpEl.value);
        }
    }

    decBtn.onclick = () => {
        if (qntValue > 1) {
            inpEl.setAttribute('value', qntValue -= 1);
            inpEl.value = qntValue;

            handlePriceTotal(decBtn);
            handleAmountTotal(0);
            getCardsQnt(inpEl.value);
        }
    }

    // handle amount total
    let handleAmountTotal = (num) => {
        let cartEls = document.querySelectorAll('.cart-item'); // get element of cart items
        if (num === 0) {
            amountTotalNew = num;
        }

        for (let cartEl of cartEls) {
            let cartElPrice = cartEl.querySelector('.cart-item__price-total').innerHTML;
            cartElPrice = Number(cartElPrice.replace(/₫|\./g, '')); // convert current price to number
            amountTotalNew += cartElPrice;
        }
        amountTotal.innerHTML = `₫${numberWithCommas(amountTotalNew)}`;
    }

    handleAmountTotal();

    // handle actions
    let handleActions = () => {


        // check cart items length
        let checkLen = () => {
            return document.querySelectorAll('.cart-item').length; // get element of cart items length
        }

        // delete cart products
        let delCartProduct = () => {
            let cartEls = document.querySelectorAll('.cart-item'); // get element of carts

            for (let cartEl of cartEls) {
                let delBtn = cartEl.querySelector('.cart-item__action-remove'); // get element of cart delete button

                delBtn.onclick = () => {

                    cartEl.remove();

                    let id = cartEl.querySelector(".cart-item__overview-name").getAttribute("idProduct").toString();
                    let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser").toString();
                    let xmlhttp = new XMLHttpRequest();
                    xmlhttp.open("POST", "DeleteProductFromCard?user=" + user + "&id=" + id);
                    xmlhttp.send();

                    handleAmountTotal(0);
                    getCardsQnt();

                    if (checkLen() === 0) {
                        removeAllParts();
                        empCart.style.display = 'flex';
                    }
                }
            }
        }

        delCartProduct();

        let allCheck = document.querySelector('#shop-checkbox-all'); // get element of checkbox all input
        let supChecks = document.querySelectorAll('.shop-checkbox-sup'); // get element of sup input checkboxs
        let delBtnMain = document.querySelector('.cart-page-footer__remove'); // get element of delete button
        let checkCl = 'shop-checkbox--checked';

        for (let supCheck of supChecks) {
            supCheck.oninput = () => {
                if (supCheck.classList.contains(checkCl)) {
                    supCheck.classList.remove(checkCl);
                    allCheck.classList.remove(checkCl);
                } else {
                    supCheck.classList.add(checkCl);
                }
            }
        }

        // auto checked all checkbox when checkbox all is clicked
        let checkAll = () => {
            if (allCheck.classList.contains(checkCl)) {
                allCheck.classList.remove(checkCl);
            } else {
                allCheck.classList.add(checkCl);
            }

            for (let supCheck of supChecks) {
                if (supCheck.classList.contains(checkCl)) {
                    supCheck.classList.remove(checkCl);
                }
                if (allCheck.classList.contains(checkCl)) {
                    supCheck.classList.add(checkCl);
                }
            }
        }

        allQntBtn.onclick = () => {
            checkAll();
        }

        allCheck.oninput = () => {
            checkAll();
        }

        let checkedItemsQnt; // save checked items quantity
        // count checked items quantity
        let countQnt = (el) => {
            checkedItemsQnt = 0;
            for (let cartEl of cartEls) {
                if (cartEl.querySelector('.shop-checkbox').classList.contains(checkCl)) {
                    checkedItemsQnt++;
                }
            }
            console.log(el)
            el.innerHTML = checkedItemsQnt;
        }

        delBtnMain.onclick = () => {
            if (allCheck.classList.contains(checkCl)) {
                removeAllParts();

                let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser").toString();
                let xmlhttp = new XMLHttpRequest();
                xmlhttp.open("POST", "DeleteProductFromCard?user=" + user);
                xmlhttp.send();
                empCart.style.display = 'flex';
                confirmCtn.style.display = 'none';
            }

            let confirmCtn = document.querySelector('.confirm-deletion-container'); // get element of deletion confirm container 
            let cfmOverlay = confirmCtn.querySelector('.confirm-deletion-overlay'); // get element of deletion confirm overlay 
            let cfmItemsQnt = confirmCtn.querySelector('.qnt'); // get element of deletion confirm items quantity
            countQnt(cfmItemsQnt);

            for (let cartEl of cartEls) {
                if (cartEl.querySelector('.shop-checkbox').classList.contains(checkCl)) {
                    confirmCtn.style.display = 'flex';
                    let cfmBackBtn = confirmCtn.querySelector('.confirm-deletion__btn--back'); // get element of confirm back button
                    let cfmAgreeBtn = confirmCtn.querySelector('.confirm-deletion__btn--agree'); // get element of confirm back agree

                    cfmBackBtn.onclick = () => {
                        confirmCtn.style.display = 'none';
                    }

                    cfmAgreeBtn.onclick = () => {
                        try {
                            let cartEls = document.querySelectorAll('.cart-item'); // get element of cart items

                            for (let cartEl of cartEls) {
                                if (cartEl.querySelector('.shop-checkbox').classList.contains(checkCl)) {

                                    cartEl.remove();
                                    let id = cartEl.querySelector(".cart-item__overview-name").getAttribute("idProduct").toString();
                                    let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser").toString();
                                    let xmlhttp = new XMLHttpRequest();
                                    xmlhttp.open("POST", "DeleteProductFromCard?user=" + user + "&id=" + id);
                                    xmlhttp.send();
                                }
                            }
                            handleAmountTotal(0);
                            if (checkLen() === 0) {
                                removeAllParts();
                                empCart.style.display = 'flex';
                            }

                            getCardsQnt();
                            confirmCtn.style.display = 'none';
                        } catch(e) {
                            confirmCtn.style.display = 'none';
                        }

                    }

                    cfmOverlay.onclick = () => {
                        confirmCtn.style.display = 'none';
                    }
                }
            }
        }
    }

    handleActions();
}

// render cart carousel items
