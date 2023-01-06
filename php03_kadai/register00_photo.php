<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>【 Selfy 】「私の写真」の登録</title>

    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<h1>「私の写真」の登録</h1>
    
<form method="POST" action="insert00_photo.php" name="photo" enctype="multipart/form-data">


<section id="photo_01">
        <h2>【1/1】私の写真</h2>

        <fieldset>
            <ul>
            <h3>■オン / ON の写真</h3>
                <li><P>アップロードする画像ファイルを選択する:</P></li>
                <li><input type="file" name="photo_on" size="35"></li>

            <h3>■オフ / OFF の写真</h3>
                <li><P>アップロードする画像ファイルを選択する:</P></li>
                <li><input type="file" name="photo_off" size="35"></li>

            <h3>■私のキャッチコピー</h3>
                <li id="js_catch_phrase"><input type="text" maxlength=12 id="js_catch_phrase" name="catch_phrase"></li>


            <a id="submit" onclick="document.photo.submit()">送信</a>

            </ul>
        </fieldset>
    </section>
    
</form>



   
    
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- JQuery -->


<script></script>

</body>

</html>