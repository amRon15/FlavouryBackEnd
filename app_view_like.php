<?php
require_once ('conn.php');
$conn = connectToDatabase();

function GetLiked($conn, $Uid)
{
    $sql = "SELECT 
    L.Rid,
    L.Uid AS LikerUid,
    LikerUser.Iconid AS LikerIconId,
    LikerUser.Username AS LikerUsername,
    R.Uid AS RecipeOwnerUid,
    R.RName,
    R.Category,
    R.CookTime,
    R.Description,
    R.Likes,
    R.Serving,
    R.Imgid,
    OwnerUser.Username AS RecipeOwnerUsername,
    OwnerUser.Iconid AS RecipeOwnerIconId
FROM 
    recipe AS R
JOIN 
    user AS OwnerUser ON R.Uid = OwnerUser.Uid
JOIN 
    likerecipe AS L ON L.Rid = R.Rid
JOIN 
    user AS LikerUser ON L.Uid = LikerUser.Uid
WHERE
    L.Uid = ?";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $Uid);
    $stmt->execute();
    $result = $stmt->get_result();

    $like = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $like[] = $row;
        }
    }
    $stmt->close();
    return $like;
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['Uid'])) {
        $Uid = $_GET['Uid'];
        $response = GetLiked($conn, $Uid);
    } else {
        $response = array("status" => "error", "message" => "Failed to GET Like");
    }
} else {
    $response = array("status" => "error", "message" => "GET method failed");
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($response);
?>