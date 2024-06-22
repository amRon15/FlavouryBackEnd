<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getUserInfo($conn, $Uid)
{
    $sql = "SELECT 
            (SELECT COUNT(Rid) from recipe WHERE Uid = '$Uid') AS recipeNum, 
            (SELECT COUNT(*) from userfollow WHERE Uid = '$Uid') AS followingNum, 
            (SELECT COUNT(*) from userfollow WHERE followid = '$Uid') AS followerNum;";

    $result = mysqli_query($conn, $sql);

    if ($result) {
        $userInfo = mysqli_fetch_assoc($result);
        mysqli_free_result($result);
        return $userInfo;
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    if (isset($_GET['Uid'])) {
        $Uid = $_GET['Uid'];
        $response = getUserInfo($conn, $Uid);
    } else {
        $response = array("status" => "error", "message" => "Failed to get userInfo");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

$conn->close();

header("Content-Type: application/json");

echo json_encode($response);

?>