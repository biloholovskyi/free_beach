<?php
// подключение скриптов
add_action('wp_enqueue_scripts', 'style_them');
// подключение стилей
add_action('wp_footer', 'script_them');
// подключение меню
add_action('after_setup_theme', 'menu');

// пример создание меню
function menu() {
  register_nav_menu('header', 'Главное меню в шапке');
  register_nav_menu('footer', 'Меню в подвале');
  // подключаем обложку поста
  add_theme_support( 'post-thumbnails', array('post', 'Politics', 'social', 'category', 'news', 'supports', 'documents') );
  // удаляем ... в кратком описание постов
  add_filter('excerpt_more', function($more) {
    return '';
  });
}

// подключение стилей
function style_them() {
  // подключение основного файла стилей
  wp_enqueue_style('style', get_stylesheet_uri());
  // подключение остальный файлов
  wp_enqueue_style('main', get_template_directory_uri() . '/css/main.css');
}

// подключение скриптов
function script_them() {
  wp_enqueue_script('script', get_template_directory_uri() . '/buildjs/index.js');

  // удаление из скриптов лишних аттрибутов
  add_filter('script_loader_tag', 'codeless_remove_type_attr', 10, 2);
  function codeless_remove_type_attr($tag, $handle) {
    return preg_replace("/type=['\"]text\/(javascript|css)['\"]/", '', $tag);
  }
}

