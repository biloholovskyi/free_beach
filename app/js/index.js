import 'normalize.css';
import {inputForm} from "./input";
import "./scrolled";



$(document).ready(() => {
    $('input, textarea').on('input', inputForm);

    $('.btn_filter').on('click', function (){
        $(this).children('img').toggleClass('active');
    })
});

$(window).resize(function () {

});


