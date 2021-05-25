let idproduct123;
function showID(){
    return idproduct123;
}
function CallBack() {
    
    let cartProductsInfos;
    let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser");
    let xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            cartProductsInfos = JSON.parse(this.responseText);

            renderCartProducts();

        }
    };
    xmlhttp.open("POST", "JsonMangeProduct?user="+user, false);
    xmlhttp.send();


    function renderCartProducts() {

        // save cart products info
        let cartProductsCtn = document.querySelector('.cart-item-container'); // get element of cart products container
        let cartProductsCtnMob = document.querySelector('.cart-item-container-mobile'); // get element of mobile cart products container
        let qntProductOfCart = document.querySelector('.confirm-deletion-qnt');
        let cartProductEl = ''; // save cart product elements

        if (window.matchMedia("(min-width: 1024px)").matches) {
            for (let cartProductInfo of cartProductsInfos) {
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
                <div class="cart-item__variation-model">${cartProductInfo.type}</div>
            </div>

            <div class="cart-item__price">
                <div class="cart-item__price-current">₫${numberWithCommas(cartProductInfo.curPrice)}</div>
            </div>

            <div class="shop__qnt-btns">
                <input class="shop__qnt-input" type="text" value="${cartProductInfo.soLuong}" readonly></input>
            </div>

   
            <div class="cart-item__actions">
                <div class="cart-item__action-remove">Xóa</div>
                <div class="cart-item__action-search">
                  Chỉnh sửa
                </div>
            </div>
        </div>
    `
            }
            cartProductsCtn.innerHTML = cartProductEl;
            qntProductOfCart.innerHTML = cartProductsInfos.length;
        } else {
            for (let cartProductInfo of cartProductsInfos) {
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
                <a href="#" class="cart-item__overview-name" idProduct=${cartProductInfo.id}>${cartProductInfo.name}</a>
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
                  
                    <input class="shop__qnt-input" type="text" value="${cartProductInfo.soLuong}"></input>
               
                </div>

                <div class="cart-item__price-total hide-on-mobile-tablet">₫${numberWithCommas(cartProductInfo.curPrice)}</div>

                <div class="cart-item__actions hide-on-mobile-tablet">
                    <button class="cart-item__action-remove">Xóa</button>
                    <button class="cart-item__action-search">
                        <span class="cart-item__action-search-title">chinh sua</span>
                        <i class="cart-item__action-search-icon fas fa-sort-down"></i>
                    </button>
                </div>
            </div>
        </div>
    `
            }
            cartProductsCtn.innerHTML = cartProductEl;
            qntProductOfCart.innerHTML = cartProductsInfos.length;
        }
    }

//    renderCartProducts();

// render toast message when voucher save button is clicked
    let cartVouSaveBtn = document.querySelectorAll('.cart-voucher__btn-save'); // get element of cart voucher save button
    sildeToastMsg(cartVouSaveBtn);





    let proHeaderCtn = document.querySelector('.cart-page-product-header'); // get element of cart product header container
    let proBodyCtn = document.querySelector('.cart-page-shop-container'); // get element of cart product body container
    let profooterCtn = document.querySelector('.cart-page-footer'); // get element of cart product footer container
    let empCart = document.querySelector('.empty-cart'); // get element of empty cart

// remove all parts when cart is empty
    let removeAllParts = () => {
        proHeaderCtn.style.display = 'none';
        proBodyCtn.style.display = 'none';
        profooterCtn.style.display = 'none';
        empCart.style.display = 'flex';

    }

    function showAllParts() {
        proHeaderCtn.style.display = 'flex';
        proBodyCtn.style.display = 'block';
        profooterCtn.style.display = 'flex';
        empCart.style.display = 'none';

    }

    if (cartProductsInfos) {
        showAllParts();
    }

// handle add products quanity
    let cartProductsCtn = document.querySelector('.cart-item-container'); // get element of cart items container
    let cartEls = cartProductsCtn.querySelectorAll('.cart-item'); // get element of cart items
    for (let cartEl of cartEls) {
        cartQntAndPrice(cartEl);
    }


