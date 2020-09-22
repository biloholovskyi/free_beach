<?php

/**
Template Name: documents
 *
 */

get_header();
?>

<section class="documentation-page">
	<div class="container">
		<div class="row">
      <div class="col-12">
        <div class="documentation-page__title">Документация</div>
        <div class="documentation-page__row">
	        <?php
	        $args = array(
		        'numberposts' => -1,
		        'orderby'     => 'date',
		        'order'       => 'DESC',
		        'post_type'   => 'documents',
		        'suppress_filters' => true,
	        );

	        $posts = get_posts( $args );
	        foreach($posts as $post){ setup_postdata($post);
		        $file = get_field('doc_file');
		        ?>
              <a href="<?php echo $file[url] ?>" download="" class="row__item">
                <div class="item__name"><?php the_title(); ?></div>
                <div class="item__size"><span class="item__format"><?php echo $file[subtype]; ?></span>, <span class="item__size-count"><?php echo size_format(filesize( get_attached_file( $file[ID] ) ), 0); ?></span></div>
                <div class="item__link">Скачать</div>
              </a>
		        <?php
	        }
	        wp_reset_postdata(); // сброс
	        ?>
        </div>
      </div>
    </div>
	</div>
</section>

<?php get_footer(); ?>
