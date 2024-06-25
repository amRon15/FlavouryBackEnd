<?php

require_once ('conn.php');

$conn = connectToDatabase();

function prepareData($data)
{
    return $data;
}

function updateRecipe($conn, $Rid, $Uid, $RName, $Category, $CookTime, $Description, $Serving, $Imgid)
{

    $sql = "UPDATE recipe SET RName='$RName', Category='$Category', CookTime='$CookTime', Description='$Description', Serving='$Serving', Imgid='$Imgid' WHERE Rid='$Rid' AND Uid='$Uid'";
    $result = mysqli_query($conn, $sql);

    if ($result) {

        $steps = $_POST['Step'];
        $decodeSteps = json_decode($steps, true);
        $stepCount = count($decodeSteps);

        $stmtSteps = mysqli_prepare($conn, "UPDATE recipestep SET Rid=?, Sid=?, Step=? WHERE Rid=? AND Sid=?");
        mysqli_stmt_bind_param($stmtSteps, "iisii", $Rid, $Sid, $Step, $Rid, $Sid);

        for ($Sid = 1; $Sid <= $stepCount; $Sid++) {
            $Step = $decodeSteps[$Sid - 1];
            mysqli_stmt_execute($stmtSteps);
        }

        mysqli_stmt_close($stmtSteps);
        $ingredients = $_POST['Ingredient'];
        $decodeIngrendient = json_decode($ingredients, true);

        $ingredientStmt = mysqli_prepare($conn, "UPDATE recipeingredient Rid=?, Iid=?, Ingredient=?, Portion=? WHERE Rid=? AND Iid=?");
        mysqli_stmt_bind_param($ingredientStmt, "iissii", $Rid, $Iid, $ingredient, $portion, $Rid, $Iid);

        $Iid = 0;
        foreach ($decodeIngrendient as $item) {
            $Iid++;
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