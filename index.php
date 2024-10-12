<?php
require_once 'rotas.php';
require_once 'php/DAO/class.php';
ob_start();

$produtos = new Produtos();
?>
<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja Online | <?= ucwords($url[0]) ?> </title>

    <link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <!-- <link href="css/dashboard.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/sweetalert2.min.css">
    <script src="js/jquery.min.js"></script>
</head>

<body class="bg-light">


    <!-- CONTAINER -->

    <?php include 'paginas/nav.php' ?>
    <main class="">
        <div class="px-md-5 conteudo">
            <?php
            if (is_file($arquivo)) {
                include $arquivo;
            } else {
                include 'paginas/404.php';
            }
            ?>
        </div>
        <?php include 'paginas/footer.php'; ?>
    </main>

    <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
    <script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
    <script src="js/sweetalert2.all.min.js"></script>
</body>

</html>
