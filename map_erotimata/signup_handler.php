<?php


if($_SERVER["REQUEST_METHOD"] == "POST"){
    $username = $_POST["username"];
    $pwd = $_POST["pwd"];

    try{
        require_once "db_connect.php";
        require_once "model.php";
        require_once "view.php";
        // ERROR HANDLERS
        $errors = [];

        if(empty($username) || empty($pwd)) {
            $errors["empty_input"] = "Fill in all fields";
        }
        if(get_username($pdo, $username)) {
            $errors["username"] = "Username already taken";
        }
        
        require_once "config_session.php";

        if ($errors){
            $_SESSION["errors_signup"] = $errors;
            header("Location: /signup_form.php");
            die();
        }
       
        create_user($pdo, $username, $pwd);

        $pdo = null;
        $stmt = null;

        header("Location: /signup_form.php?signup=success");
        die();

    } catch (PDOException $e) {
        die("Query failed: " .$e->getMessage());
    }
}
else{
    header("Location: /signup_form.php");
}