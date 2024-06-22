<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getUser($conn, $UName)
{
    $sql = "SELECT Uid, Username, Iconid FROM user WHERE Username LIKE '%$UName%'";
    $result = mysqli_query($conn, $sql);
    if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $user[] = $row;
        }
        mysqli_free_result($result);
        return $user;
    }
}

if ($_SERVER['REQUEST_METHOD'] === "GET") {
    if (isset($_GET["UName"])) {
        $UName = $_GET["UName"];
        $response = getUser($conn, $UName);
    } else {
        $response = array("status" => "error", "message" => "Failed to GET user");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}
$conn->close();

header('Content-Type: application/json');

echo json_encode($response);

?>