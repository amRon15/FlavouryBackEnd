<?php

require_once ('conn.php');

$conn = connectToDatabase();

function deleteRecipe($conn, $Uid, $Rid)
{
    $stepSql = "DELETE FROM recipestep WHERE Rid='$Rid'";
    $ingredientSql = "DELETE FROM recipeingredient WHERE Rid='$Rid'";
    $recipeSql = "DELETE FROM recipe WHERE Rid='$Rid' AND Uid='$Uid'";
    $deleteBookmark = "DELETE FROM bookmark WHERE Rid='$Rid'";
    $deleteLike = "DELETE FROM likerecipe WHERE Rid='$Rid'";

    if (mysqli_query($conn, $stepSql)) {
        if (mysqli_query($conn, $ingredientSql)) {
            if (mysqli_query($conn, $deleteBookmark) && mysqli_query($conn, $deleteLike) && mysqli_query($conn, $recipeSql) ) {
                
                $response = array("status" => "success", "message" => "Delete recipe successful");
            } else {
                $response = array("status" => "error", "message" => "Failed to delete recipe");
            }
        } else {
            $response = array("status" => "error", "message" => "Failed on deleting ingredient");
        }
    } else {
        $response = array("status" => "error", "message" => "Failed on deleteing step");
    }

    return $response;
}
;

if ($_SERVER['REQUEST_METHOD'] === "POST") {
    if (isset($_POST['Uid'], $_POST['Rid'])) {
        $Uid = $_POST['Uid'];
        $Rid = $_POST['Rid'];

        $response = deleteRecipe($conn, $Uid, $Rid);

    } else {
        $response = array('status' => 'error', 'message' => 'Failed to start delete recipe');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Failed to POST');
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($response);

?>