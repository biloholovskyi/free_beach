<?php
/*
Template Name: Home
*/
?>
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
                  <a href="<?php the_permalink(); ?>" id="<?php the_ID(); ?>"
                  class="category_item">#<?php the_title(); ?></a>
                <?php
              }
              wp_reset_postdata(); // сброс
              ?>
<!--              --><?php
//              $categories = get_categories([
//                'taxonomy' => 'category',
//                'type' => 'post',
//                'child_of' => 0,
//                'parent' => '',
//                'orderby' => 'name',
//                'order' => 'ASC',
//                'hide_empty' => 1,
//                'hierarchical' => 1,
//                'exclude' => '1',
//                'include' => '',
//                'number' => 0,
//                'pad_counts' => false,
//              ]);
//
//              if ($categories) {
//                foreach ($categories as $cat) {
//                  ?>
<!--                    <a href="--><?php //the_permalink(); ?><!--" id="--><?php //echo $cat->slug; ?><!--"-->
<!--                       class="category_item">#--><?php //echo $cat->name; ?><!--</a>-->
<!--                  --><?php
//                }
//              }
//              ?>
            </div>
        </div>
        <div class="col-1 d-none d-lg-block"></div>
        <div class="col-12 col-lg-2 col-md-12 filter_col">
            <div class="filter">
                <h4>Дата:</h4>
                <button class="btn_filter">За все время<img src="<?php echo get_template_directory_uri() . '/media/icon/arrow.svg'; ?>" alt="image"/></button>
                <div class="filter__list">
                    <div class="filter__item">За все время</div>
                    <div class="filter__item">За сегодня</div>
                    <div class="filter__item">За неделю</div>
                    <div class="filter__item">За месяц</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
      <?php
      $cur_post = $posts;
      $args = array(
        'numberposts' => -1,
        'orderby' => 'date',
        'offset'           => 1,
        'order' => 'DESC',
        'post_type' => 'post',
        'suppress_filters' => true,
      );

      $posts = get_posts($args);
      $post_count = 0;
      foreach ($posts as $post) {
        setup_postdata($post);
        $post_count++;
        $catt = get_field('catt');
        if ($post_count === 1) {
          ?>
        <!-- check if the news will have a video -->
          <?php if( get_field('video') === false ): ?>
                <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col">
                    <div class="main">
                        <img class="news-img" src="<?php echo get_the_post_thumbnail_url(); ?>"
                             alt="image">
                        <div class="news-item small-item">
                            <div class="category-name">#<?php echo $catt->post_title;?></div>
                            <a href="<?php the_permalink(); ?> class="category-title" ><?php the_title(); ?></a>
                            <div class="cat-date"><?php the_time('d.m.Y') ?></div>
                        </div>
                    </div>
                </div>
          <?php endif; ?>

          <?php if( get_field('video') === true ): ?>
                <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col">
                        <div class="main video-wrapp">
                            <img class="news-img" src="<?php echo get_the_post_thumbnail_url(); ?>"
                                 alt="image">
                            <div class="news-item">
                                <div class="category-name">#<?php echo $catt->post_title; ?></div>
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
        } elseif($post_count === 2) {
          ?>
            <!-- check if the news will have a video -->
          <?php if( get_field('video') === false ): ?>
                <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col">
                    <div class="main">
                        <img class="news-img" src="<?php echo get_the_post_thumbnail_url(); ?>"
                             alt="image">
                        <div class="news-item small-item">
                            <div class="category-name">#<?php echo $catt->post_title; ?></div>
                            <a href="<?php the_permalink(); ?>" class="category-title"><?php the_title(); ?></a>
                            <div class="cat-date"><?php the_time('d.m.Y') ?></div>
                        </div>
                    </div>
                </div>
          <?php endif; ?>

          <?php if( get_field('video') === true ): ?>
                <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col">
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
        } elseif($post_count === 3) {
          ?>
            <!-- check if the news will have a video -->
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
        } elseif($post_count === 4) {
          ?>
          <?php if( get_field('video') === false ): ?>
                <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">
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
                <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">
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
        } elseif($post_count === 5) {
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
        } elseif($post_count === 6) {
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
        } elseif($post_count === 7) {
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
        } elseif($post_count === 8) {
          ?>
          <?php if( get_field('video') === false ): ?>
                <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col">
                    <div class="main">
                        <img class="news-img" src="<?php echo get_the_post_thumbnail_url(); ?>"
                             alt="image">
                        <div class="news-item small-item">
                            <div class="category-name">#<?php echo get_the_category()[0]->name; ?></div>
                            <a href="<?php the_permalink(); ?>" class="category-title"><?php the_title(); ?></a>
                            <div class="cat-date"><?php the_time('d.m.Y') ?></div>
                        </div>
                    </div>
                </div>
          <?php endif; ?>

          <?php if( get_field('video') === true ): ?>
                <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col">
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
        } elseif($post_count === 9) {
          ?>
          <?php if( get_field('video') === false ): ?>
                <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col">
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
                <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col">
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
        } elseif($post_count === 10) {
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
        } elseif($post_count === 11) {
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
        } elseif($post_count === 12) {
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
        } elseif($post_count === 13) {
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
        } else {
          $post_count = 0;
          ?>
          <?php if( get_field('video') === false ): ?>
                <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">
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
                <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">
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
<!--        <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col ">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news.png'; ?><!--"-->
<!--                     alt="image">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#COVID 19</div>-->
<!--                    <a href="/news.html" class="category-title">Праздник «Я выбираю небо-2020» в Казани 25 июля:-->
<!--                        программа мероприятий</a>-->
<!--                    <div class="cat-date">Вчера</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col ">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news1.png'; ?><!--"-->
<!--                     alt="image">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#LifeStyle</div>-->
<!--                    <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские-->
<!--                        кальянщики готовятся уйти в подполье-->
<!--                    </div>-->
<!--                    <div class="cat-date">Вчера</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main video-wrapp">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news3.png'; ?><!--"-->
<!--                     alt="image">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет-->
<!--                        проверка-->
<!--                    </div>-->
<!--                    <a href="/video_news.html">-->
<!--                        <img src="--><?php //echo get_template_directory_uri() . '/media/icon/play.svg'; ?><!--" alt="image">-->
<!--                    </a>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news2.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#LifeStyle</div>-->
<!--                    <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские-->
<!--                        кальянщики готовятся уйти в подполье-->
<!--                    </div>-->
<!--                    <div class="cat-date">Вчера</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news1.png'; ?><!--"-->
<!--                     alt="image">-->
<!--                <div class="news-item small-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">Кто-то хочет переименовать Баумана и сделать центр платным</div>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main video-wrapp">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news4.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">1 сентября в Казани откроют новый фуд-молл</div>-->
<!--                    <a href="#">-->
<!--                        <img src="--><?php //echo get_template_directory_uri() . '/media/icon/play.svg'; ?><!--">-->
<!--                    </a>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news5.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">В центре Казани насмерть сбили пешехода</div>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-7 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#COVID 19</div>-->
<!--                    <div class="category-title">Праздник «Я выбираю небо-2020» в Казани 25 июля: программа мероприятий-->
<!--                    </div>-->
<!--                    <div class="cat-date">Вчера</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-5 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news1.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#LifeStyle</div>-->
<!--                    <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские-->
<!--                        кальянщики готовятся уйти в подполье-->
<!--                    </div>-->
<!--                    <div class="cat-date">Вчера</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main video-wrapp">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news3.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет-->
<!--                        проверка-->
<!--                    </div>-->
<!--                    <a href="#">-->
<!--                        <img src="--><?php //echo get_template_directory_uri() . '/media/icon/play.svg'; ?><!--">-->
<!--                    </a>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-8 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news2.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#LifeStyle</div>-->
<!--                    <div class="category-title">«Никто наши интересы во власти отстаивать не будет»: казанские-->
<!--                        кальянщики готовятся уйти в подполье-->
<!--                    </div>-->
<!--                    <div class="cat-date">Вчера</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news1.png'; ?><!--">-->
<!--                <div class="news-item small-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">Кто-то хочет переименовать Баумана и сделать центр платным</div>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main video-wrapp">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news4.png'; ?><!--">-->
<!--                <div class="news-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">Вчерашний потоп рассердил не только вас, но и прокуратуру. Идет-->
<!--                        проверка-->
<!--                    </div>-->
<!--                    <a href="#">-->
<!--                        <img src="--><?php //echo get_template_directory_uri() . '/media/icon/play.svg'; ?><!--">-->
<!--                    </a>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="col-12 col-lg-4 col-md-6 col-sm-6 news_col">-->
<!--            <div class="main">-->
<!--                <img class="news-img" src="--><?php //echo get_template_directory_uri() . '/media/image/news5.png'; ?><!--"-->
<!--                     alt="image">-->
<!--                <div class="news-item small-item">-->
<!--                    <div class="category-name">#Культура</div>-->
<!--                    <div class="category-title">В центре Казани насмерть сбили пешехода</div>-->
<!--                    <div class="cat-date">12 часов назад</div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
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
            <form class="main_form" id="form">
                <div class="double">
                    <div class="subscribe__form input-wrapper">
                        <div class="placeholder">Имя</div>
                        <input name="name" type="text" required/>
                    </div>
                    <div class="subscribe__form input-wrapper">
                        <div class="placeholder">Почта или телефон</div>
                        <input name="tel" type="text" required/>
                    </div>
                </div>
                <div class="subscribe__form input-wrapper textarea">
                    <div class="placeholder textPlacehold">Коментарий</div>
                    <textarea maxlength="380"></textarea>
                </div>
                <div style="margin-bottom: 32px" class="g-recaptcha"
                     data-sitekey="6LdzuccZAAAAAFPZg0YB4_WOxOoX5aSFHs7SKw-a"></div>
                <input name="btn_form" class="form_btn" type="submit" value="Отправить"/>
            </form>
        </div>
    </div>
</div>
<?php get_footer(); ?>



