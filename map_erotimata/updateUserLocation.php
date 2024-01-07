<?php
require_once 'db_connect.php';

$longtitude = $_POST['longtitude'];
$latitude = $_POST['latitude'];
$vol_username = 'emmo';

$query = 'UPDATE volunteer SET vol_long= :vol_long ,vol_lat= :vol_lat WHERE vol_username= :vol_username';
$stmt = $pdo-> prepare($query);
$stmt->bindParam(':vol_username', $vol_username);
$stmt->bindParam(':vol_long', $longtitude);
$stmt->bindParam(':vol_lat', $latitude);
$stmt-> execute();

echo 'ok';