<?php
session_start();

if ($_SESSION['authenticate'] != 'go-' . $_SESSION['user']) {
	header('Location: /sistema-escolar-main/');
	exit();
}