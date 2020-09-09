
<?php
session_start();
require($_SERVER['DOCUMENT_ROOT'].'/wp-load.php');
$name = $_POST['name'];
$tel = $_POST['tel'];
$text = $_POST['text'];

$arr = array(
  'Имя: ' => $name,
  'Телефон: ' => $tel,
  'Коментарий' => $text
);

foreach ($arr as $key => $value) {
  $txt .= "<b>".$key."</b> ".$value."%0A";
}

$multiple_to_recipients = array(
  'Dychkevych.kolya@gmail.com'
);

 wp_mail($multiple_to_recipients, "Новая заявка", "Имя: ".$name." | Номер: ".$tel." | Коментарий: ".$text);
