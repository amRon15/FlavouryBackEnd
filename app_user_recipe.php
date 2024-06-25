<?php

require_once ('conn.php');

$conn = connectToDatabase();


function getMyUserRecipe($conn, $Uid)
{
    $sql = "SELECT * FROM recipe WHERE recipe.Uid='$Uid'";
    $result = mysqli_query($conn, $sql);

    if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $recipe[] = $row;
        }
        return $recipe;
    }

}


if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    if (isset($_GET['Uid'])) {
        $Uid = $_GET['Uid'];
        $response = getMyUserRecipe($conn, $Uid);
    } else {
        $response = array('status' => 'error', 'message' => 'Failed to GET recipe');
    }
} else {
    $response = array('status' => 'error', 'message' => 'GET method failed');
}

$conn->close();

header('Content-Type: application/json');

echo json_encode($response);

?>