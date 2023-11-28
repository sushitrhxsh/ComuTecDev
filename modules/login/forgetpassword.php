<?php
header('Content-Type: text/html; charset=UTF-8');

?>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1" />
	<meta name="google" value="notranslate">
	<link rel="icon" type="image/svg+xml" href="/sistema-escolar-main/images/icon.svg" />
	<title>ComunicaTec</title>
	<meta name="description" content="Sistema Escolar, gestión de asistencias." />
	<meta name="keywords" content="Sistema Escolar, Asistencias, Alumnos, Docentes, Administrativos, Sistema de Asistencias, MySoftUP, Diego, Carmona, Bernal, Diego Carmona Bernal, Gestión de Asistencias" />
	<link rel="stylesheet" href="/sistema-escolar-main/css/style.css" media="screen, projection" type="text/css" />
	<link rel="stylesheet" href="/sistema-escolar-main/css/pretty-checkbox.css" media="screen, projection" type="text/css" />
	<script src="/sistema-escolar-main/js/external/jquery.min.js" type="text/javascript"></script>
    <script src="/sistema-escolar-main/js/external/prefixfree.min.js" type="text/javascript"></script>
</head>

<body class="login">
	<!--<div class="loader"></div>-->
	<div class="wrap-title-login">
		<div class="title-login">
			<h1>ComunicaTec</h1>
		</div>
	</div>
	<div class="form-login">
		<div class="logo-form-login">
		</div>
		<form name="form-login" action="" id="form-update" method="POST" autocapitalize="off" data-nosnippet>
			<?php
			include_once 'update_password.php';
			?>
		</form>
	</div>
</body>

<script>
$(document).ready(function(){
    $('#form-update').submit(function(e){
        e.preventDefault(); //Prevee algun error
        // Toma todos lp valores en una variable serialize
        var formData = $(this).serialize();
        console.log(formData); // ver dato enviado por ajax
        // Envia los datos por ajax a otro
        $.ajax({
            type:'POST',
            url:'form_update.php', // Aqui enviamos estos datos a otro ajax paar que haga los cambios
            data: formData,
            success: function(response){
                alert("Cambio de contraseña exitoso!!!!");
				window.location.href = '/sistema-escolar-main/home';
            },
            error: function(xhr, status, error){
                console.log(error);
            }
        });
    });
});
</script>
<script src="/sistema-escolar-main/js/controls/buttons.js" type="text/javascript"></script>

</html>

