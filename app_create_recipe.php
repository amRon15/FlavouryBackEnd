<?php

require_once ('conn.php');

$conn = connectToDatabase();

function prepareData($data)
{
    return $data;
}

function createRecipe($conn, $Uid, $RName, $Category, $CookTime, $Description, $Serving, $Imgid)
{

    $sql = "INSERT INTO recipe (Uid, RName, Category, CookTime, Description, CreateDate, Likes, Serving, Imgid)
    VALUES ('$Uid', '$RName', '$Category', '$CookTime', '$Description', current_timestamp(), '0', '$Serving', '$Imgid')";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $generatedRid = mysqli_insert_id($conn);

        $steps = $_POST['Step'];
        $decodeSteps = json_decode($steps, true);
        $stepCount = count($decodeSteps);

        $stmtSteps = mysqli_prepare($conn, "INSERT INTO recipestep (`Rid`, `Sid`, `Step`) VALUES (?, ?, ?)");
        mysqli_stmt_bind_param($stmtSteps, "iis", $generatedRid, $sid, $step);

        for ($sid = 1; $sid <= $stepCount; $sid++) {
            $step = $decodeSteps[$sid - 1];
            mysqli_stmt_execute($stmtSteps);
        }

        mysqli_stmt_close($stmtSteps);
        $ingredients = $_POST['Ingredient'];
        $decodeIngrendient = json_decode($ingredients, true);

        $ingredientStmt = mysqli_prepare($conn, "INSERT INTO recipeingredient (`Rid`, `Ingredient`, `Portion`) VALUES (?, ?, ?)");
        mysqli_stmt_bind_param($ingredientStmt, "iss", $generatedRid, $ingredient, $portion);

        foreach ($decodeIngrendient as $item) {
            $ingredient = $item['ingredient'];
            $portion = $item['portion'];
            mysqli_stmt_execute($ingredientStmt);
        }

        mysqli_stmt_close($ingredientStmt);
    }

    $conn->close();

    return $result;
}

session_start();

$response = array();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Uid'], $_POST['RName'], $_POST['Category'], $_POST['CookTime'], $_POST['Description'], $_POST['Serving'], $_POST['Imgid'])) {
        $Uid = $_POST['Uid'];
        $RName = $_POST['RName'];
        $Category = $_POST['Category'];
        $CookTime = $_POST['CookTime'];
        $Description = $_POST['Description'];
        $Serving = $_POST['Serving'];
        $Imgid = $_POST['Imgid'];

        $recipeResponse = createRecipe($conn, $Uid, $RName, $Category, $CookTime, $Description, $Serving, $Imgid);
        if ($recipeResponse) {
            $response = array('status' => 'success', 'message' => 'Recipe added successfully');
        } else {
            $response = array('status' => 'error', 'message' => 'Already exist');
        }
    } else {
        $response = array('status' => 'error', 'message' => 'Incomplete parameters'); //id !=id
    }
} else {
    $response = array('status' => 'error', 'message' => 'Invalid request method');
}


header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
echo json_encode($response);

?>