<?php

require_once ('conn.php');

$conn = connectToDatabase();

function deleteFollow($conn, $Uid, $Followid)
{
    $sql = "DELETE FROM userfollow WHERE Uid='$Uid' AND Followid='$Followid'";
    if (mysqli_query($conn, $sql)) {
        $response = array("status" => "sccuess", "message" => "You unfollow this user");
    } else {
        $response = array("status" => "error", "message" => "Failed to unfollow. You didn't follow user yet");
    }
    return $response;

}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Uid'], $_POST['Followid'])) {
        $Uid = $_POST['Uid'];
        $Followid = $_POST['Followid'];

        $response = deleteFollow($conn, $Uid, $Followid);
    } else {
        $response = array('status' => 'error', 'message' => 'Failed to start delete follow');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Failed to POST / invalid METHOD');
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($response);

?>