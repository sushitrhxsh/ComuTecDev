<?php
header('Content-Type: text/html; charset=UTF-8');

if (include_once 'modules/security.php') {
    $_SESSION['raiz'] = dirname(__FILE__);
}
include_once 'modules/conexion.php';
include_once 'modules/notif_info_unset.php';

// Formulario actual
if (!empty($_POST['btn'])) {
	$view_form = $_POST['btn'] . '.php';
} else {
	$view_form = 'form_default.php';
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1" />
    <meta name="robots" content="noindex">
    <meta name="google" value="notranslate">
    <link rel="icon" type="image/png" href="/sistema-escolar-main/images/logo.png" />
    <title>ComunicaTec</title>
    <meta name="description" content="Sistema Escolar, gestión de asistencias." />
    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="/sistema-escolar-main/css/style.css" media="screen, projection" type="text/css" />
    <script src="/sistema-escolar-main/js/external/jquery.min.js" type="text/javascript"></script>
    <script src="/sistema-escolar-main/js/external/prefixfree.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(window).load(function() {
            $(".loader").fadeOut("slow");
        });
    </script>
</head>

<body>
    <div class="loader"></div>
    <header class="header">
        <?php
        include_once "modules/sections/section-info-title.php";
        ?>
    </header>
    <aside class="aside">
        <?php
        if (!empty($_SESSION['section-admin']) == 'go-' . $_SESSION['user']) {
            include_once 'modules/sections/section-admin.php';
        } elseif (!empty($_SESSION['section-editor']) == 'go-' . $_SESSION['user']) {
            include_once 'modules/sections/section-editor.php';
        }
        ?>
    </aside>
    <section class="content">
        <?php 
            include_once $view_form;
        ?>
      
    </section>
</body>
<script src="/sistema-escolar-main/js/controls/buttons.js" type="text/javascript"></script>
<!-- Bootstrap JavaScript Libraries-->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>

</html>