<?php

require_once ("conn.php");

$conn = connectToDatabase();

function saveRecipe($conn, $Uid, $Rid)
{
    $sql = "INSERT INTO saverecipe VALUES('$Uid', '$Rid');";

    $result = mysqli_query($conn, $sql);
    if ($result) {
        $response = array("status" => "success", "message" => "Save recipe successful");
    } else {
        $response = array("status" => "error", "message" => "Failed to save recipe");
    }

    mysqli_free_result($result);

    return $response;
}


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['Uid'], $_POST['Rid'])) {
        $Uid = $_POST['Uid'];
        $Rid = $_POST['Rid'];
        $response = saveRecipe($conn, $Uid, $Rid);
    } else {
        $response = array('status' => 'error', 'message' => 'Failed to start save recipe');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Failed to POST');
}

$conn ->close();

header('Content-Type: application/json');

echo json_encode($response);


?>