<?php

/**
Template Name: about
 *
 */

get_header();
?>
<section class="documentation-page about-page">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="documentation-page__title"><?php the_title(); ?></div>
			</div>
			<div class="col-12">
				<?php the_content(); ?>
			</div>
		</div>
	</div>
</section>
<div class="about-page">
  <div class="container" style="border-top: 1px solid #000; padding-top: 50px; margin-top: 50px;">
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
          <div style="margin-bottom: 32px" id="html_element" class="g-recaptcha" data-callback="onSubmit" data-sitekey="6LdzuccZAAAAAFPZg0YB4_WOxOoX5aSFHs7SKw-a"></div>
          <input  name="btn_form" id='submit' class="form_btn"  type="submit" value="Отправить"/>
        </form>
      </div>
    </div>
  </div>
</div>
<?php get_footer(); ?>
