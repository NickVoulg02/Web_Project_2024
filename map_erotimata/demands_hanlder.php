<?php
require_once 'db_connect.php';

$query = 'SELECT Cit.cit_lat, Cit.cit_long, Cit.cit_id, task_acceptance_date,task_submission_date,Cit.cit_name,Cit.cit_laname, task_completion_date, Dem.dem_type, accepts.acc_vol_id, accepts.acc_task_id,veh.veh_id, Pro.pr_name
FROM citizen Cit
RIGHT JOIN demands Dem ON Cit.cit_id = Dem.dem_cit_id
LEFT JOIN task ON task_dem_id = Dem.dem_id
LEFT JOIN accepts ON task.task_id = accepts.acc_task_id
LEFT JOIN vehicle Veh ON Veh.veh_vol_id = accepts.acc_vol_id
LEFT JOIN product Pro ON Pro.pr_id = Dem.dem_pr_id
WHERE task_completion_date IS NULL;
';
$stmt = $pdo-> prepare($query);
$stmt-> execute();

$data=[];
$data['Demands'] = [];
$data['Vehicles'] = [];
while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){

array_push($data['Demands'], $result);}



$query = 'SELECT veh_id,longtitude,latitude FROM vehicle
';
$stmt = $pdo-> prepare($query);
$stmt-> execute();

while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){

array_push($data['Vehicles'], $result);}


echo json_encode($data);