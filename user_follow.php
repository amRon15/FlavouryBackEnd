<?php

require_once("conn.php");

$conn = connectToDatabase();

function follow($conn, $UId, $FollowId){
    $sql = "INSERT INTO usefollow (Uid, Followid) VALUES ('$UId', '$FollowId')";
    $result = mysqli_query($conn, $sql);

    if($result){
        $response = array('status' => 'success');
    }else{
        $response = array('status'=> 'error');
    }

    $conn->close();

    return $response;
}

if ($_SERVER ["REQUEST_METHOD"] == "POST"){
    if (isset($_POST["Uid"]) && isset($_POST["Followid"])){
        $Uid = $_POST["Uid"];
        $Followid = $_POST["Followid"];

        $response = follow($conn, $Uid, $Followid);
    }else{
        $response = array('status' => 'error','message'=> 'Incomplete parameter');
    }
}else{
    $response = array('status'=> 'error', 'message'=> 'Invalid request method');
}


header('Content-Type: application/json');
echo json_encode($response);

?>