// plus product quantity to input
    function cartQntAndPrice(el) {

        let cartEls = document.querySelectorAll('.cart-item'); // get element of cart items


        let itemsQnt = document.querySelector('.cart-page-footer__summary-total-text .qnt'); // get element of current cart items quanity
        let allQntBtn = document.querySelector('.cart-page-footer__select-all'); // get element of cart sellect all quanity button
        let allQnt = allQntBtn.querySelector('.qnt'); // get element of cart sellect all quanity


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
                    // handleAmountTotal(0);
                }
            }
        }

        let handleActions = () => {

            // check cart items length
            let checkLen = () => {
                return document.querySelectorAll('.cart-item').length; // get element of cart items length
            }
            // xóa 1 sản phẩm
            let delCartProduct = () => {
                let cartEls = document.querySelectorAll('.cart-item'); // get element of carts

                for (let cartEl of cartEls) {
                    let delBtn = cartEl.querySelector('.cart-item__action-remove'); // get element of cart delete button

                    delBtn.onclick = () => {
                        let id = cartEl.querySelector(".cart-item__overview-name").getAttribute("idProduct").toString();
                        
                        
                        
                        cartEl.remove();

                        
                        
                        let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser").toString();
                        let xmlhttp = new XMLHttpRequest();
                        xmlhttp.open("POST", "DeleteProductByUser?user=" + user + "&id=" + id);
                        xmlhttp.send();

                        if (checkLen() === 0) {
                            removeAllParts();

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

                // if (allCheck.classList.contains(checkCl)) {
                //     removeAllParts();
                //     empCart.style.display = 'flex';
                //     confirmCtn.style.display = 'none';
                // }

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
                                        xmlhttp.open("POST", "DeleteProductByUser?user=" + user + "&id=" + id);
                                        xmlhttp.send();
                                    }
                                }

                                if (checkLen() === 0) {
                                    removeAllParts();

                                }

                                confirmCtn.style.display = 'none';
                            } catch (e) {
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



// Modal cart-suggestion-txt
    function editProduct() {

        let addForm = document.getElementById('add-form'); // get element of register item
        let editForm = document.getElementById('edit-form'); // get element of register item
        let modalLayer = document.querySelector('.modal'); // get element of modal layer
        let addBtn = document.querySelector('.cart-suggestion');




        // add prouct
        addBtn.onclick = () => {
            modalLayer.style.display = 'flex';
            addForm.style.display = 'block';
            editForm.style.display = 'none';
        }


        for (let cartEl of cartEls) {
            showEdit(cartEl);
        }

        function showEdit(el) {
            let clickEdit = el.querySelector('.cart-item__action-search');
            clickEdit.onclick = () => {

                modalLayer.style.display = 'flex';
                addForm.style.display = 'none';
                editForm.style.display = 'block';

                
                let id = el.querySelector(".cart-item__overview-name").getAttribute("idProduct").toString();
                idproduct123 = id;

                let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser").toString();
                let xmlhttp = new XMLHttpRequest();

                xmlhttp.onreadystatechange = function () {

                    if (this.readyState == 4 && this.status == 200) {

                        infoProduct = JSON.parse(this.responseText);

                        document.getElementById('name-e').value = infoProduct.name;
                        document.getElementById('category-e').value = infoProduct.type;
                        document.getElementById('qnt-e').value = infoProduct.available;
                        document.getElementById('material-e').value = infoProduct.material;
                        document.getElementById('img-e').value = infoProduct.img;
                        document.getElementById('oldPrice-e').value = infoProduct.oldPrice;
                        document.getElementById('newPrice-e').value = infoProduct.curPrice;
                        document.getElementById('address-e').value = infoProduct.from;
                        document.getElementById('describe-e').value = infoProduct.description;
                    }
                };

                xmlhttp.open("POST", "JsonEditProductByUser?user=" + user + "&id=" + id, false);
                xmlhttp.send();
            }
        }

        // back modal
        document.querySelector('.modal__overlay').onclick = () => {
            modalLayer.style.display = 'none';
        }

        let backAddForm = addForm.querySelector('.auth-form__controls-back');
        backAddForm.onclick = () => {
            modalLayer.style.display = 'none';
        }

        let backEditForm = editForm.querySelector('.auth-form__controls-back');
        backEditForm.onclick = () => {
            modalLayer.style.display = 'none';
        }
    }

    editProduct();

}
CallBack();
//let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser");


