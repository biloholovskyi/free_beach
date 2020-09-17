class Support {
  input () {
    const price = document.getElementById('custom-price').value;
    const link = document.getElementById('custom-price-link');
    const href = 'https://money.yandex.ru/to/4100115795395476/' + price;
    link.setAttribute('href', href);
  }
}

export default Support;