
<?php
//if(isset($_POST["btn_form"])){
//  if (isset($_POST['g-recaptcha-response'])) {
//    $url_to_google_api = "https://www.google.com/recaptcha/api/siteverify";
//    $secret_key = '6LdzuccZAAAAACUJXcu_-jg66o0NGecJg44pOZM7';
//    $query = $url_to_google_api . '?secret=' . $secret_key . '&response=' . $_POST['g-recaptcha-response'] . '&remoteip=' . $_SERVER['REMOTE_ADDR'];
//    $data = json_decode(file_get_contents($query));
//
//    if ($data->success) {
//      header('Location: page-home.php');
//    }
//    else {
//      echo('Вы не прошли валидацию reCaptcha');
//    }
//  }
//}
//?>

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
