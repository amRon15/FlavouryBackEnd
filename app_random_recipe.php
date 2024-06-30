<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getRandomRecipe($conn, $Uid, $Rid)
{
    $sql = "SELECT R.*, U.Username, U.Iconid FROM recipe AS R, user AS U WHERE R.Rid NOT IN('$Rid') AND R.Uid = U.Uid AND R.Uid != '$Uid' ORDER BY RAND() LIMIT 18";
    $result = mysqli_query($conn, $sql);
    if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $recipe[] = $row;
        }
        mysqli_free_result($result);
    } else {
        $recipe = array("status" => "error", "Failed to get from");
    }
    return $recipe;
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['Rid'], $_GET['Uid'])) {
        $Rid = urldecode($_GET['Rid']);
        $Uid = $_GET['Uid'];
        $response = getRandomRecipe($conn, $Uid, $Rid);
    } else {
        $response = array("status" => "success", "message" => "Failed to get random recipe");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

$conn->close();

header('Content-Type: application/json');

echo json_encode($response);

?>