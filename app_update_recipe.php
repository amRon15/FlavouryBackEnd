<?php

require_once ('conn.php');

$conn = connectToDatabase();

function updateRecipe($conn, $Rid, $Uid, $RName, $Category, $CookTime, $Description, $Serving, $Imgid)
{

    $sql = "UPDATE recipe SET RName='$RName', Category='$Category', CookTime='$CookTime', Description='$Description', Serving='$Serving', Imgid='$Imgid' WHERE Rid='$Rid' AND Uid='$Uid'";
    $result = mysqli_query($conn, $sql);

    if ($result) {

        $steps = $_POST['Step'];
        $decodeSteps = json_decode($steps, true);
        $stepCount = count($decodeSteps);

        $deleteStep = "DELETE FROM recipestep WHERE Rid='$Rid'";
        $deleteStepResult = mysqli_query($conn, $deleteStep);

        if ($deleteStepResult) {
            $stmtSteps = mysqli_prepare($conn, "INSERT INTO recipestep (Rid, Sid, Step) VALUES (?, ?, ?)");
            mysqli_stmt_bind_param($stmtSteps, "iis", $Rid, $sid, $step);

            for ($sid = 1; $sid <= $stepCount; $sid++) {
                $step = $decodeSteps[$sid - 1];
                mysqli_stmt_execute($stmtSteps);
            }
        }
        mysqli_stmt_close($stmtSteps);

        $ingredients = $_POST['Ingredient'];
        $decodeIngrendient = json_decode($ingredients, true);

        $deleteIngredient = "DELETE FROM recipeingredient WHERE Rid='$Rid'";
        $deleteIngredientResult = mysqli_query($conn, $deleteIngredient);


        if ($deleteIngredientResult) {
            $ingredientStmt = mysqli_prepare($conn, "INSERT INTO recipeingredient (`Rid`, `Ingredient`, `Portion`) VALUES (?, ?, ?)");
            mysqli_stmt_bind_param($ingredientStmt, "iss", $Rid, $ingredient, $portion);

            foreach ($decodeIngrendient as $item) {
                $ingredient = $item['ingredient'];
                $portion = $item['portion'];
                mysqli_stmt_execute($ingredientStmt);
            }
        }
        mysqli_stmt_close($ingredientStmt);
    }

    $conn->close();

    return $result;
}

session_start();

$response = array();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Rid'], $_POST['Uid'], $_POST['RName'], $_POST['Category'], $_POST['CookTime'], $_POST['Description'], $_POST['Serving'], $_POST['Imgid'])) {
        $Rid = $_POST['Rid'];
        $Uid = $_POST['Uid'];
        $RName = $_POST['RName'];
        $Category = $_POST['Category'];
        $CookTime = $_POST['CookTime'];
        $Description = $_POST['Description'];
        $Serving = $_POST['Serving'];
        $Imgid = $_POST['Imgid'];

        $recipeResponse = updateRecipe($conn, $Rid, $Uid, $RName, $Category, $CookTime, $Description, $Serving, $Imgid);
        if ($recipeResponse) {
            $response = array('status' => 'success', 'message' => 'Recipe update successfully');
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