<?php
require_once ('conn.php');
$conn = connectToDatabase();

function GetLiked($conn, $Uid)
{
    $sql = "SELECT 
    L.Rid,
    L.Uid AS LUid,
    LikerUser.Iconid AS LIconid,
    LikerUser.Username AS LUsername,
    R.Uid AS Uid,
    R.RName,
    R.Category,
    R.CookTime,
    R.Description,
    R.Likes,
    R.Serving,
    R.Imgid,
    OwnerUser.Username AS Username,
    OwnerUser.Iconid AS Iconid
FROM 
    recipe AS R
JOIN 
    user AS OwnerUser ON R.Uid = OwnerUser.Uid
JOIN 
    likerecipe AS L ON L.Rid = R.Rid
JOIN 
    user AS LikerUser ON L.Uid = LikerUser.Uid
WHERE
    R.Uid = ?";

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

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
echo json_encode($response);
?>