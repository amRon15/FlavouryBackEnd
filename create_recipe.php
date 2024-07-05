<?php

require_once ('conn.php');

$conn = connectToDatabase();

function prepareData($data)
{
    return $data;
}

function createRecipe($conn, $Uid, $RName, $Category, $CookTime, $Description, $Serving, $Imgid)
{
    $stmt = mysqli_prepare($conn, "INSERT INTO recipe (Uid, RName, Category, CookTime, Description, CreateDate, Likes, Serving, Imgid) VALUES (?, ?, ?, ?, ?, current_timestamp(), 0, ?, ?)");

    mysqli_stmt_bind_param($stmt, "issssss", $Uid, $RName, $Category, $CookTime, $Description, $Serving, $Imgid);

    $result = mysqli_stmt_execute($stmt);

    if ($result) {
        $generatedRid = mysqli_insert_id($conn);

        $steps = $_POST['Step'];
        $stmtSteps = mysqli_prepare($conn, "INSERT INTO recipestep (Rid, Sid, Step) VALUES (?, ?, ?)");

        if ($stmtSteps) {
            mysqli_stmt_bind_param($stmtSteps, "iis", $generatedRid, $sid, $step);
            $stepCount = count($steps);
            for ($sid = 1; $sid <= $stepCount; $sid++) {
                $step = $steps[$sid - 1];
                mysqli_stmt_execute($stmtSteps);
            }
            mysqli_stmt_close($stmtSteps);
        } else {
            error_log("Failed to prepare statement for recipestep: " . mysqli_error($conn));
        }

        $ingredients = $_POST['Ingredient'];
        $portions = $_POST['Portion'];
        $ingredientStmt = mysqli_prepare($conn, "INSERT INTO recipeingredient (`Rid`, `Ingredient`, `Portion`) VALUES (?, ?, ?)");

        if ($ingredientStmt) {
            mysqli_stmt_bind_param($ingredientStmt, "iss", $generatedRid, $ingredient, $portion);
            for ($i = 0; $i < count($ingredients); $i++) {
                $ingredient = $ingredients[$i];
                $portion = $portions[$i];
                mysqli_stmt_execute($ingredientStmt);
            }
            mysqli_stmt_close($ingredientStmt);
        } else {
            error_log("Failed to prepare statement for recipeingredient: " . mysqli_error($conn));
        }
    }

    mysqli_stmt_close($stmt);

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
            header('Location: admin_main.php');
        } else {
            $response = array('status' => 'error', 'message' => 'Already exist');
            header('Location: admin_main.php');
        }
    } else {
        $response = array('status' => 'error', 'message' => 'Incomplete parameters');
        header('Location: admin_main.php');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Invalid request method');
    haeder('Location: admin_main.php');
}

$conn->close();

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
echo json_encode($response);

?>