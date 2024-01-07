<?php
require_once 'db_connect.php';

$query = 'SELECT longtitude,latitude FROM vehicle';
$stmt = $pdo-> prepare($query);
$stmt-> execute();

$data = [];
while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){

array_push($data, $result);}

#var_dump($data);

#echo $result['z'];
#echo $result['x'];
echo json_encode($data);