class Filter {
  addFilter (e) {
    const slug = e.currentTarget.innerHTML;

    document.querySelector('.btn_filter span').innerHTML = slug;

    // current date
    const date = new Date();
    const year = date.getFullYear();
    let month = date.getMonth() + 1;
    let day = date.getDate();

    if(day < 10) {day = `0${day}`}
    if(month < 10) {month = `0${month}`}

    // get all posts
    const articles = document.querySelectorAll('.news_col');
    switch (slug) {
      case 'За все время':
        this.all(articles);
        break
      case 'За сегодня':
        this.today(articles, year, month, day);
        break
      case 'За неделю':
        this.week(articles, year, month, day);
        break
      case 'За месяц':
        this.month(articles, year, month, day);
        break
      default:
        this.year(articles, slug);
        break
    }
  }

  all (articles) {
    articles.forEach(art => {
      art.classList.remove('filter_hidden');
    });
  }

  today (articles, year, month, day) {
    articles.forEach(art => {
      const artDate = art.querySelector('.cat-date').innerHTML;
      if(artDate !== `${day}.${month}.${year}`) {
        art.classList.add('filter_hidden');
      } else {
        art.classList.remove('filter_hidden');
      }
    });
  }

  week (articles, year, month, day) {
    const weekTime =  new Date(year, month - 1, day).getTime() - (7 * 24 * 60 * 60 * 1000);

    articles.forEach(art => {
      const artDateString = art.querySelector('.cat-date').innerHTML.split('.');
      const artDate = new Date(+artDateString[2], +artDateString[1] - 1, +artDateString[0]);
      const artTime = artDate.getTime();
      if(artTime < weekTime) {
        art.classList.add('filter_hidden');
      } else {
        art.classList.remove('filter_hidden');
      }
    })
  }

  month (articles, year, month, day) {
    const weekTime =  new Date(year, month - 1, day).getTime() - (30 * 24 * 60 * 60 * 1000);

    articles.forEach(art => {
      const artDateString = art.querySelector('.cat-date').innerHTML.split('.');
      const artDate = new Date(+artDateString[2], +artDateString[1] - 1, +artDateString[0]);
      const artTime = artDate.getTime();
      if(artTime < weekTime) {
        art.classList.add('filter_hidden');
      } else {
        art.classList.remove('filter_hidden');
      }
    })
  }

  year (articles, year) {
    articles.forEach(art => {
      const artDate = art.querySelector('.cat-date').innerHTML.split('.')[2];
      if(artDate.toString() !== year.toString()) {
        art.classList.add('filter_hidden');
      } else {
        art.classList.remove('filter_hidden');
      }
    });
  }

  getYears () {
    const articles = document.querySelectorAll('.news_col');

    if(!document.querySelector('.filter_col')) {
      return
    }

    let years = [];
    articles.forEach(art => {
      const year = art.querySelector('.cat-date').innerHTML.split('.')[2];
      if(!years.includes(year)) {
        years.push(year);
        const div = document.createElement('div');
        div.className = 'filter__item';
        div.innerHTML = year;
        document.querySelector('.filter .filter__list').append(div)
      }
    })
  }
}

export default  Filter;