<?php

require_once ('conn.php');

$conn = connectToDatabase();

function isUserFollowed($conn, $Uid, $Followid)
{
    $sql = "SELECT * FROM userfollow WHERE Uid='$Uid' 
    AND Followid='Followid'";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $response = array("status" => "success", "message" => "You already follow user");
    } else {
        $response = array("status" => "success", "message" => "You didn't follow user");
    }
    return $response;
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['Uid'], $_GET['Followid'])) {
        $Uid = $_GET['Uid'];
        $Followid = $_GET['Followid'];

        $response = isUserFollowed($conn, $Uid, $Followid);
    } else {
        $response = array('status' => 'error', 'message' => 'Fail to start GET');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Failed to GET / invalid parameter');
}

$conn->close();

header('Content-Type: application/json');

echo json_encode($response);

?>