<?php

require_once('conn.php');

$conn = connectToDatabase();

function signUp($conn, $Username, $Email, $Password, $Iconid)
{
    $stmt = mysqli_prepare($conn, "INSERT INTO user (Username, Email, Password, Iconid) VALUES (?, ?, ?, ?)");

    $Username = prepareData($Username);
    $Email = prepareData($Email);
    $Password = prepareData($Password);
    $PasswordHashed = password_hash($Password, PASSWORD_DEFAULT);
    $Iconid = prepareData($Iconid);

    mysqli_stmt_bind_param($stmt, "ssss", $Username, $Email, $PasswordHashed, $Iconid);
    $result = mysqli_stmt_execute($stmt);

    $Uid = mysqli_insert_id($conn);


    if ($result) {
        $response = array('status' => 'success', 'message' => 'Sign up successful', 'Uid' => $Uid);
    } else {
        $response = array('status' => 'error', 'message' => 'Username already exists');
    }

    mysqli_stmt_close($stmt);

    return $response;
}


function prepareData($data)
{
    return $data;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Username'], $_POST['Email'], $_POST['Password'], $_POST['Iconid'])) {
        $username = $_POST['Username'];
        $email = $_POST['Email'];
        $password = $_POST['Password'];
        $iconid = $_POST['Iconid'];

        $response = signUp($conn, $username, $email, $password, $iconid);
    } else {
        $response = array('status' => 'error', 'message' => 'Incomplete parameters');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Invalid request method');
}

header('Content-Type: application/json');
echo json_encode($response);

?>