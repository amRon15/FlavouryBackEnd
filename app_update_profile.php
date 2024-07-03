<?php

require_once("conn.php");

$conn = connectToDatabase();

function updateProfile($conn, $Uid, $Iconid){
    $sql = "UPDATE user SET Iconid = '$Iconid' WHERE Uid = '$Uid'";
    $result = mysqli_query($conn, $sql);
    if($result){
        return array("status"=>"success", "message"=> "Update profile successful");
    } else{
        return array("status"=> "error", "message"=> "Update profile failed");
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['Uid'], $_POST['Iconid'])){
        $Uid = $_POST['Uid'];
        $Iconid = $_POST['Iconid'];

        $response = updateProfile($conn, $Uid, $Iconid);

    }else{
        $response = array("status" => "error", "message" => "Failed to POST user profile");
    }
} else {
    $response = array("status" => "error", "message" => "POST method failed");
}

header("Content-Type: application/json");

echo json_encode($response);
?>