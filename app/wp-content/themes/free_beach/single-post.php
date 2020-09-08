<?php get_header(); ?>
<?php //the_post(); ?>
<?php
    $title = get_the_title();
    $summary = get_the_excerpt();
    $url = get_permalink();
    $image_url = get_the_post_thumbnail_url();
?>
  <div class="container">
    <div class="row news__title-row" style="margin: 36px 0 56px">
      <div class="col-12">
        <a class="btn_back" href="/">Назад</a>
      </div>
      <div class="col-12 col-lg-6 col-md-6 col-sm-12">
        <div class="news__title"><?php the_title(); ?></div>
      </div>
      <div class="col-12 col-lg-6 col-md-6 col-sm-12">
        <div class="small__title"><?php the_excerpt(); ?></div>
        <div class="news__social-hidden">
          <div class="date">24 Июля, 20:22</div>
          <div class="social__items">
            <a href="#">
              <img src="<?php echo get_template_directory_uri() . '/media/icon/face-color.svg'; ?>" alt="icon">
            </a>
            <a href="#">
              <img src="<?php echo get_template_directory_uri() . '/media/icon/twit-color.svg'; ?>" alt="icon">
            </a>
            <a href="#">
              <img src="<?php echo get_template_directory_uri() . '/media/icon/in.svg'; ?>" alt="icon">
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
    <?php if( get_field('video') === false ): ?>
      <img class="news__img" src="<?php echo get_the_post_thumbnail_url(); ?>" alt="image">
    <?php endif; ?>
    <?php if( get_field('video') === true ): ?>
        <div class="wrap">
            <div id="block">
                <div id="play" onclick="playVideo()"><img src="<?php echo get_template_directory_uri() . '/media/icon/play.svg'; ?>" alt="image"></div>
                <div  id="pause" onclick="stopVideo()"><img src="<?php echo get_template_directory_uri() . '/media/icon/pause5.svg'; ?>" alt="image"></div>
            </div>
            <div id="player"></div>
        </div>
    <?php endif; ?>
  <div class="container" style="margin-bottom: 56px;">
    <div class="row">
      <div class="col-2">
        <div class="news__social">
          <div class="date"><?php the_time('d.m.Y') ?></div>
          <div class="social__items">
            <a target="_parent"  href="http://www.facebook.com/sharer.php?s=100&p[url]=<?php echo urlencode( $url ); ?>&p[title]=<?php echo $title ?>&p[summary]=<?php echo $summary ?>&p[images][0]=<?php echo $image_url ?>" onclick="window.open(this.href, this.title, 'toolbar=0, status=0, width=548, height=325'); return false" title="Поделиться ссылкой на Фейсбук" target="_parent">
              <img src="<?php echo get_template_directory_uri() . '/media/icon/face-color.svg'; ?>" alt="icon">
            </a>
            <a href="http://twitter.com/share?text=<?php echo $title ?> &url=<?php echo urlencode( $url ) ?>" title="Поделиться ссылкой в Твиттере" onclick="window.open(this.href, this.title, 'toolbar=0, status=0, width=548, height=425'); return false" target="_parent">
              <img src="<?php echo get_template_directory_uri() . '/media/icon/twit-color.svg'; ?>" alt="icon">
            </a>
            <a href="#">
              <img src="<?php echo get_template_directory_uri() . '/media/icon/in.svg'; ?>" alt="icon">
            </a>
          </div>
        </div>
      </div>
        <?php
            add_filter( 'the_content', 'my_the_content' );

            function my_the_content( $content ) {
              return str_replace('<p', '<p class="news__par"', $content);
            }
        ?>
      <div class="col-12 col-lg-8 col-md-8 col-sm-12">
<!--         <div class="subtitle">--><?php //the_content(); ?><!--</div>-->
            <p class="news__par"><?php the_content(); ?></p>
<!--        <p class="news__par">Что же касается выступления знаменитой пилотажной группы «Стрижи», то предусмотрено две программы, но выбрана будет только одна в зависимости от погодных условий.</p>-->
<!--        <p class="news__par">- Мы покажем все, на что сегодня способна пилотажная группа. Мы будем летать по 6 самолетов в едином строю. Покажем такие фигуры, как пирамида, ромб, конверт. Также выполним вираж, который никто в мире не выполняет, кроме «Стрижей», – рассказал на пресс-конференции, посвященной празднику, ведущий пилотажной группы Сергей Осяйкин.</p>-->
<!--        <p class="news__par">При этом не будет работать обещанная детская площадка – из-за требований Роспотребнадзора, зато организуют большую зону фудкорта.</p>-->
      </div>
      <div class="col-2"></div>
      <div class="col-12"><div class="line"></div></div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="read__more-title">Вас также может заинтересовать</div>
        </div>
  </div>
      <div class="row">
        <?php
        $cur_post = $posts;
        $args = array(
          'numberposts' => 3,
          'orderby' => 'date',
          'offset'           => 1,
          'order' => 'DESC',
          'post_type' => 'post',
          'suppress_filters' => true,
        );
        $post_id = get_the_ID();
        $posts = get_posts($args);
        foreach ($posts as $post) {
          setup_postdata($post);
          $catt = get_field('catt');
          if ($catt->ID == $catt->ID and $post_id != $post->ID) {
         ?>
            <?php if( get_field('video') === false ): ?>
                  <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
                      <div class="main">
                          <img class="news-img" src="<?php echo get_the_post_thumbnail_url(); ?>"
                               alt="image">
                          <div class="news-item small-item">
                              <div class="category-name">#<?php echo $catt->post_title;?></div>
                              <a href="<?php the_permalink(); ?>" class="category-title"><?php the_title(); ?></a>
                              <div class="cat-date"><?php the_time('d.m.Y') ?></div>
                          </div>
                      </div>
                  </div>
            <?php endif; ?>

            <?php if( get_field('video') === true ): ?>
                  <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">
                      <div class="main video-wrapp">
                          <img class="news-img" src="<?php echo get_the_post_thumbnail_url(); ?>"
                               alt="image">
                          <div class="news-item">
                              <div class="category-name">#<?php echo $catt->post_title;?></div>
                              <div class="category-title"><?php the_title(); ?></div>
                              <a href="<?php the_permalink(); ?>">
                                  <img src="<?php echo get_template_directory_uri() . '/media/icon/play.svg'; ?>" alt="image">
                              </a>
                              <div class="cat-date"><?php the_time('d.m.Y') ?></div>
                          </div>
                      </div>
                  </div>
            <?php endif; ?>
          <?php
          }
        }
        wp_reset_postdata(); // сброс
        ?>
      </div>
  </div>
<?php get_footer(); ?>