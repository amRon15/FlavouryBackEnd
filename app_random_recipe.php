<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getRandomRecipe($conn, $Uid, $RNo)
{
    $RNOs = json_decode($RNo);
    $sql = "SELECT * from recipe WHERE recipe.Rid NOT IN($RNOs) AND recipe.Uid != $Uid ORDER BY RAND() LIMIT 18";
    $result = mysqli_query($conn, $sql);
    if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $recipe[] = $row;
        }
        return $recipe;
    }
    mysqli_free_result($result);
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['Rid'], $_GET['Uid'])) {
        $Rid = $_GET['Rid'];
        $Uid = $_GET['Uid'];
        $response = getRandomRecipe($conn, $Uid, $RNo);
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