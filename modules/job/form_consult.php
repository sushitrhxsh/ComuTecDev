<?php
require_once($_SESSION['raiz'] . '/modules/sections/role-access-admin-editor.php');

$sql = "SELECT * FROM jobs WHERE job_id = '" . $_POST['txtjobid'] . "'";
if ($result = $conexion->query($sql)) {
	if ($row = mysqli_fetch_array($result)) {
        $_SESSION['jobs_id'] = $row['job_id'];
        $_SESSION['jobs_name'] = $row['name'];
        $_SESSION['jobs_address'] = $row['address'];
        $_SESSION['jobs_contact'] = $row['name_contact'];
	}
}
?>
<div class="form-data">
	<div class="head">
		<h1 class="titulo">Consultar</h1>
	</div>
	<div class="body">
		<form name="form-consult-teachers" action="#" method="POST">
			<div class="wrap">
                <div class="first">
                    <label class="label">Folio</label>
					<input style="display: none;" type="text" name="btn" value="form_default" />
					<input class="text" type="text" name="id" value="<?php echo $_SESSION['jobs_id'][0]; ?>" disabled />
                    <label class="label">Empresa</label>
					<input class="text" type="text" name="name" value="<?php echo $_SESSION['jobs_name'][0]; ?>" disabled />
					<label class="label">Direccion</label>
					<input class="text" type="text" name="address" value="<?php echo $_SESSION['jobs_address'][0]; ?>" disabled />
					<label for="contact" class="label">Contacto</label>
					<input id="contact" class="text" type="text" name="contact" value="<?php echo $_SESSION['jobs_contact'][0]; ?>" disabled />
                </div>
				<div class="last">

                </div>
				<div class="content-full">

                </div>
				<div class="content-full">
                    
                </div>
            </div>
			<!--<button id="btnBack" class="btn back icon" type="submit">arrow_back</button>
			<button id="btnNext" class="btn icon" type="button">arrow_forward</button>
			<button id="btnSave" class="btn icon" type="submit" autofocus>done</button>-->
		</form>
    </div>
</div>
<div class="content-aside">
	<?php include_once "../sections/options-disabled.php"; ?>
</div>