
let pageProducts;
let searchInput = document.querySelector('.header__search-input');
let searchBtn = document.querySelector('.header__search-btn');

searchBtn.onclick = (e) => {
    e.preventDefault();
    var data = searchInput.value;

    if (data) {    
        searchProduct(data);
        cookie(data);
    } else {
        allProduct();
    }
}

function searchProduct(data) {
//    alert("search đc");
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            pageProducts = JSON.parse(this.responseText);
        }
    };
    xmlhttp.open("POST", "JsonSearch?dataSearch="+ data.toString(), false);
    xmlhttp.send();
    renderPageProducts();
}

function allProduct() {
//    alert("gaaaaaaaaa");
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            pageProducts = JSON.parse(this.responseText);
        }
    };
    xmlhttp.open("POST", "ShowJson", false);
    xmlhttp.send();
    renderPageProducts();
}
allProduct();


// handle and render products
function renderPageProducts() {
    let productElsCtn = document.querySelector('.home-product .row'); // get element of product container
    let productEls = ''; // save page product elements

    for (let pageProduct of pageProducts) {
        productEls +=
                `<div class="col l-2-4 m-4 c-6">
            <a href="detail?pid=${pageProduct.id}" id="${pageProduct.id}" class="home-product-item">
                <img src=" ${pageProduct.img}" class="home-product-item__img">
                <div class="home-product-item__name"> ${pageProduct.name} </div>
                <div class="home-product-item__price">
                    <span class="home-product-item__price-old"> ${numberWithCommas(pageProduct.oldPrice)}đ </span>
                    <span class="home-product-item__price-current"> ${numberWithCommas(pageProduct.curPrice)}đ </span>
                </div>
                <div class="home-product-item__action">
                    <div class="home-product-item__rating">
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="home-product-item__star--gold fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <span class="home-product-item__sold"> ${pageProduct.sold + ' đã bán'} </span>
                </div>
                <div class="product-favourite">
                    <i class="fas fa-check"></i>
                    <span> ${pageProduct.react} </span>
                </div>
                <div class="product-sale-off">
                    <span class="product-sale-off__percent"> ${pageProduct.per}% </span>
                    <span class="product-sale-off__label"> ${pageProduct.label} </span>
                </div>
            </a>
        </div>`
    }

    if (productElsCtn) {
        productElsCtn.innerHTML = productEls;
    }
}

//renderPageProducts();

// sort price
function sortPrice() {
    let firstSelection = document.querySelector('.select-input__list > li:first-child'); // get the element of the low to high sort button 
    let lastSelection = document.querySelector('.select-input__list > li:last-child'); // get the element of the high to low sort button

    // Sort from low to high
    if (firstSelection) {
        firstSelection.onclick = () => {
           
                    pageProducts.sort((a, b) => {
                        a = a.curPrice;
                        b = b.curPrice;
                        return a - b;
                    })
                    renderPageProducts(pageProducts);
                }
            }
            
        
    
    // Sort from high to low
    if (lastSelection) {
        lastSelection.onclick = () => {
            
                    pageProducts.sort((a, b) => {
                        a = a.curPrice;
                        b = b.curPrice;
                        return b - a;
                    })
                    renderPageProducts(pageProducts)
                }
            }
            
        
    
}

sortPrice();

