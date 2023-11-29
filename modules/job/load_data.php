<?php
include_once '../notif_info_msgbox.php';

require_once($_SESSION['raiz'] . '/modules/sections/role-access-admin-editor.php');

$sql = "SELECT COUNT(job_id) AS total FROM jobs";

if ($result = $conexion->query($sql)) {
	if ($row = mysqli_fetch_array($result)) {
		if ($row['total'] == 0) {
			Error('Crea como mínimo una oportunidad de trabajo.');
			header('Location: /sistema-escolar-main/modules/job');
			exit();
		} else {
			$sql = "SELECT COUNT(job_id) AS total FROM jobs";

			if ($result = $conexion->query($sql)) {
				if ($row = mysqli_fetch_array($result)) {
					$tpages = ceil($row['total'] / $max);
				}
			}

			if (!empty($_POST['search'])) {
				$_POST['search'] = trim($_POST['search']);
				$_POST['search'] = mysqli_real_escape_string($conexion, $_POST['search']);

				$_SESSION['jobs_id'] = array();
				$_SESSION['jobs_name'] = array();
				$_SESSION['jobs_address'] = array();
				$_SESSION['jobs_contact'] = array();

				$i = 0;

				$sql = "SELECT * FROM jobs WHERE job_id LIKE '%" . $_POST['search'] . "%' OR name LIKE '%" . $_POST['search'] . "%' OR address LIKE '%" . $_POST['search'] . "%' OR name_contact LIKE '%" . $_POST['search'] . "%' ORDER BY name";

				if ($result = $conexion->query($sql)) {
					while ($row = mysqli_fetch_array($result)) {
						$_SESSION['jobs_id'][$i] = $row['job_id'];
						$_SESSION['jobs_name'][$i] = $row['name'];
						$_SESSION['jobs_address'][$i] = $row['address'];
						$_SESSION['jobs_contact'][$i] = $row['name_contact'];

						$i += 1;
					}
				}
				$_SESSION['total_jobs'] = count($_SESSION['jobs_id']);
			} else {
				$_SESSION['jobs_id'] = array();
				$_SESSION['jobs_name'] = array();
				$_SESSION['jobs_address'] = array();
				$_SESSION['jobs_contact'] = array();

				$i = 0;

				$sql = "SELECT * FROM jobs ORDER BY job_id LIMIT $inicio, $max";

				if ($result = $conexion->query($sql)) {
					while ($row = mysqli_fetch_array($result)) {
						$_SESSION['jobs_id'][$i] = $row['job_id'];
						$_SESSION['jobs_name'][$i] = $row['name'];
						$_SESSION['jobs_address'][$i] = $row['address'];
						$_SESSION['jobs_contact'][$i] = $row['name_contact'];
						
						
						$i += 1;
					}
				}
				$_SESSION['total_jobs'] = count($_SESSION['jobs_id']);
			}
		}
	}
}