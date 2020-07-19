<?php
//PART: Dalila Al-Husna (A16CS0032)

// header('Access-Control-Allow-Origin: *');
// header("Access-Control-Allow-Methods: GET, POST, OPTIONS, DELETE");

require 'db.php';

$sql = "SELECT * FROM run WHERE discount > 0";

try {
    // Get DB Object
    $db = new db();
    // Connect
    $db = $db->connect();

    $stmt = $db->query($sql);
    $drun = $stmt->fetchAll(PDO::FETCH_OBJ);
    $db = null;
    echo json_encode($drun);
} catch (PDOException $e) {
    $data = array(
        "status" => "fail"
    );
    echo json_encode($data);
}
