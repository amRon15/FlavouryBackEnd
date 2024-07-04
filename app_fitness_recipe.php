<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getFitnessRecipe($conn, $RNo, $Uid)
{
    $sql = "SELECT R.Rid, R.Uid, R.RName, R.Category, R.CookTime, R.Description, R.Likes, R.Serving, R.Imgid, U.Username, U.Iconid FROM recipe AS R, user AS U WHERE R.Uid = U.Uid AND R.Uid NOT IN('$Uid') AND Category = 'Fitness' ORDER BY Likes DESC LIMIT $RNo";
    $result = mysqli_query($conn, $sql);
    if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $recipe[] = $row;
        }
        mysqli_free_result($result);
        $conn->close();
        return $recipe;

    }

}


if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['RNo'], $_GET['Uid'])) {
        $RNo = $_GET['RNo'];
        $Uid = $_GET['Uid'];
        $response = getFitnessRecipe($conn, $RNo, $Uid);
    } else {
        $response = array("status" => "error", "message" => "Failed to GET fitness recipe");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

header("Content-Type: application/json");

echo json_encode($response);

?>