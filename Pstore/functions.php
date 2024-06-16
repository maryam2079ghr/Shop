<?php
function pdo_connect_mysql() {
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'shoppingcart';
    try {
         return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
         exit('اتصال به پایگاه داده انجام نشد!');
    }
}
function template_header($title) {
$num_items_in_cart = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
echo <<<EOT
<!DOCTYPE html>
<html>
     <head>
          <meta charset="utf-8">
          <title>$title</title>
          <link href="style.css" rel="stylesheet" type="text/css">
          <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
     </head>
     <body>
        <header>
            <div class="content-wrapper">
            <h1>ساعت‌چی (SaatChi)</h1>
                <nav>
                    <a href="index.php"><b>صفحه اصلی</b></a>
                    <a href="index.php?page=products"><b>محصولات</b></a>
                </nav>
                <div class="link-icons">
                <a href="index.php?page=cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span>$num_items_in_cart</span>
                </a>
            </div>
            <div class="link-login">
              <a href="login.php" class="btn sm d-none d-lg-flex"><b>ورود / عضویت</b></a></div>
              
            </div>
        </header>
        <main>
EOT;
}
function template_footer() {
$year = date('Y');
echo <<<EOT
        </main>
        <footer>
            <div class="content-wrapper">
                <p style="text-align:center">ساعت چی&copy; $year</p>
            </div>
        </footer>
        <script src="script.js"></script>
    </body>
</html>
EOT;
}
?>
