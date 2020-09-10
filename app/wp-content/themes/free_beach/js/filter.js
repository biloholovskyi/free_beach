// const select = document.querySelector('.btn_filter');
//
// select.addEventListener('change', function() {
//   filterByDate(select.value);
// });
// filterByDate(select.value);
//
// function filterByDate(month) {
//   const valMonth = +month;
//   const items = document.querySelectorAll('.main');
//   [...items].forEach((el) => {
//     const attr = el.querySelector('.cat-date').getAttribute('datetime');
//     const date = new Date(attr);
//     if (date.getMonth() === valMonth) {
//       el.classList.remove('hidden');
//     } else {
//       el.classList.add('hidden');
//     }
//   });
// }