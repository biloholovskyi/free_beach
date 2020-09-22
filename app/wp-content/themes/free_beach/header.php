<!doctype html>
<html lang="ru">
<head>
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap-4-grid@3.4.0/css/grid.min.css'>
  <!--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
  <!--    <link rel="stylesheet" href="css/main.css">-->
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<?php wp_head(); ?>
  <title><?php the_title(); ?></title>
</head>
<body>
<header class="main_header">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="header">
          <a class="logo" href="/">
            <img src="<?php echo get_template_directory_uri() . '/media/icon/logo-hor.svg'; ?>" alt="logo"/>
          </a>
          <div class="right_header">
            <a class="header_item" href="/about">О проекте</a>
            <a class="header_item" href="/documents">Документация</a>
			  <?php
			  $args = array(
				  'numberposts'      => - 1, // если -1 то выводит все
				  'orderby'          => 'date',
				  'order'            => 'DESC',
				  'post_type'        => 'supports', // тип поста
				  'suppress_filters' => true,
			  );

			  $posts = get_posts( $args );

			  foreach ( $posts as $post ) {
				  setup_postdata( $post );
				  ?>
                <button class="header_item support_project">Поддержать проект</button>
				  <?php
			  }
			  wp_reset_postdata(); // сброс
			  ?>
          </div>
          <img class="burger" src="<?php echo get_template_directory_uri() . '/media/icon/burger.svg'; ?>" alt="icon">
          <img class="close" src="<?php echo get_template_directory_uri() . '/media/icon/close.svg'; ?>" alt="icon">
        </div>
        <div class="header_mobile">
          <div class="header_bottom-top">
            <div class="mobile_cat">
	            <?php
	            $args = array(
		            'numberposts'      => - 1, // если -1 то выводит все
		            'orderby'          => 'date',
		            'order'            => 'DESC',
		            'post_type'        => 'category', // тип поста
		            'suppress_filters' => true,
	            );

	            $posts = get_posts( $args );

	            foreach ( $posts as $post ) {
		            setup_postdata( $post );
		            ?>
                  <a href="<?php the_permalink(); ?>" id="<?php the_ID(); ?>"
                     class="category_item">#<?php the_title(); ?></a>
		            <?php
	            }
	            wp_reset_postdata(); // сброс
	            ?>
            </div>
            <div class="bottom_mobile">
              <a class="header_item" href="/about">О проекте</a>
              <a class="header_item" href="/documents">Документация</a>
            </div>
          </div>
          <div class="header_bottom-bottom">
            <div class="bottom_mobile-sticky">
	            <?php
	            $args = array(
		            'numberposts' => -1, // если -1 то выводит все
		            'orderby' => 'date',
		            'order' => 'DESC',
		            'post_type' => 'supports', // тип поста
		            'suppress_filters' => true,
	            );

	            $posts = get_posts($args);

	            foreach ($posts as $post) {
		            setup_postdata($post);
		            ?>
                  <button class="header_item support_project" >Поддержать проект</button>
		            <?php
	            }
	            wp_reset_postdata(); // сброс
	            ?>
              <div class="social_icons">
		          <?php
		          $args = array(
			          'numberposts'      => - 1, // если -1 то выводит все
			          'orderby'          => 'date',
			          'order'            => 'DESC',
			          'post_type'        => 'social', // тип поста
			          'suppress_filters' => true,
		          );

		          $posts = get_posts( $args );

		          foreach ( $posts as $post ) {
			          setup_postdata( $post );
			          ?>
                    <a href="<?php the_field( 'telegram' ); ?>" target="_blank" class="icon">
                      <img src="<?php echo get_template_directory_uri() . '/media/icon/telegram.svg'; ?>"
                           alt="icon"/>
                    </a>
                    <a href="<?php the_field( 'whatsapp' ); ?>" target="_blank" class="icon">
                      <img src="<?php echo get_template_directory_uri() . '/media/icon/app.svg'; ?>" alt="icon"/>
                    </a>
                    <!--                          <a href="--><?php //the_field('vk'); ?><!--"  target="_blank" class="icon">-->
                    <!--                              <img src="--><?php //echo get_template_directory_uri() . '/media/icon/vk.svg'; ?><!--" alt="icon"/>-->
                    <!--                          </a>-->
                    <!--                          <a href="--><?php //the_field('instagram'); ?><!--"  target="_blank" class="icon">-->
                    <!--                              <img src="--><?php //echo get_template_directory_uri() . '/media/icon/insta.svg'; ?><!--"-->
                    <!--                                   alt="icon"/>-->
                    <!--                          </a>-->
			          <?php
		          }
		          wp_reset_postdata(); // сброс
		          ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
<div class="fake_header"></div>
