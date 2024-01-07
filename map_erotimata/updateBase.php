<?php
require_once 'db_connect.php';

$longtitude = $_POST['longtitude'];
$latitude = $_POST['latitude'];

$query = 'UPDATE base SET longtitude='. $longtitude.',latitude='.$latitude.'WHERE id=0';
$stmt = $pdo-> prepare($query);
$stmt-> execute();