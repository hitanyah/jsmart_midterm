<?php
//require_once '../admin_index/adminCheckSession.php';
?>

<!-- 注意填寫路徑時，要以require 的index.php檔案為主 -->
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <!-- my CSS -->
    <link href="../styles/admin.css" rel="stylesheet" type="text/css">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- <link rel="preconnect" href="https://fonts.gstatic.com"> -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;900&display=swap" rel="stylesheet">


    <title>JSMART</title>
    <style type="text/css">
        #contentTable {
            table-layout: fixed;
            /* bootstrap-table設定colmuns中某列的寬度無效時，需要給整個表設定css屬性 */
            word-break: break-all;
            word-wrap: break-all;
            /* 自動換行 */
        }
    </style>
    <style>
        /* * {
        outline: 1px solid red;
    } */
    </style>
</head>

<body>

    <nav class="nav_header">
        <div class="d-flex shadow-sm flex-column flex-md-row align-items-center px-3 py-4">
            <h3 class="mr-md-auto pl-3">
                <a class="text-dark" href="../admin_index/admin.php">JSMART（後台）</a>
            </h3>
            <div class="my-2 nav-buttons">

                <a class="mr-3" href="../event/index.php">活動管理</a>
                <a class="mr-3" href="../article/index.php">文章管理</a>
                <a class="mr-3" href="../items/itemAdmin.php">商品管理</a>
                <a class="mr-3" href="../category/category.php">類別管理</a>


                <!-- 我的訂單顯示判斷 -->
                <!-- isset($_SESSION["userAccount"]) -->

                <!-- 顯示註冊或會員您好 -->
                <?php if (isset($_SESSION["adminAccount"])) { ?>
                    <a class="mr-3" href="#">會員管理</a>
                    <span class="mr-3"><?php echo $_SESSION["adminAccount"] ?> 您好</span>
                <?php } ?>

                <?php if (!isset($_SESSION["adminAccount"])) { ?>
                    <a class="mr-3 btn btn-outline-dark" href="../login.php">登入</a>
                <?php } else { ?>
                    <a class="mr-3 btn btn-outline-dark" href="../logout.php">登出</a>
                <?php } ?>
            </div>
        </div>
    </nav>