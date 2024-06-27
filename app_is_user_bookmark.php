<?php

require_once ('conn.php');

$conn = connectToDatabase();

function isUserFollowed($conn, $Uid, $Rid)
{
    $sql = "SELECT * FROM userfollow WHERE Uid='$Uid' AND Followid='$Rid'";
    $result = mysqli_query($conn, $sql);
    $data = mysqli_fetch_assoc($result);
    return $data;
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['Uid'], $_GET['Rid'])) {
        $Uid = $_GET['Uid'];
        $Rid = $_GET['Rid'];

        $response = isUserFollowed($conn, $Uid, $Rid);
    }
}

$conn->close();

header('Content-Type: application/json');

echo json_encode($response);

?>