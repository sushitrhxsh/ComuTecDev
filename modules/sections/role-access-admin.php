<?php
if ($_SESSION['permissions'] != 'admin') {
    header('Location: /sistema-escolar-main/');
    exit();
}