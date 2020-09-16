import 'normalize.css';
import {inputForm} from "./input";
import "./scrolled";
import "./form";
import Filter from './filter'
//
const filter = new Filter();

$(document).ready(() => {

  $('input, textarea').on('input', inputForm);

  $('.btn_filter').on('click', function () {
    $(this).children('img').toggleClass('active');
    $(this).parent('.filter').children('.filter__list').toggleClass('active');
  })

  document.querySelectorAll('.filter .filter__list .filter__item').forEach(item => {
    item.addEventListener('click', (e) => filter.addFilter(e));
  })

  // open burger menu
  $('.burger').on('click', function () {
    $(this).hide();
    $('.close').css('display', 'block');
    $('.header_mobile').toggleClass('active');
  });

  $('.close').on('click', function () {
    $(this).hide();
    $('.burger').css('display', 'block');
    $('.header_mobile').toggleClass('active');
  });
  // end burger menu

  $('.more').on('click', function (){
    $(this).hide();
    $('.news_visible').addClass('active');
  });

  // open modal for support project
  $('.support_project').on('click', function (){
      $('.support_modal--overlay').css('display', 'flex');
      $('body').addClass('active');
  });

  $('.support-close').on('click', function (){
    $('.support_modal--overlay').css('display', 'none');
    $('body').removeClass('active');
  });
//end support modal

});
$(window).resize(function () {

});

$(document).mouseup(function (e) {
  let div = $('.btn_filter, .filter__list,.btn_filter img ');
  if (!div.is(e.target) && div.has(e.target).length === 0) {
    div.removeClass('active');
  }
});

$(document).on('click', function (e) {
  let modal = $('.support_modal');
  let btn = $('.support_project');

  if (!btn.is(e.target) && btn.has(e.target).length === 0) {
    if (!modal.is(e.target) && modal.has(e.target).length === 0) {
      $('.support_modal--overlay').css('display', 'none');
      $('body').removeClass('active');
    }
  }
});
