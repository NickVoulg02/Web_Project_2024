<?php
require_once 'db_connect.php';

$query="
SELECT dem_type,cit_name,cit_laname, cit_lat,cit_long, dem_id, task_submission_date,pr_name,task_acceptance_date
FROM volunteer
JOIN accepts ON volunteer.vol_id = accepts.acc_vol_id
JOIN task ON accepts.acc_task_id = task.task_id
JOIN demands ON task.task_dem_id = demands.dem_id
JOIN citizen ON demands.dem_cit_id = citizen.cit_id
JOIN product ON pr_id = dem_pr_id
WHERE vol_username = 'emmo';";

$stmt = $pdo-> prepare($query);
$stmt-> execute();

$data=[];
$data['accDem'] = [];
$data['userInfo'] = [];
while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){
	array_push($data['accDem'], $result);
}
$query="
SELECT * FROM volunteer	WHERE vol_username = 'emmo';";

$stmt = $pdo-> prepare($query);
$stmt-> execute();


while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){
	array_push($data['userInfo'], $result);
}



echo json_encode($data);
