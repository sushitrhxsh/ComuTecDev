<?php
require_once($_SESSION['raiz'] . '/modules/sections/role-access-admin-editor.php');
?>

<div class="form-gridview">
	<div class="carousel-container">
		<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/sistema-escolar-main/images/promotions/p1.jpeg" class="d-block w-100" alt="...">
					<div style="color:black;" class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item">
					<img src="/sistema-escolar-main/images/promotions/p2.jpeg" class="d-block w-100" alt="...">
					<div style="color:black;" class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item">
					<img src="/sistema-escolar-main/images/promotions/p3.jpeg" class="d-block w-100" alt="...">
					<div style="color:black;" class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item">
					<img src="/sistema-escolar-main/images/promotions/p4.jpeg" class="d-block w-100" alt="...">
					<div style="color:black;" class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item">
					<img src="/sistema-escolar-main/images/promotions/p5.jpeg" class="d-block w-100" alt="...">
					<div style="color:black;" class="carousel-caption d-none d-md-block"></div>
				</div>
				
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
</div>

<div class="content-aside">
	<div class="form-options">
		<div class="options">
			<form action="" method="POST">
				<button class="btn btn-disabled icon" name="btn" value="form_add" type="submit" disabled>add</button>
			</form>
			<form action="" method="POST">
				<button class="btn btn-add icon" name="btn" value="form_coding" type="submit" >assignment</button>
			</form>
			<form action="" method="POST">
				<button class="btn btn-disabled icon" name="btn" value="form_printer" type="submit" disabled>print</button>
			</form>
			<button id="btnSearchMobile" class="btn btn-search-mobile icon">search</button>
			<form action="/sistema-escolar-main/">
				<button id="btnExitOptions" class="btn btn-exit icon" type="submit">exit_to_app</button>
			</form>
		</div>
	</div>
	<?php
	//include_once '../notif_info.php';
	//include_once "../sections/options.php";
	?>
</div>