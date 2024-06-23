<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getFollowingRecipe($conn, $Uid, $RNo)
{
    $sql = "SELECT R.Rid, R.Uid, R.RName, R.Category, R.CookTime, R.Description, R.Likes, R.Serving, R.Imgid, U.Username, U.Iconid FROM user AS U, recipe AS R, userfollow AS UF WHERE R.Uid = UF.Followid AND R.Uid != UF.Uid AND UF.followid = U.Uid AND UF.Uid = '$Uid'  ORDER BY R.CreateDate LIMIT $RNo";
    $noFollowerSql = "SELECT * FROM recipe WHERE recipe.Uid != '$Uid' ORDER BY RAND() LIMIT 10;";
    $result = mysqli_query($conn, $sql);
    $recipe = array();

    if (!$result) {
        $recipe = array("status"=>"error","message"=> "Get result failed");
    }

    if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $recipe[] = $row;
        }
        mysqli_free_result($result);
    }

    if (count($recipe) < 10) {
        mysqli_free_result($result);
        $result = mysqli_query($conn, $noFollowerSql);
        if ($result->num_rows > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($recipe, $row);
            }
        }
        mysqli_free_result($result);
    }
    $conn->close();
    return $recipe;

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