<?php 
    require_once($_SESSION['raiz'] . '/modules/sections/role-access-admin-editor.php');
?>
<div class="form-gridview">
	<table class="default">
    <?php
		if ($_SESSION['total_jobs'] != 0) {
			echo '
					<tr>
						<th>Folio</th>
						<th>Empresa</th>
						<th>Direccion</th>
						<th>Contacto</th>
						<th class="center"><a class="icon">visibility</a></th>
						
						
					</tr>
		';
		}
		for ($i = 0; $i < $_SESSION['total_jobs']; $i++) {
			echo '
		    		<tr>
		    			<td>' . $_SESSION["jobs_id"][$i] . '</td>
						<td>' . $_SESSION["jobs_name"][$i] . '</td>
						<td class="tdbreakw">' . $_SESSION["jobs_address"][$i] . '</td>
				
						<td>' . $_SESSION["jobs_contact"][$i] . '</td>
						<td>
							<form action="" method="POST">
								<input style="display:none;" type="text" name="txtjobid" value="' . $_SESSION["user_id"][$i] . '"/>
								<button class="btnview" name="btn" value="form_consult" type="submit"></button>
							</form>
						</td>
						
					</tr>
				';
		}
		?>
    </table>
<?php
	if ($_SESSION['total_jobs'] == 0) {
		echo '
				<img src="/sistema-escolar-main/images/404.svg" class="data-not-found" alt="404">
		';
	}
	if ($_SESSION['total_jobs'] != 0) {
		echo '
				<div class="pages">
					<ul>
		';
		for ($n = 1; $n <= $tpages; $n++) {
			if ($page == $n) {
				echo '<li class="active"><form name="form-pages" action="" method="POST"><button type="submit" name="page" value="' . $n . '">' . $n . '</button></form></li>';
			} else {
				echo '<li><form name="form-pages" action="" method="POST"><button type="submit" name="page" value="' . $n . '">' . $n . '</button></form></li>';
			}
		}
		echo '
					</ul>
				</div>
		';
	}
?>


</div>
<div class="content-aside">
	<?php
	include_once '../notif_info.php';
	include_once "../sections/options.php";
	?>
</div>