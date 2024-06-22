<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getRecipe($conn, $RName)
{
    $sql = "SELECT * FROM recipe WHERE RName LIKE '%$RName%'";
    $result = mysqli_query($conn, $sql);

    if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $recipe[] = $row;
        }
        mysqli_free_result($result);
        return $recipe;

    }
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['RName'])) {
        $RName = $_GET['RName'];
        $response = getRecipe($conn, $RName);
    } else {
        $response = array('status' => 'error', 'message' => 'Failed to GET');
    }
} else {
    $response = array('status' => 'error', 'message' => 'GET method failed');
}

$conn->close();

header("Content-Type: application/json");

echo json_encode($response);

?>