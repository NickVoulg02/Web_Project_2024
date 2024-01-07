<?php
require_once 'db_connect.php';

//$user_name = "sergkrist";

$query="SELECT dem_type,cit_name,cit_laname, cit_lat,cit_long, task_id, task_submission_date,pr_name
FROM demands 
LEFT JOIN task 
ON task_dem_id = dem_id 
LEFT JOIN citizen 
ON cit_id = dem_cit_id
LEFT JOIN product
ON dem_pr_id = pr_id
WHERE task_acceptance_date IS NULL;";

$stmt = $pdo-> prepare($query);
$stmt-> execute();

$data = [];
while($result= $stmt-> fetch(PDO::FETCH_ASSOC) ){
	array_push($data, $result);
}



echo json_encode($data);