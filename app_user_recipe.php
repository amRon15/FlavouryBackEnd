<?php

require_once ('conn.php');

$conn = connectToDatabase();


function getMyUserRecipe($conn, $Uid)
{
    $sql = "SELECT * FROM recipe, recipestep, recipeingredient WHERE recipe.Uid='$Uid' AND recipestep.Rid = recipe.Rid AND recipeingredient.Rid = recipe.Rid";
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

header('Content-Type: application/json');

echo json_encode($response);

?>