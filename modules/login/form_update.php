<?php
include_once '../conexion.php';

// Variable recibidas en el ajax
$user             = isset($_POST['txtuser']) ? $_POST['txtuser'] : "";
$new_password     = isset($_POST['txtnewpass']) ? $_POST['txtnewpass'] : "";
$update_date      = date('Y-m-d H:i:s');

// Validaciones 
if(empty($user)){ 
    echo "<script>alert('El campo de usuario está vacío. Por favor, ingrésalo.');</script>";    }
elseif (empty($new_password)){
    echo '<script>alert("El campo de contraseña está vacío. Por favor, ingrésalo.");</script>';    }
    
else{
    mysqli_query($conexion,"UPDATE users set pass = '$new_password' where user= '$user';");
    header('Location: /sistema-escolar-main/home');
}

?>