// sort products
// sort products
function sortProducts() {
    let btnClassList = document.getElementsByClassName('home-filter__btn'); // get button class list
    let cmBtn = btnClassList[0]; // get element of the common button
    let newBtn = btnClassList[1]; // get element of the newest button
    let sellBtn = btnClassList[2]; // get element of best-selling button

    // remove background class of button
    function removeBgrClass() {
        for (let el of btnClassList) {
            el.classList.remove('btn--primary');
        }
    }

    if (cmBtn) {
        cmBtn.onclick = () => {
            removeBgrClass();
            cmBtn.classList.add('btn--primary');
            pageProducts.sort((a, b) => {
                return b.per - a.per;
            })
            renderPageProducts(pageProducts);
        }
    }

    if (newBtn) {
        newBtn.onclick = () => {
            removeBgrClass();
            newBtn.classList.add('btn--primary');
            pageProducts.sort((a, b) => {
                return b.id - a.id;
            })
            renderPageProducts(pageProducts);
        }
    }

    if (sellBtn) {
        sellBtn.onclick = () => {
            removeBgrClass();
            sellBtn.classList.add('btn--primary');
            pageProducts.sort((a, b) => {
                return b.sold - a.sold;
            })
            renderPageProducts(pageProducts);
        }
    }
}

sortProducts();


// CATEGORY ITEMS
// handle and render category items
function renderCgrItems() {
    const cgrItems = [
        {
            name: 'Sản phẩm',
            link: '#',
            active: true
        },
        {
            name: 'Deal hot',
            link: '#',
            active: false
        },
        {
            name: 'Top bán chạy',
            link: '#',
            active: false
        },
        {
            name: 'Hàng mới',
            link: '#',
            active: false
        },
        {
            name: 'Sản phẩm Hot',
            link: '#',
            active: false
        },
        {
            name: 'Giày Nike',
            link: '#',
            active: false
        },
        {
            name: 'Giày Converse',
            link: '#',
            active: false
        },
        {
            name: 'Giày Adidas',
            link: '#',
            active: false
        },
        {
            name: 'Giày Puma',
            link: '#',
            active: false
        },
        {
            name: 'Giày Balenciaga',
            link: '#',
            active: false
        }
    ] // save category items info

    let cgrElsCtn = document.querySelector('.category-pc .category-list'); // get element of category list
    let cgrEls = ''; // save category items

    for (let cgrItem of cgrItems) {
        if (cgrItem.active === true) {
            cgrEls +=
                    `<li class="category-item category-item--active">
                    <div class="category-item__icon">
                        <i class="fas fa-caret-right"></i>
                    </div>
                    <a href="${cgrItem.link}" class="category-item__link">${cgrItem.name}</a>
                </li>`
        } else {
            cgrEls +=
                    `<li class="category-item">
                    <div class="category-item__icon">
                        <i class="fas fa-caret-right"></i>
                    </div>
                    <a href="${cgrItem.link}" class="category-item__link">${cgrItem.name}</a>
                </li>`
        }
    }

    cgrElsCtn.innerHTML = cgrEls;
}

renderCgrItems();

// handle event when the user hovers the category item
function hoverCategoryItems() {
    let cgrElIdx = -1; // initialize the ordinal numbers of category items
    let actEl = 'category-item--active'; // set active property of item

    let cgrPC_Ctn = document.querySelector('.category-pc > .category'); // get element of category container on PC
    let cgrElsCtn = cgrPC_Ctn.querySelector('.category-list'); // get element of category list
    let cgrEls = cgrElsCtn.querySelectorAll('.category-item'); // get element of category items

    // remove active property of item 
    let removeColor = () => {
        for (let cgrEl of cgrEls) {
            if (cgrEl.classList.contains(actEl)) {
                cgrEl.classList.remove(actEl);
            }
        }
    }

    // handle hover
    for (let cgrEl of cgrEls) {
        cgrEl.onmouseover = () => {
            removeColor();
            cgrEl.classList.add(actEl);
        }
    }

    // loop through all items until reach the active item
    for (let cgrEl of cgrEls) {
        cgrElIdx++;
        if (cgrEl.classList.contains(actEl)) {
            break;
        }
    }

    // when hovering out container will reset the original active state
    cgrElsCtn.onmouseleave = () => {
        let cgrActChild = cgrElsCtn.children[cgrElIdx]; // get element of original active item

        removeColor();
        cgrActChild.classList.add(actEl);
    }
}

hoverCategoryItems();