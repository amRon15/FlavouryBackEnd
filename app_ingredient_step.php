<?php

require_once ('conn.php');

$conn = connectToDatabase();

function getStepNIngredient($conn, $Rid) {
    $ingredientSql = "SELECT recipeingredient.Ingredient, recipeingredient.Portion from recipeingredient WHERE Rid = '$Rid';";
    $stepSql= "SELECT recipestep.Step from recipestep WHERE Rid = '$Rid' ORDER BY Sid;";

    $stepResult = mysqli_query($conn, $stepSql);
    if ($stepResult->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($stepResult)) {
            $step[] = $row;
        }
        mysqli_free_result($stepResult);
    }

    $ingredientResult = mysqli_query($conn, $ingredientSql);
    if ($ingredientResult->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($ingredientResult)) {
            $ingredient[] = $row;
        }
        mysqli_free_result($ingredientResult);
    }

    if ($step && $ingredient){
        $response = array("step"=> $step, "ingredient"=> $ingredient);
    }else{
        $response = array("status"=> "error", "message"=>"Failed to get step of ingredient from database");
    }
    return $response;
}


if ($_SERVER['REQUEST_METHOD']=="GET"){
    if (isset( $_GET["Rid"])){
        $Rid = $_GET["Rid"];
        $response = getStepNIngredient($conn, $Rid);
    }else{
        $response = array("status"=>"error", "message"=> "Failed to GET step and ingredient");
    }
}else{
    $response = array("status"=> "error","message"=> "Failed to START GET");
}

$conn -> close();

header("Content-Type: application/json");

echo json_encode($response);

?>