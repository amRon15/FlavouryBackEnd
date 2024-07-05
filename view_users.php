<?php

require_once('conn.php');

$conn = connectToDatabase();

$sql = "SELECT Uid, Username, Email FROM user";
$result = $conn->query($sql);

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');

if ($result->num_rows > 0) {
    $user = array();

    while ($row = $result->fetch_assoc()) {
        $user[] = $row;
    }

    $json = json_encode($user);
    echo $json;
} else {
    echo "No users found.";
}

$conn->close();
?>