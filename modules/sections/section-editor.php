<?php
include_once 'security.php';

require_once($_SESSION['raiz'] . '/modules/sections/role-access-admin-editor.php');

$name_image_user = $_SESSION['raiz'] . '/images/users/' . $_SESSION['image'] . '';

if (file_exists($name_image_user)) {
} else {
    $sql = "SELECT image FROM users WHERE user = '" . $_SESSION['user'] . "'";

    if ($result = $conexion->query($sql)) {
        if ($row = mysqli_fetch_array($result)) {
            $_SESSION['image'] = $row['image'];
        }

        $name_image_user = $_SESSION['raiz'] . '/images/users/' . $_SESSION['image'] . '';

        if (file_exists($name_image_user)) {
        } else {
            $_SESSION['image'] = 'user.png';
        }
    }
}

$url_actual = $_SERVER["REQUEST_URI"];

if (strpos($url_actual, 'modules')) {
    $input = $url_actual;
    preg_match('~modules/(.*?)/~', $input, $output);
    $output[1];
} elseif (strpos($url_actual, 'attendance')) {
    $input = $url_actual;
    preg_match('~/(.*?)/~', $input, $output);
    $output[1];
} elseif (strpos($url_actual, 'user')) {
    $input = $url_actual;
    preg_match('~/(.*?)/~', $input, $output);
    $output[1];
} else {
    $output[1] = 'home';
}
?>
<div class="nav-home">
    <span class="name_system">Control de Asistencias</span>
    <div class="user">
        <img class="image_user" src="/sistema-escolar-main/images/users/<?php echo $_SESSION['image']; ?>" />
        <span class="name_user">
            <?php print $_SESSION['name'] . ' ' . $_SESSION['surnames']; ?>
        </span>
        <span class="logout_user">
            <a class="icon" href="#">expand_more</a>
            <ul>
                <li>
                    <a style="border-bottom: 3px solid #6272a4;" href="/user"><span class="icon">settings</span>Configuración</a>
                    <a href="/sistema-escolar-main/modules/logout"><span class="icon">logout</span>Cerrar Sesión</a>
                </li>
            </ul>
        </span>
    </div>
    <ul>
        <li><a class="<?php if ($output[1] == 'home') {
                            echo 'active';
                        } ?>" href="/sistema-escolar-main/home"><span class="icon">dashboard</span>Dashboard</a></li>
        <li><a class="<?php if ($output[1] == 'teachers') {
                            echo 'active';
                        } ?>" href="/sistema-escolar-main/modules/teachers"><span class="icon">connect_without_contact</span>Docentes</a></li>
        <li><a class="<?php if ($output[1] == 'students') {
                            echo 'active';
                        } ?>" href="/sistema-escolar-main/modules/students"><span class="icon">recent_actors</span>Alumnos</a></li>
        <li><a class="<?php if ($output[1] == 'careers') {
                            echo 'active';
                        } ?>" href="/sistema-escolar-main/modules/careers"><span class="icon">school</span>Carreras</a></li>
        <li><a class="<?php if ($output[1] == 'subjects') {
                            echo 'active';
                        } ?>" href="/sistema-escolar-main/modules/subjects"><span class="icon">library_books</span>Asignaturas</a></li>
        <li><a class="<?php if ($output[1] == 'groups') {
                            echo 'active';
                        } ?>" href="/sistema-escolar-main/modules/groups"><span class="icon">groups</span>Grupos</a></li>
        <li><a class="groups" href="https://previewer.adalo.com/9ba0d920-6566-4a21-904b-310268fd6478?target=574bd3258f60449dacc813d13bf9da71&params=%7B%7D&fbclid=IwAR1z6C0JLFTqdjnUx6aPHyE7umJo7tmC-oMIn287mgT7adUWVndqA_6FIqk_aem_AUJz4ixrPFSqw08A9i5RvA8Z1gNOM0IOUWNf2vXYqXpgGufRUviWmDSMvCJ5RxAj4XM"><span class="icon">groups</span>Gorila movil</a></li>
    </ul>
</div>
<div class="menu-mobile">
    <header>
        <span class="activator icon" id="activator">menu</span>
        <nav>
            <ul>
                <li>
                    <a class="<?php if ($output[1] == 'home') {
                                    echo 'active';
                                } ?>" href="/sistema-escolar-main/home" title="Dashboard"><span class="icon">dashboard</span></a>
                </li>
                <li>
                    <a class="<?php if ($output[1] == 'teachers') {
                                    echo 'active';
                                } ?>" href="/sistema-escolar-main/modules/teachers" title="Docentes"><span class="icon">connect_without_contact</span></a>
                </li>
                <li>
                    <a class="<?php if ($output[1] == 'students') {
                                    echo 'active';
                                } ?>" href="/sistema-escolar-main/modules/students" title="Alumnos"><span class="icon">recent_actors</span></a>
                </li>
                <li>
                    <a class="<?php if ($output[1] == 'careers') {
                                    echo 'active';
                                } ?>" href="/sistema-escolar-main/modules/careers" title="Carreras"><span class="icon">school</span></a>
                </li>
                <li>
                    <a class="<?php if ($output[1] == 'subjects') {
                                    echo 'active';
                                } ?>" href="/sistema-escolar-main/modules/subjects" title="Asignaturas"><span class="icon">library_books</span></a>
                </li>
                <li>
                    <a class="<?php if ($output[1] == 'groups') {
                                    echo 'active';
                                } ?>" href="/sistema-escolar-main/modules/groups" title="Grupos"><span class="icon">groups</span></a>
                </li>
            </ul>
        </nav>
    </header>
    <span class="name_system">Control de Asistencias</span>
</div>
<div class="user-mobile">
    <header>
        <img class="activator-user" id="activator-user" src="/sistema-escolar-main/images/users/<?php echo $_SESSION['image']; ?>">
        <nav>
            <ul>
                <li class="first">
                    <a class="<?php if ($output[1] == 'user') {
                                    echo 'active';
                                } ?>" href="/sistema-escolar-main/user" title="Configuración"><span class="icon">settings</span></a>
                </li>
                <li>
                    <a href="/sistema-escolar-main/modules/logout" title="Cerrar Sesión"><span class="icon">logout</span></a>
                </li>
            </ul>
        </nav>
    </header>
</div>
<script src="/sistema-escolar-main/js/external/gsap.min.js"></script>
<script src="/sistema-escolar-main/js/controls/menumobile.js"></script>