<?php

require_once('conn.php');

$conn = connectToDatabase();

$sql = "SELECT * FROM recipe";
$result = $conn->query($sql);

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');

if ($result->num_rows > 0) {
    $recipe = array();

    while ($row = $result->fetch_assoc()) {
        $recipe[] = $row;
    }

    $json = json_encode($recipe);
    echo $json;
} else {
    echo "No recipes found.";
}

$conn->close();
?>