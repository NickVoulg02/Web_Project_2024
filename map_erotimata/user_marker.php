<?php
require_once 'db_connect.php';

$user_name = "emmo";

$query="SELECT vol_long,vol_lat FROM volunteer WHERE vol_username= :user_name";
$stmt = $pdo-> prepare($query);
$stmt->bindParam(':user_name', $user_name);
$stmt-> execute();


$data = [];
while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){
	array_push($data, $result);
}


//if(data['user_type']==='Civillian'){}
//elseif(data['user_type']==='Volunteer')
//elseif(data['user_type']==='Admin')
//else print("error");

echo json_encode($data);