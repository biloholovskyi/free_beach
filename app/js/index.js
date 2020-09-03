import 'normalize.css';
import {inputForm} from "./input";
import  scrolled from "./scrolled";


$(document).ready(() => {
    $('input, textarea').on('input', inputForm);
});

$(window).resize(function () {

});