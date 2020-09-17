<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-9 col-md-8">
                <div class="footer__items">
                    <h2>Свободный пляж</h2>
                    <div class="footer_navigation">
                        <div class="top">
                            <a href="#">О проекте</a>
                            <a href="#">Документация</a>
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

                          <?php
                          $args = array(
                            'numberposts' => 1, // если -1 то выводит все
                            'orderby' => 'date',
                            'order' => 'DESC',
                            'post_type' => 'Politics', // тип поста
                            'suppress_filters' => true,
                          );

                          $posts = get_posts($args);

                          foreach ($posts as $post) {
                            setup_postdata($post);
                            ?>
                              <a href="<?php the_field('Politics'); ?>" target="_blank">Политика конфиденциальности</a>
                            <?php
                          }
                          wp_reset_postdata(); // сброс
                          ?>
                        </div>
                        <div class="bottom">2020 Свободный пляж</div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-3 col-md-4">
                <div class="subscribe">
                    <h3>Подпишитесь на нашу рассылку</h3>
                    <form class="subscribe__form input-wrapper">
                        <div class="placeholder">Ваш Email</div>
                            <input style="color: #fff" type="text"/>
                    </form>
                    <div class="social_icons">
                      <?php
                      $args = array(
                        'numberposts' => -1, // если -1 то выводит все
                        'orderby' => 'date',
                        'order' => 'DESC',
                        'post_type' => 'social', // тип поста
                        'suppress_filters' => true,
                      );

                      $posts = get_posts($args);

                      foreach ($posts as $post) {
                      setup_postdata($post);
                      ?>
                        <a href="<?php the_field('telegram'); ?>" target="_blank" class="icon">
                            <img src="<?php echo get_template_directory_uri() . '/media/icon/telegram.svg'; ?>"
                                 alt="icon"/>
                        </a>
                        <a href="<?php the_field('whatsapp'); ?>"  target="_blank" class="icon">
                            <img src="<?php echo get_template_directory_uri() . '/media/icon/app.svg'; ?>" alt="icon"/>
                        </a>
<!--                        <a href="--><?php //the_field('vk'); ?><!--"  target="_blank" class="icon">-->
<!--                            <img src="--><?php //echo get_template_directory_uri() . '/media/icon/vk.svg'; ?><!--" alt="icon"/>-->
<!--                        </a>-->
<!--                        <a href="--><?php //the_field('instagram'); ?><!--"  target="_blank" class="icon">-->
<!--                            <img src="--><?php //echo get_template_directory_uri() . '/media/icon/insta.svg'; ?><!--"-->
<!--                                 alt="icon"/>-->
<!--                        </a>-->
                        <?php
                      }
                      wp_reset_postdata(); // сброс
                      ?>
                    </div>
                    <div class="hidden">2020 Свободный пляж</div>
                </div>
            </div>
        </div>
    </div>
</footer>
    <div class="alert-modal">
        <div class="alert-modal__body">
            <p>Спасибо!</p>
            <p>Ваша заявка отправлена. Мы свяжемся с вами в ближайшее время</p>
        </div>
    </div>
    <div class="support_modal--overlay">
        <div class="support_modal">
            <div class="support-close">
                <div class="close-item"></div>
                <div class="close-item"></div>
            </div>
            <h2>Вы можете поддержать<br>наш проект пожертвованием</h2>
            <div class="supp-price">
              <a href="<?php the_field('first_button-link'); ?>" target="_blank" class="price"><?php the_field('first_button-count'); ?></a>
              <a href="<?php the_field('second_button-link'); ?>" target="_blank" class="price"><?php the_field('second_button-count'); ?></a>
              <a href="<?php the_field('third_button-link'); ?>" target="_blank" class="price"><?php the_field('third_button-count'); ?></a>
            </div>
            <div class="tap_price">
                <label>Или введите вашу сумму</label>
                <input type="number" name="price" placeholder="Вести сумму" id="custom-price"/>
            </div>
            <a href="https://money.yandex.ru/to/4100115795395476/" target="_blank" class="supp_btn" id="custom-price-link">отправить</a>
        </div>
    </div>
</body>

<?php
if(isset($_POST["btn_form"])){
  if (isset($_POST['g-recaptcha-response'])) {
    $url_to_google_api = "https://www.google.com/recaptcha/api/siteverify";
    $secret_key = '6LdzuccZAAAAACUJXcu_-jg66o0NGecJg44pOZM7';
    $query = $url_to_google_api . '?secret=' . $secret_key . '&response=' . $_POST['g-recaptcha-response'] . '&remoteip=' . $_SERVER['REMOTE_ADDR'];
    $data = json_decode(file_get_contents($query));

    if ($data->success) {
      header('Location: page-home.php');
    }
    else {
      echo('Вы не прошли валидацию reCaptcha');
    }
  }
}
?>
<!--<script src="https://www.google.com/recaptcha/api.js" async defer></script>-->
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<?php wp_footer(); ?>
<!--<script src="buildjs/index.js"></script>-->
<script type="text/javascript">
  var onloadCallback = function() {
    grecaptcha.render('html_element', {
      'sitekey' : '6LdzuccZAAAAAFPZg0YB4_WOxOoX5aSFHs7SKw-a'
    });
  };
</script>
<script>

    let tag = document.createElement('script');
    tag.src = "https://www.youtube.com/player_api";
    let firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

    let player;
    function onYouTubePlayerAPIReady() {
        player = new YT.Player('player', {
            height: '100%',
            width: '100%',
            videoId: '<?php the_field('video_link'); ?>',
            playerVars: {
                'controls': 0,
                'modestbranding': 0,
                'rel': 0,
                'showinfo': 0,
                'fs': 0,
                'autoplay': 0
            }
        });
    }

    function playVideo() {
        player.playVideo();
        document.getElementById("play").style = 'display:none';
        document.getElementById("pause").style = 'display:flex';
    }
    function stopVideo() {
        player.stopVideo();
        document.getElementById("pause").style = 'display:none';
        document.getElementById("play").style = 'display:flex';
    }
</script>
</html>
