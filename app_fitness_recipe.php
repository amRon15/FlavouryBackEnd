<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getFitnessRecipe($conn, $RNo)
{
    $sql = "SELECT * FROM recipe WHERE Catergory=Fitness ORDER BY Likes LIMIT '$RNo'";
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
    if (isset($_GET['RNo'])) {
        $RNo = $_GET['RNo'];
        $response = getFitnessRecipe($conn, $RNo);
    } else {
        $response = array("status" => "error", "message" => "Failed to GET fitness recipe");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

header("Content-Type: application/json");

echo json_encode($response);

?>