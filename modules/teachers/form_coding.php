<?php 
error_reporting(0);
//require_once($_SESSION['raiz'] . '/modules/sections/role-access-admin-editor.php');

$sql = "SELECT * FROM teachers WHERE user = '" . $_POST['txtuserid'] . "'";

if ($result = $conexion->query($sql)) {
	if ($row = mysqli_fetch_array($result)) {
		$_SESSION['user_id'] = $row['user'];
		$_SESSION['teacher_name'] = $row['name'];
		$_SESSION['teacher_surnames'] = $row['surnames'];
		$_SESSION['teacher_date_of_birth'] = $row['date_of_birth'];
		$_SESSION['teacher_gender'] = $row['gender'];
		$_SESSION['teacher_curp'] = $row['curp'];
		$_SESSION['teacher_rfc'] = $row['rfc'];
		$_SESSION['teacher_phone'] = $row['phone'];
		$_SESSION['teacher_address'] = $row['address'];
		$_SESSION['teacher_level_studies'] = $row['level_studies'];
		$_SESSION['teacher_specialty'] = $row['specialty'];
		$_SESSION['teacher_career'] = $row['career'];
		$_SESSION['teacher_image'] = $row['image'];
	}
}
?>

<link rel="stylesheet" href="style.css">

<div class="form-gridview">
    <div class="start_btn">
        <button>Iniciar evaluacion</button> 
    </div>

    <!-- Caja de Informacion-->
    <div class="info_box">
        <div class="info-title"><span>Algunas reglas de esta evaluacion</span></div>
        <div class="info-list">
            <div class="info">1. Una vez que seleccione su respuesta, no se puede deshacer..</div>
            <div class="info">2. No puedes salir de la evaluacion mientras lo este realizando.</div>
            <div class="info">3. Se sincero a esta evaluacion.</div>
        </div>
        <div class="buttons">
            <button class="quit">Salir del Cuestionario</button>
            <button class="restart">Continuar</button>
        </div>
        
    </div>

    <!-- Cuadro de prueba-->
    <div class="quiz_box">
        <header>
            <div class="title">Examen de Programacion</div>
            <!--<div class="timer">
                <div class="time_left_txt">Tiempo restante</div>
                <div class="timer_sec">20</div>
            </div>
            <div class="time_line">barra de proceso</div>-->
        </header>
        <section>
            <div class="que_text"><!-- Aquí he insertado una pregunta de JavaScript --></div>
            <div class="option_list"><!-- Aquí he insertado opciones de JavaScript --></div>
        </section>
        <!-- pie de página de la prueba -->
        <footer>
            <div class="total_que"><!-- Aquí he insertado Número de conteo de preguntas de JavaScript --></div>
            <button class="next_btn">Siguiente</button>
        </footer>
    </div>

    <!-- Result Box -->
    <div class="result_box">
        <div class="icon"><!-- ruta de imagen aqui dentro --></div>
        <div class="complete_text">¡Has completado el cuestionario!</div>
        <div class="score_text"><!-- Aquí he insertado Score Result de JavaScript--></div>
        <div class="buttons">
            <button class="restart" hidden>Cuestionario de repetición</button>
            <button class="quit">Salir </button>
        </div>
    </div>
</div>

<!-- Dentro de este archivo JavaScript he codificado todos los códigos de prueba -->
<script src="script.js"></script>