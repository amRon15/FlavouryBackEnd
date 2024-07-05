<?php

require_once ('conn.php');

$conn = connectToDatabase();

function signUp($conn, $Username, $Email, $Password)
{
    $stmt = mysqli_prepare($conn, "INSERT INTO user (Username, Email, Password) VALUES (?, ?, ?)");

    $Username = prepareData($Username);
    $Email = prepareData($Email);
    $Password = prepareData($Password);
    $PasswordHashed = password_hash($Password, PASSWORD_DEFAULT);

    mysqli_stmt_bind_param($stmt, "sss", $Username, $Email, $PasswordHashed);
    $result = mysqli_stmt_execute($stmt);

    if ($result) {
        $response = array('status' => 'success', 'message' => 'Sign up successful', 'redirect' => 'admin_main.php');
        header('Location: admin_main.php');
    } else {
        $response = array('status' => 'error', 'message' => 'Username already exists');
        header('Location: admin_create_user.php');

    }

    mysqli_stmt_close($stmt);

    return $response;
}

function prepareData($data)
{
    return $data;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Username'], $_POST['Email'], $_POST['Password'])) {
        $username = $_POST['Username'];
        $email = $_POST['Email'];
        $password = $_POST['Password'];

        $response = signUp($conn, $username, $email, $password);
    } else {
        $response = array('status' => 'error', 'message' => 'Incomplete parameters');
        header('Location: admin_create_user.php');
    }
} else {
    $response = array('status' => 'error', 'message' => 'Invalid request method');
    header('Location: admin_create_user.php');
}

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
echo json_encode($response);

?>