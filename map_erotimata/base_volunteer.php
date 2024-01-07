<?php
require_once 'db_connect.php';

$vol_username = 'emmo';

$query = 'SELECT vol_long,vol_lat FROM volunteer WHERE vol_username= :vol_username';
$stmt = $pdo-> prepare($query);
$stmt->bindParam(':vol_username', $vol_username);
$stmt-> execute();

$data = [];
$data['volunteer']=[];
while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){

array_push($data['volunteer'], $result);}



$data['base']=[];
$query = 'SELECT longtitude,latitude FROM base';
$stmt = $pdo-> prepare($query);
$stmt-> execute();

while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){

array_push($data['base'], $result);}


echo json_encode($data);