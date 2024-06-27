<?php

require_once ('conn.php');

$conn = connectToDatabase();

function isUserFollowed($conn, $Uid, $Followid)
{
    $sql = "SELECT * FROM userfollow WHERE Uid='$Uid' AND Followid='$Followid'";
    $result = mysqli_query($conn, $sql);
    $data = mysqli_fetch_assoc($result);
    return $data;
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['Uid'], $_GET['Followid'])) {
        $Uid = $_GET['Uid'];
        $Followid = $_GET['Followid'];

        $response = isUserFollowed($conn, $Uid, $Followid);
    }
}

$conn->close();

header('Content-Type: application/json');

echo json_encode($response);

?>