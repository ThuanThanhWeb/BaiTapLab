// show products through slide card
function slideInfoCard() {
    let cardsCtn = document.querySelector('.product__cards-container'); // get element of cards container
    let cards = document.querySelectorAll('.product__card-wrapper'); // get element of cards
    let prevBtn = document.querySelector('.product__cards-btn--prev'); // get element of prev button
    let nextBtn = document.querySelector('.product__cards-btn--next'); // get element of next  button

    let counter = 0; // initialize counter increases with number of items from 5 onwards
    let cardSize = cards[0].offsetWidth; // get size of card

    // hide or show buttons
    let hideOrShow = {
        hide: (el) => {
            el.style.display = 'none';
        },
        show: (el) => {
            el.style.display = 'block';
        }
    }

    hideOrShow.hide(nextBtn);
    hideOrShow.hide(prevBtn);

    // if the total number of products is greater than 5, the next button will appear
    if (cards.length > 5) {
        hideOrShow.show(nextBtn);

        nextBtn.onclick = () => {
            hideOrShow.show(prevBtn);

            counter++;
            cardsCtn.style.transform = `translateX(${-counter * cardSize}px)`;
            if (counter === cards.length - 5)
                hideOrShow.hide(nextBtn);
        }
    }

    prevBtn.onclick = () => {
        counter--;
        cardsCtn.style.transform = `translateX(${-counter * cardSize}px)`;

        if (counter === 0) {
            hideOrShow.hide(prevBtn);
            if (cards.length > 5)
                hideOrShow.show(nextBtn);
        }
    }
}

slideInfoCard();

// change background image when mouseover
function changeSlideThumb() {
    let thumbCnt = document.querySelector('.product-slide'); // get element of thumbnail container
    let bgrThumb = thumbCnt.querySelector('.product__img'); // get element of slide background thumbnail
    let thumbs = thumbCnt.querySelectorAll('.product__card-img'); // get element of slide thumbnails

    for (let thumb of thumbs) {
        thumb.onmouseover = () => {
            for (let thumb of thumbs) {
                (thumb.parentElement).style.border = '2px solid transparent';
            }

            (thumb.parentElement).style.border = '2px solid var(--var-color)';
            bgrThumb.style.opacity = '1';
            bgrThumb.setAttribute('src', thumb.getAttribute('src'));
        }
    }
}

changeSlideThumb();



// render options items info and handle event when add to cart button is clicked
function renderOptionsInfo() {

    let addToCartBtn = document.querySelector('.product-btn-main__adding'); // get element of add to cart button
    let toastOverlay = document.querySelector('.action-toast'); // get element of toast overlay
    let toastCtn = document.querySelector('.action-toast > .action-toast-container'); // get element of toast container

    let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser").toString();
    if (user != null) {
        addToCartBtn.onclick = () => {

            let id = document.querySelector(".product-content-name").getAttribute("idproduct").toString();
            let qnt = document.querySelector(".shop__qnt-input").getAttribute("value").toString();

            let xmlhttp = new XMLHttpRequest();
            
            xmlhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    CallbackCartAmount();
                }
            };
            
            xmlhttp.open("POST", "AddProductToCart?user=" + user + "&id=" + id + "&qnt=" + qnt, false);


            xmlhttp.send();

            toastOverlay.style.display = 'flex';
            setTimeout(() => {
                toastCtn.classList.add('action-toast-container-show');
            });

            setTimeout(() => {
                toastCtn.classList.remove('action-toast-container-show');
            }, 2000);
            setTimeout(() => {
                toastOverlay.style.display = 'none';
            }, 2150);
            
        }
    }
}

renderOptionsInfo();

// handle add product quanity
let inpCtn = document.querySelector('.shop__qnt-btns'); // get element of input container
let qntProduct = document.querySelector('.product__qnt-note-num').getAttribute("avai");
addProductQnt(inpCtn, qntProduct);


