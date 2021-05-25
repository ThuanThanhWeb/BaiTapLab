function Validator(form, num) {

    let formEl = document.querySelector(form); // get element of form

    let childFormEls = formEl.querySelectorAll('.auth-form__group'); // get elements of child form
    let flag = true;

    // let inpEls = formEl.querySelectorAll('input[rules]'); // get elements of input whose attribute is rule

    function check() {
        for (let childFormEl of childFormEls) {
            let inpEl = childFormEl.querySelector('.auth-form__input');
            let spanEl = childFormEl.querySelector('.form-message');

            inpEl.onblur = () => {
                if (inpEl.value) {

                    ruleChecking(childFormEl);

                } else {
                    spanEl.innerHTML = "Vui lòng nhập trường này";
                    flag = false;
                }
            }

            inpEl.oninput = () => {
                spanEl.innerHTML = "";
            }
        }

    }

    check();

    function check1() {
        for (let childFormEl of childFormEls) {
            let inpEl = childFormEl.querySelector('.auth-form__input');
            let spanEl = childFormEl.querySelector('.form-message');
            if (!inpEl.value) {
                spanEl.innerHTML = "Vui lòng nhập trường này";
                flag = false;
            }
        }
    }




    function ruleChecking(childFormEl) {

        let inpEl = childFormEl.querySelector('.auth-form__input');
        let spanEl = childFormEl.querySelector('.form-message');
        let inpAttr = inpEl.getAttribute('rules'); // get attribute value of input
        let inVa = inpEl.value;

        if (inpAttr === 'number') {
            var regex = /^[0-9]+$/;
            if (!regex.test(inVa)) {
                spanEl.innerHTML = "Vui lòng nhập số";
                flag = false;
            }
        }
    }

    function btncheck() {
        let btn = formEl.querySelector('.auth-form__controls-add');

        btn.onclick = () => {

            flag = true;
            check();
            check1()

            if (flag) {
                if (form === "#add-form") {

                    let user = document.querySelector(".header__navbar-user-name").getAttribute("iduser");
                    let name = document.getElementById('name').value.toString();
                    let category = document.getElementById('category').value.toString();
                    let qnt = document.getElementById('qnt').value.toString();
                    let material = document.getElementById('material').value.toString();
                    let img = document.getElementById('img').value.toString();
                    let oldPrice = document.getElementById('oldPrice').value.toString();
                    let newPrice = document.getElementById('newPrice').value.toString();
                    let address = document.getElementById('address').value.toString();
                    let describe = document.getElementById('describe').value.toString();


                    let xmlhttp = new XMLHttpRequest();

                    xmlhttp.open("POST", "AddProductByUser?user=" + user + "&name=" + name + "&type=" + category + "&available=" + qnt + "&material=" + material +
                            "&image=" + img + "&oldPrice=" + oldPrice + "&curPrice=" + newPrice + "&from=" + address + "&description=" + describe, false);
                    xmlhttp.send();

                    let modalLayer = document.querySelector('.modal');
                    modalLayer.style.display = 'none';
                    CallBack();

                } else {
      
                    let name = document.getElementById('name-e').value.toString();
                    let category = document.getElementById('category-e').value.toString();
                    let qnt = document.getElementById('qnt-e').value.toString();
                    let material = document.getElementById('material-e').value.toString();
                    let img = document.getElementById('img-e').value.toString();
                    let oldPrice = document.getElementById('oldPrice-e').value.toString();
                    let newPrice = document.getElementById('newPrice-e').value.toString();
                    let address = document.getElementById('address-e').value.toString();
                    let describe = document.getElementById('describe-e').value.toString();
                    let id = showID();
                    
                    let xmlhttp = new XMLHttpRequest();
                    
                    xmlhttp.open("POST", "EditProductByUser?id=" + id + "&name=" + name + "&type=" + category + "&available=" + qnt + "&material=" + material +
                            "&image=" + img + "&oldPrice=" + oldPrice + "&curPrice=" + newPrice + "&from=" + address + "&description=" + describe, false);
                    xmlhttp.send();

                    let modalLayer = document.querySelector('.modal');
                    modalLayer.style.display = 'none';
                    CallBack();
                }

            } else {

            }



        }

    }

    btncheck();
}