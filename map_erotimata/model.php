<?php

declare(strict_types=1);

function get_username(object $pdo, string $username)
{
    $query = "SELECT username FROM Project.users WHERE username = :username;";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(":username", $username);
    $stmt->execute();

    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function create_user(object $pdo, string $username, string $pwd)
{
    $query = "INSERT INTO Project.users (username,pwd,user_type) VALUES (:username,:pwd,'Civilian');";
    $stmt = $pdo->prepare($query);

    $options = [
        'cost' => 12
    ];

    $hashedPwd = password_hash($pwd, PASSWORD_BCRYPT, $options); 
    $stmt->bindParam(":username", $username);
    $stmt->bindParam(":pwd", $hashedPwd);

    $stmt->execute();
}