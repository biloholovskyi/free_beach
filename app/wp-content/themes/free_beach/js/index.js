import 'normalize.css';
import {inputForm} from "./input";
import "./scrolled";
import  "./form";



$(document).ready(() => {
    $('input, textarea').on('input', inputForm);


    $('.btn_filter').on('click', function (){
        $(this).children('img').toggleClass('active');
        $(this).parent('.filter').children('.filter__list').toggleClass('active');
    })

    $('.burger').on('click', function (){
        $(this).hide();
        $('.close').css('display', 'block');
        $('.header_mobile').toggleClass('active');
    });

    $('.close').on('click', function (){
        $(this).hide();
        $('.burger').css('display', 'block');
        $('.header_mobile').toggleClass('active');
    });
});
$(window).resize(function () {

});


$(document).mouseup(function (e){
    let div = $('.btn_filter, .filter__list,.btn_filter img ');
    if(!div.is(e.target) && div.has(e.target).length === 0) {
        div.removeClass('active');
    }
});

