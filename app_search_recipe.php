<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getRecipe($conn, $RName, $Uid)
{
    $sql = "SELECT recipe.*, user.Username, user.Iconid FROM recipe, user WHERE recipe.Uid = user.Uid AND recipe.Uid != '$Uid' AND recipe.RName LIKE '%$RName%';
";
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
        $Uid = $_GET["Uid"];
        $response = getRecipe($conn, $RName, $Uid);
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