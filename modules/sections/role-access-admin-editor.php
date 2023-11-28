<?php
if ($_SESSION['permissions'] == 'admin' || $_SESSION['permissions'] == 'editor') {
} else {
    header('Location: /sistema-escolar-main/');
    exit();
}