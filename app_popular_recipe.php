<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getPopularRecipe($conn, $RNo)
{
    $sql = "SELECT * FROM recipe ORDER BY Likes LIMIT '$RNo'";
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
        $response = getPopularRecipe($conn, $RNo);
    } else {
        $response = array("status" => "error", "message" => "Failed to GET popular recipe");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

header("Content-Type: application/json");

echo json_encode($response);

?>