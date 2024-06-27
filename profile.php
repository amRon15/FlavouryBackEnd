<?php

require_once ('conn.php');

$conn = connectToDatabase();

$Uid = $_GET['Uid'];

function getUserInfo($conn, $Uid)
{
    $result = mysqli_query($conn, "SELECT Username, Iconid FROM user WHERE Uid = '$Uid'");
    $userData = mysqli_fetch_assoc($result);
    mysqli_free_result($result);
    return $userData;
}

$userData = getUserInfo($conn, $Uid);

mysqli_close($conn);

header('Content-Type: application/json');

echo json_encode($userData);

?>