<?php

require_once('funcs.php');


//1. POSTデータ取得
$usual01 = $_POST['usual01'] ?? null;
$usual02 = $_POST['usual02'] ?? null;
$usual03 = $_POST['usual03'] ?? null;
$usual04 = $_POST['usual04'] ?? null;
$usual05 = $_POST['usual05'] ?? null;
$usual06 = $_POST['usual06'] ?? null;
$usual07 = $_POST['usual07'] ?? null;
$usual08 = $_POST['usual08'] ?? null;
$usual09 = $_POST['usual09'] ?? null;
$usual10 = $_POST['usual10'] ?? null;
$values01 = $_POST['values01'] ?? null;
$values02 = $_POST['values02'] ?? null;
$values03 = $_POST['values03'] ?? null;
$values04 = $_POST['values04'] ?? null;
$values05 = $_POST['values05'] ?? null;
$values06 = $_POST['values06'] ?? null;
// $character = $_POST['character'];
$phrase = $_POST['phrase'];
$ilike = $_POST['ilike'];
$dislike = $_POST['dislike'];
$complex = $_POST['complex'];


//2. DB接続します   try=内容を実行  catch=エラーがあれば処理を止めて以下を実行
$pdo = db_conn();


//３．データ登録SQL作成

// 1. SQL文を用意    【 処理の内容 を記述 】
$stmt = $pdo->prepare("INSERT INTO register04_truth(
  id,
  usual01,
  usual02,
  usual03,
  usual04,
  usual05,
  usual06,
  usual07,
  usual08,
  usual09,
  usual10,
  values01,
  values02,
  values03,
  values04,
  values05,
  values06,
  -- character,
  phrase,
  ilike,
  dislike,
  complex,
  date)
                      
VALUES(NULL,
  :usual01,
  :usual02,
  :usual03,
  :usual04,
  :usual05,
  :usual06,
  :usual07,
  :usual08,
  :usual09,
  :usual10,
  :values01,
  :values02,
  :values03,
  :values04,
  :values05,
  :values06,
  -- :character,
  :phrase,
  :ilike,
  :dislike,
  :complex,
  sysdate() )" 
);


//  2. バインド変数を用意    【 SQL injection 攻撃の回避 】
// ※フォームからそのままデータを取り込むのは危険 → :○○と置いてから取り込み処理を実行

// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR

$stmt->bindValue(':usual01', $usual01, PDO::PARAM_STR);
$stmt->bindValue(':usual02', $usual02, PDO::PARAM_STR);
$stmt->bindValue(':usual03', $usual03, PDO::PARAM_STR);
$stmt->bindValue(':usual04', $usual04, PDO::PARAM_STR);
$stmt->bindValue(':usual05', $usual05, PDO::PARAM_STR);
$stmt->bindValue(':usual06', $usual06, PDO::PARAM_STR);
$stmt->bindValue(':usual07', $usual07, PDO::PARAM_STR);
$stmt->bindValue(':usual08', $usual08, PDO::PARAM_STR);
$stmt->bindValue(':usual09', $usual09, PDO::PARAM_STR);
$stmt->bindValue(':usual10', $usual10, PDO::PARAM_STR);
$stmt->bindValue(':values01', $values01, PDO::PARAM_STR);
$stmt->bindValue(':values02', $values02, PDO::PARAM_STR);
$stmt->bindValue(':values03', $values03, PDO::PARAM_STR);
$stmt->bindValue(':values04', $values04, PDO::PARAM_STR);
$stmt->bindValue(':values05', $values05, PDO::PARAM_STR);
$stmt->bindValue(':values06', $values06, PDO::PARAM_STR);
// $stmt->bindValue(':character', $character, PDO::PARAM_STR);
$stmt->bindValue(':phrase', $phrase, PDO::PARAM_STR);
$stmt->bindValue(':ilike', $ilike, PDO::PARAM_STR);
$stmt->bindValue(':dislike', $dislike, PDO::PARAM_STR);
$stmt->bindValue(':complex', $complex, PDO::PARAM_STR);


//  3. 実行
$status = $stmt->execute();


//４．データ登録処理後
if($status === false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit('ErrorMessage:'.$error[2]);
}else{


  //５．index.phpへリダイレクト
header('Location: register04_truth.php');
}


?>
