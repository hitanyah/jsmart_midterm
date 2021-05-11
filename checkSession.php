<?php
//判斷是否登入 (確認先前指派的 session 索引是否存在)
if (!isset($_SESSION['adiminAccount'])) {
    //預設訊息 (錯誤先行)
    $objResponse['success'] = false;
    $objResponse['info'] = "請確實登入";

    //3 秒後跳頁
    header("Refresh: 3; url=./itemAdmin.php");
    echo json_encode($objResponse, JSON_UNESCAPED_UNICODE);
    exit();
}
