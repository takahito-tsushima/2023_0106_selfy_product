<?php

require_once('funcs.php');

//1. POSTデータ取得
$catch_phrase = $_POST['catch_phrase'];

// ファイル名を決定。日付時間をファイル名に付与して、同じ名前をアップロードされても重複しないようにする。
// ファイル名のイメージは、'202011010110name.png'
$photo_on = date('YmdHis') . $_FILES['photo_on'];
$photo_off = date('YmdHis') . $_FILES['photo_off'];




//2. DB接続します   try=内容を実行  catch=エラーがあれば処理を止めて以下を実行
$pdo = db_conn();


//３．データ登録SQL作成

// 1. SQL文を用意    【 処理の内容 を記述 】
$stmt = $pdo->prepare("INSERT INTO register00_photo(
  id,
  photo_on,
  photo_off,
  catch_phrase,
  date)
                      
VALUES(NULL,
  :photo_on,
  :photo_off,
  :catch_phrase,
  sysdate() )" 
);


//  2. バインド変数を用意    【 SQL injection 攻撃の回避 】
// ※フォームからそのままデータを取り込むのは危険 → :○○と置いてから取り込み処理を実行

// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR

$stmt->bindValue(':photo_on', $photo_on, PDO::PARAM_STR);
$stmt->bindValue(':photo_off', $photo_off, PDO::PARAM_STR);
$stmt->bindValue(':catch_phrase', $catch_phrase, PDO::PARAM_STR);



//  3. 実行
$status = $stmt->execute();


//４．データ登録処理後
if($status === false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit('ErrorMessage:'.$error[2]);
}else{


  //５．index.phpへリダイレクト
header('Location: register00_photo.php');
}


?>
