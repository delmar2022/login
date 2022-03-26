<?php
include('config.php');
session_start();
if (isset($_POST['login'])) {

    $username = $_POST['usuario'];
    $password = $_POST['password'];

    $query = $conn->prepare("SELECT * FROM usuarios WHERE username=:username");
    $query->bindParam("username", $username, PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetch(PDO::FETCH_ASSOC);

    if (!$result) {
        echo '<p>¡La combinación de nombre de usuario y contraseña es incorrecta! x</p>';
    } else {
        if (password_verify($password, $result['password'])) {
            $_SESSION['user_id'] = $result['id'];
            echo '<p>¡Felicitaciones, estás registrado!</p>';
        } else {
            echo '<p>¡La combinación de nombre de usuario y contraseña es incorrecta! y</p>';
        }
    }
}
