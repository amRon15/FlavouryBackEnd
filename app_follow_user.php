<?php

require_once ('conn.php');
$conn = connectToDatabase();

function followUser($conn, $Uid, $Followid)
{
    $sql = "INSERT INTO userfollow VALUES('$Uid', '$Followid')";
    $result = mysqli_query($conn, $sql);
    
    $conn ->close();
    
    return $result;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Uid'], $_POST['Followid'])) {
        $Uid = $_POST['Uid'];
        $Followid = $_POST['Followid'];
        $responseFollow = followUser($conn, $Uid, $Followid);

        if ($responseFollow) {
            $response = array('status'=>'success','message'=> 'Follow user successfully');
        }else{
            $response = array('status'=>'error', 'message'=> 'Failed to follow'); 
        }
    }else{
        $response = array('status'=> 'error','message'=> 'Incomplete parameters');
    }
}else{
    $response = array('status'=> 'error','message'=> 'Invalid request method');
}



header('Content-Type: application/json');
echo json_encode($response);
?>