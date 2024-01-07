<?php
require_once 'db_connect.php';

$user_id = 3;


if(isset($_POST['task_id'])){
	$task_id = $_POST['task_id'];
	$query = 'INSERT INTO accepts (acc_vol_id,acc_task_id)
	VALUES (:user_id, :task_id);';
	$stmt = $pdo-> prepare($query);
	$stmt->bindParam(':user_id', $user_id);
	$stmt->bindParam(':task_id', $task_id);
	$stmt-> execute();
}

echo $task_id;
//pare to id tou task vres to kanto insert sta accepted 