// пример создания нового типа поста
add_action( 'init', 'register_post_types' );
function register_post_types(){
  register_post_type('Politics', array(
    'label'  => null,
    'labels' => array(
      'name'               => 'Политика конфиденциальности', // основное название для типа записи
      'singular_name'      => 'Политика конфиденциальности', // название для одной записи этого типа
      'add_new'            => 'Добавить политику конфиденциальности', // для добавления новой записи
      'add_new_item'       => 'Добавление политики конфиденциальности', // заголовка у вновь создаваемой записи в админ-панели.
      'edit_item'          => 'Редактирование политики конфиденциальности', // для редактирования типа записи
      'new_item'           => 'Новая политика конфиденциальности', // текст новой записи
      'view_item'          => 'Смотреть политику конфиденциальности', // для просмотра записи этого типа.
      'search_items'       => 'Искать политику конфиденциальности', // для поиска по этим типам записи
      'not_found'          => 'Не найдена политика конфиденциальности', // если в результате поиска ничего не было найдено
      'not_found_in_trash' => 'Не найдена политика конфиденциальности в корзине', // если не было найдено в корзине
      'parent_item_colon'  => '', // для родителей (у древовидных типов)
      'menu_name'          => 'Политика конфиденциальности', // название меню
    ),
    'description'         => '',
    'public'              => true,
    'publicly_queryable'  => true, // зависит от public
    'exclude_from_search' => true, // зависит от public
    'show_ui'             => true, // зависит от public
    'show_in_menu'        => true, // показывать ли в меню адмнки
    'show_in_admin_bar'   => true, // по умолчанию значение show_in_menu
    'show_in_nav_menus'   => true, // зависит от public
    'show_in_rest'        => null, // добавить в REST API. C WP 4.7
    'rest_base'           => null, // $post_type. C WP 4.7
    'menu_position'       => 2,
    'menu_icon'           => 'dashicons-grid-view',
    //'capability_type'   => 'post',
    //'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
    //'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
    'hierarchical'        => false,
    'supports'            => array('title', 'thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
    'taxonomies'          => array(),
    'has_archive'         => false,
    'rewrite'             => true,
    'query_var'           => true,
  ) );

  register_post_type('social', array(
    'label'  => null,
    'labels' => array(
      'name'               => 'Соц. Сети', // основное название для типа записи
      'singular_name'      => 'Соц. Сеть', // название для одной записи этого типа
      'add_new'            => 'Добавить Соц.Сеть', // для добавления новой записи
      'add_new_item'       => 'Добавление Соц.Сети', // заголовка у вновь создаваемой записи в админ-панели.
      'edit_item'          => 'Редактирование Соц.Сети', // для редактирования типа записи
      'new_item'           => 'Новая Соц.Сеть', // текст новой записи
      'view_item'          => 'Смотреть Соц.Сети', // для просмотра записи этого типа.
      'search_items'       => 'Искать Соц.Сети', // для поиска по этим типам записи
      'not_found'          => 'Не найдена Соц.Сеть', // если в результате поиска ничего не было найдено
      'not_found_in_trash' => 'Не найдена Соц.Сеть в корзине', // если не было найдено в корзине
      'parent_item_colon'  => '', // для родителей (у древовидных типов)
      'menu_name'          => 'Соц. Сети', // название меню
    ),
    'description'         => '',
    'public'              => true,
    'publicly_queryable'  => true, // зависит от public
    'exclude_from_search' => true, // зависит от public
    'show_ui'             => true, // зависит от public
    'show_in_menu'        => true, // показывать ли в меню адмнки
    'show_in_admin_bar'   => true, // по умолчанию значение show_in_menu
    'show_in_nav_menus'   => true, // зависит от public
    'show_in_rest'        => null, // добавить в REST API. C WP 4.7
    'rest_base'           => null, // $post_type. C WP 4.7
    'menu_position'       => 3,
    'menu_icon'           => 'dashicons-groups',
    //'capability_type'   => 'post',
    //'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
    //'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
    'hierarchical'        => false,
    'supports'            => array('title', 'thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
    'taxonomies'          => array(),
    'has_archive'         => false,
    'rewrite'             => true,
    'query_var'           => true,
  ) );

  register_post_type('category', array(
    'label'  => null,
    'labels' => array(
      'name'               => 'Рубрики', // основное название для типа записи
      'singular_name'      => 'Рубрика', // название для одной записи этого типа
      'add_new'            => 'Добавить Рубрику', // для добавления новой записи
      'add_new_item'       => 'Добавление Рубрики', // заголовка у вновь создаваемой записи в админ-панели.
      'edit_item'          => 'Редактирование Рубрики', // для редактирования типа записи
      'new_item'           => 'Новая Рубрика', // текст новой записи
      'view_item'          => 'Смотреть Рубрику', // для просмотра записи этого типа.
      'search_items'       => 'Искать Рубрику', // для поиска по этим типам записи
      'not_found'          => 'Не найдена Рубрика', // если в результате поиска ничего не было найдено
      'not_found_in_trash' => 'Не найдена Рубрика в корзине', // если не было найдено в корзине
      'parent_item_colon'  => '', // для родителей (у древовидных типов)
      'menu_name'          => 'Рубрики', // название меню
    ),
    'description'         => '',
    'public'              => true,
    'publicly_queryable'  => true, // зависит от public
    'exclude_from_search' => true, // зависит от public
    'show_ui'             => true, // зависит от public
    'show_in_menu'        => true, // показывать ли в меню адмнки
    'show_in_admin_bar'   => true, // по умолчанию значение show_in_menu
    'show_in_nav_menus'   => true, // зависит от public
    'show_in_rest'        => null, // добавить в REST API. C WP 4.7
    'rest_base'           => null, // $post_type. C WP 4.7
    'menu_position'       => 4,
    'menu_icon'           => 'dashicons-edit-large',
    //'capability_type'   => 'post',
    //'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
    //'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
    'hierarchical'        => false,
    'supports'            => array('title', 'thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
    'taxonomies'          => array(),
    'has_archive'         => false,
    'rewrite'             => true,
    'query_var'           => true,
  ) );

  register_post_type('supports', array(
    'label'  => null,
    'labels' => array(
      'name'               => 'Поддержать проект', // основное название для типа записи
      'singular_name'      => 'Поддержать проект', // название для одной записи этого типа
      'add_new'            => 'Добавить ссылку на Поддержать проект', // для добавления новой записи
      'add_new_item'       => 'Добавление ссылки на Поддержать проект', // заголовка у вновь создаваемой записи в админ-панели.
      'edit_item'          => 'Редактирование ссылки на Поддержать проект', // для редактирования типа записи
      'new_item'           => 'Новая ссылка на Поддержать проект', // текст новой записи
      'view_item'          => 'Смотреть ссылку на Поддержать проект', // для просмотра записи этого типа.
      'search_items'       => 'Искать ссылку на Поддержать проекть', // для поиска по этим типам записи
      'not_found'          => 'Не найдена ссылка на Поддержать проект', // если в результате поиска ничего не было найдено
      'not_found_in_trash' => 'Не найдена ссылку на Поддержать проект', // если не было найдено в корзине
      'parent_item_colon'  => '', // для родителей (у древовидных типов)
      'menu_name'          => 'Поддержать проект', // название меню
    ),
    'description'         => '',
    'public'              => true,
    'publicly_queryable'  => true, // зависит от public
    'exclude_from_search' => true, // зависит от public
    'show_ui'             => true, // зависит от public
    'show_in_menu'        => true, // показывать ли в меню адмнки
    'show_in_admin_bar'   => true, // по умолчанию значение show_in_menu
    'show_in_nav_menus'   => true, // зависит от public
    'show_in_rest'        => null, // добавить в REST API. C WP 4.7
    'rest_base'           => null, // $post_type. C WP 4.7
    'menu_position'       => 6,
    'menu_icon'           => 'dashicons-money-alt',
    //'capability_type'   => 'post',
    //'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
    //'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
    'hierarchical'        => false,
    'supports'            => array('title', 'thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
    'taxonomies'          => array(),
    'has_archive'         => false,
    'rewrite'             => true,
    'query_var'           => true,
  ) );

	register_post_type('documents', array(
		'label'  => null,
		'labels' => array(
			'name'               => 'Документы', // основное название для типа записи
			'singular_name'      => 'Документ', // название для одной записи этого типа
			'add_new'            => 'Добавить Документ', // для добавления новой записи
			'add_new_item'       => 'Добавление Документа', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование Документа', // для редактирования типа записи
			'new_item'           => 'Новый Документ', // текст новой записи
			'view_item'          => 'Смотреть Документ', // для просмотра записи этого типа.
			'search_items'       => 'Искать Документ', // для поиска по этим типам записи
			'not_found'          => 'Не найден Документ', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найден Документ в корзине', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Документы', // название меню
		),
		'description'         => '',
		'public'              => true,
		'publicly_queryable'  => true, // зависит от public
		'exclude_from_search' => true, // зависит от public
		'show_ui'             => true, // зависит от public
		'show_in_menu'        => true, // показывать ли в меню адмнки
		'show_in_admin_bar'   => true, // по умолчанию значение show_in_menu
		'show_in_nav_menus'   => true, // зависит от public
		'show_in_rest'        => null, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 3,
		'menu_icon'           => 'dashicons-edit-page',
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => array('title', 'thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => array(),
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	) );
}

// скрипт для добавления svg картинок в адмнке
function cc_mime_types( $mimes ){
  $mimes['svg'] = 'image/svg+xml';
  return $mimes;
}
add_filter( 'upload_mimes', 'cc_mime_types' );


