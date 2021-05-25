// render cart products

let cartProductsInfo;
function CallbackCartAmount() {
    let xmlhttp = new XMLHttpRequest();
    let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser");
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            cartProductsInfo = JSON.parse(this.responseText);

            renderCartProductsList();

        }
    };
    xmlhttp.open("POST", "JsonCartProductByUser?user="+user, false);
    xmlhttp.send();
}
CallbackCartAmount();


function renderCartProductsList() {
    // save cart products info
    let cartProductsList = document.querySelector('.header__cart-list-item'); // 
    let qntProductsList = document.querySelector('.header__cart-wrap-notice');
    let imgNoProduct = document.querySelector('.header__cart-no-card-img');
    let messNoproduct = document.querySelector('.header__cart-list-no-card-msg');
    let messProduct = document.querySelector('.header__cart-heading');
    let listProduct = document.querySelector('.header__cart-list-item');
    let btnProduct = document.querySelector('.header__cart-view-cart');
    


    let cartProductEl = ''; // save cart product elements

    if (cartProductsInfo.length > 0) {
        btnProduct.style.display = 'block';
        messProduct.style.display = 'block';
        listProduct.style.display = 'block';
        imgNoProduct.style.display = 'none';
        messNoproduct.style.display = 'none';

        for (let cartProductInfo of cartProductsInfo) {
            cartProductEl +=
                    `
            <li title="Mũ chụp ngược Minecraft Dungeons" class="header__cart-item">
                <div class="header__cart-img-wrapper">
                    <img src="${cartProductInfo.image}" class="header__cart-img">
                </div>
                <div class="header__cart-item-info">
                    <div class="header__cart-item-head">
                        <div class="header__cart-item-name">${cartProductInfo.name}
                        </div>
                        <div class="header__cart-item-price-wrap">
                            <span class="header__cart-item-price">${cartProductInfo.curPrice}đ</span>
                            <span class="header__cart-item-multiply">x</span>
                            <span class="header__cart-item-qnt">${cartProductInfo.soLuong}</span>
                        </div>
                    </div>
                    <div class="header__cart-item-body">
                        <span class="header__cart-item-description">
                            Phân loại: ${cartProductInfo.type}
                        </span>
                    </div>
                </div>
            </li>
        `
        }
        cartProductsList.innerHTML = cartProductEl;
        qntProductsList.innerHTML = cartProductsInfo.length;
    } else {
        
        qntProductsList.innerHTML = 0;
        btnProduct.style.display = 'none';
        messProduct.style.display = 'none';
        listProduct.style.display = 'none';
        imgNoProduct.style.display = 'block';
        messNoproduct.style.display = 'block';



    }
}

//renderCartProductsList();