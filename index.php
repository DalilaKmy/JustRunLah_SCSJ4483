<?php
//PART: Dalila Al-Husna (A16CS0032)
include_once("index.html");

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require 'vendor/autoload.php'; // '../vendor/autoload.php';
require 'api/db.php';

$app = new \Slim\App;

//API GET all discounted run
$app->get('/irun/drun/', function (Request $request, Response $response, array $args) {
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
});

$app->run();