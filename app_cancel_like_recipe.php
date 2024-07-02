<?php

require_once('conn.php');

$conn=connectToDatabase();

function unlike($conn, $Uid, $Rid) {
    $sql = "DELETE FROM likerecipe WHERE Uid='$Uid' AND Rid='$Rid'";
    $sql2 = "UPDATE recipe SET Likes = Likes - 1 WHERE Rid='$Rid'";
    $result = mysqli_query($conn, $sql);
    $result2 = mysqli_query($conn, $sql2);

    if ($result && $result2) {
        return true;
    } else {
        return false;
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Uid'], $_POST['Rid'])) {
        $Uid = $_POST['Uid'];
        $Rid = $_POST['Rid'];

        $likeResponse = unlike($conn, $Uid, $Rid);  
        if ($likeResponse) {
            $response = array('status' => 'success', 'message' => 'Cancel liked!');
        } else {
            $response = array('status' => 'error', 'message' => 'Failed to cancel like');
        }
    } else {
        $response = array('status' => 'error', 'message' => 'Incomplete parameters'); 
    }
} else {
    $response = array('status' => 'error', 'message' => 'Invalid');
}

mysqli_close($conn);

header('Content-Type: application/json');

echo json_encode($response);

?>