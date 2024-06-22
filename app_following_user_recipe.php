<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getFollowingRecipe($conn, $Uid, $RNo)
{
    $sql = "SELECT * FROM recipe, userfollow WHERE recipe.Uid = userfollow.Followid AND recipe.Uid != userfollow.Uid AND userfollow.Uid = '$Uid' ORDER BY Likes LIMIT '$RNo'";
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
        $response = getFollowingRecipe($conn, $Uid, $RNo);
    } else {
        $response = array("status" => "error", "message" => "Failed to GET fitness recipe");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

header("Content-Type: application/json");

echo json_encode($response);

?>