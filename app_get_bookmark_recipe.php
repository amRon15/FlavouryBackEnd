<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getBookmarkRecipe($conn, $Uid)
{
    $sql = "SELECT R.* FROM recipe as R, bookmark as B WHERE B.Rid = R.Rid AND Uid='$Uid ORDER BY B.CreateDate";
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

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['Uid'])) {
        $Uid = $_GET['Uid'];
        $response = getBookmarkRecipe($conn, $Uid);
    } else {
        $response = array("status" => "error", "message" => "Failed to GET bookmarked recipe");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

header('Content-Type: application/json');

echo json_encode($response);

?>