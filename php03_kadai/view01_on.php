<?php

// 関数ファイルから呼び出し
require_once('funcs.php');

// 関数ファイルでreturnで外に出した$pdoを使う
$pdo = db_conn();

//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM register01_on where id=10;');
$status = $stmt->execute();

//３．データ表示
$view01 = '' or $view02 = '';
if ($status === false) {
    $error = $stmt->errorInfo();
    exit('SQLError:' . print_r($error, true));
} else {
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {  
        //GETデータ送信リンク作成

        $view01 .= $result['name01j'] . '  ' . $result['name02j'];
        $view02 .= $result['name01e'] . '  ' . $result['name02e'];

    }
}
?>



<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>オンの私 / ON</title>
</head>

<body>
    <div class="">
        <?= $view01 ?>
    </div>
    <div class="">
        <?= $view02 ?>
    </div>


</body>

</html>