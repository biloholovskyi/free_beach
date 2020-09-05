<?php get_header(); ?>
<div class="container" style="border-top: 1px solid #000;">
  <div class="row">
    <div class="col-12 col-lg-9 col-md-12">
      <div class="category">
        <?php
        $args = array(
          'numberposts' => -1, // если -1 то выводит все
          'orderby' => 'date',
          'order' => 'DESC',
          'post_type' => 'category', // тип поста
          'suppress_filters' => true,
        );

        $posts = get_posts($args);

        foreach ($posts as $post) {
          setup_postdata($post);
          ?>
          <a href="<?php the_permalink(); ?>" class="category_item">#<?php the_title(); ?></a>
          <?php
        }
        wp_reset_postdata(); // сброс
        ?>
      </div>
    </div>
    <div class="col-1 d-none d-lg-block"></div>
    <div class="col-12 col-lg-2 col-md-12">
      <div class="filter">
        <h4>Дата:</h4>
        <button class="btn_filter">За все время <img src="<?php echo get_template_directory_uri() . '/media/icon/arrow.svg'; ?>"/></button>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <div class="col-12">
      <div class="category-title">
        <h1>#<?php the_title(); ?></h1>
        <div class="cat-desc">
          <p>123456 новостей</p>
          <p style="margin: 0 8px">/</p>
          <p>16 за последний месяц</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col ">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news.png'; ?>"
             alt="image">
        <div class="news-item">
          <div class="category-name">#COVID 19</div>
          <a href="/news.html" class="category-title">Праздник «Я выбираю небо-2020» в Казани 25 июля:
            программа мероприятий</a>
          <div class="cat-date">Вчера</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col ">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news1.png'; ?>"
             alt="image">
        <div class="news-item">
          <div class="category-name">#LifeStyle</div>
          <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские
            кальянщики готовятся уйти в подполье
          </div>
          <div class="cat-date">Вчера</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main video-wrapp">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news3.png'; ?>"
             alt="image">
        <div class="news-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет
            проверка
          </div>
          <a href="/video_news.html">
            <img src="<?php echo get_template_directory_uri() . '/media/icon/play.svg'; ?>" alt="image">
          </a>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news2.png'; ?>">
        <div class="news-item">
          <div class="category-name">#LifeStyle</div>
          <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские
            кальянщики готовятся уйти в подполье
          </div>
          <div class="cat-date">Вчера</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news1.png'; ?>"
             alt="image">
        <div class="news-item small-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">Кто-то хочет переименовать Баумана и сделать центр платным</div>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main video-wrapp">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news4.png'; ?>">
        <div class="news-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">1 сентября в Казани откроют новый фуд-молл</div>
          <a href="#">
            <img src="<?php echo get_template_directory_uri() . '/media/icon/play.svg'; ?>">
          </a>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news5.png'; ?>">
        <div class="news-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">В центре Казани насмерть сбили пешехода</div>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news.png'; ?>">
        <div class="news-item">
          <div class="category-name">#COVID 19</div>
          <div class="category-title">Праздник «Я выбираю небо-2020» в Казани 25 июля: программа мероприятий
          </div>
          <div class="cat-date">Вчера</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news1.png'; ?>">
        <div class="news-item">
          <div class="category-name">#LifeStyle</div>
          <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские
            кальянщики готовятся уйти в подполье
          </div>
          <div class="cat-date">Вчера</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main video-wrapp">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news3.png'; ?>">
        <div class="news-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет
            проверка
          </div>
          <a href="#">
            <img src="<?php echo get_template_directory_uri() . '/media/icon/play.svg'; ?>">
          </a>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news2.png'; ?>">
        <div class="news-item">
          <div class="category-name">#LifeStyle</div>
          <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские
            кальянщики готовятся уйти в подполье
          </div>
          <div class="cat-date">Вчера</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news1.png'; ?>">
        <div class="news-item small-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">Кто-то хочет переименовать Баумана и сделать центр платным</div>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main video-wrapp">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news4.png'; ?>">
        <div class="news-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет
            проверка
          </div>
          <a href="#">
            <img src="<?php echo get_template_directory_uri() . '/media/icon/play.svg'; ?>">
          </a>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
    <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
      <div class="main">
        <img class="news-img" src="<?php echo get_template_directory_uri() . '/media/image/news5.png'; ?>"
             alt="image">
        <div class="news-item small-item">
          <div class="category-name">#Культура</div>
          <div class="category-title">В центре Казани насмерть сбили пешехода</div>
          <div class="cat-date">12 часов назад</div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-12">
      <div class="btn-wrapp">
        <button class="more">Больше новостей</button>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <div class="col-12 col-lg-6 col-md-6 col-sm-12">
      <p class="form_title">Есть вопросы или<br>предложения?<br>
        <span>Свяжитесь с нами</span></p>
    </div>
    <div class="col-12 col-lg-6 col-md-6 col-sm-12">
      <form class="main_form">
        <div class="double">
          <div class="subscribe__form input-wrapper">
            <div class="placeholder">Имя</div>
            <input type="text" />
          </div>
          <div class="subscribe__form input-wrapper">
            <div class="placeholder">Почта или телефон</div>
            <input  type="text" />
          </div>
        </div>
        <div class="subscribe__form input-wrapper textarea">
          <div class="placeholder textPlacehold">Коментарий</div>
          <textarea maxlength="380"></textarea>
        </div>
        <div style="margin-bottom: 32px" class="g-recaptcha"
             data-sitekey="6LdzuccZAAAAAFPZg0YB4_WOxOoX5aSFHs7SKw-a"></div>
        <input class="form_btn" type="submit" value="Отправить"/>
      </form>
    </div>
  </div>
</div>
<?php get_footer(); ?>


