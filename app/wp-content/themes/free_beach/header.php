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
                    <a class="logo" href="/">Свободный пляж</a>
                    <div class="right_header">
                        <a class="header_item" href="#">О проекте</a>
                        <a class="header_item" href="#">Документация</a>
                        <a class="header_item" href="#">Поддержать проект</a>
                    </div>
                    <img class="burger" src="<?php echo get_template_directory_uri() . '/media/icon/burger.svg'; ?>" alt="icon" >
                </div>
            </div>
        </div>
    </div>
</header>
<div class="fake_header"></div>
