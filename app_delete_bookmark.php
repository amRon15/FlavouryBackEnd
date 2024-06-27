<?php

require_once ('conn.php');

$conn = connectToDatabase();

function deleteBookmark($conn, $Uid, $Rid)
{
    $sql = "DELETE FROM bookmark WHERE Uid = '$Uid' AND Rid = '$Rid'";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $response = array("status" => "success", "message" => "Delete recipe successful!");
    } else {
        $response = array("status" => "error", "message" => "Delete recipe failed");
    }

    mysqli_free_result($result);

    return $response;
}

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    if (isset($_POST["Uid"], $_POST["Rid"])) {
        $Uid = $_POST['Uid'];
        $Rid = $_POST['Rid'];
        $response = deleteBookmark($conn, $Uid, $Rid);
    } else {
        $response = array('status' => 'error', 'message' => 'Failed to post');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Wrong request method');
}

$conn->close();

header('Content-Type: application/json');

echo json_encode($response);

?>