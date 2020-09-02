import 'normalize.css';
import {inputForm} from "./input";


$(document).ready(() => {
    $('input').on('input', inputForm);
});

$(window).resize(function () {

});
