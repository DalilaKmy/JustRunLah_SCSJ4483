<?php
// header('Access-Control-Allow-Origin: *');
// header("Access-Control-Allow-Methods: GET, POST, OPTIONS, DELETE");

require 'db.php';

//$id = $_POST["id"];
$name = $_POST["name"];
$email = $_POST["email"];
$password = $_POST["password"];
$ic = $_POST["ic"];
$gender = $_POST["gender"];
$phone = $_POST["phone"];

try {
    $sql = "INSERT INTO register (name,email,password,ic,gender,phone) VALUES (:name,:email,:password,:ic,:gender,:phone)";
    $db = new db();
    // Connect
    $db = $db->connect();
    $stmt = $db->prepare($sql);

    //$stmt->bindValue(':id', $id);
    $stmt->bindValue(':name', $name);
    $stmt->bindValue(':email', $email);
    $stmt->bindValue(':password', $password);
    $stmt->bindValue(':ic', $ic);
    $stmt->bindValue(':gender', $gender);
    $stmt->bindValue(':phone', $phone);

    $stmt->execute();
    $count = $stmt->rowCount();
    $db = null;

    $data = array(
        "status" => "success",
        "rowcount" =>$count
    );
    echo json_encode($data);
} catch (PDOException $e) {
    $data = array(
        "status" => "fail"
    );
    echo json_encode($data);
}
