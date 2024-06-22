<?php

function logIn($Username, $Password)
{
    $conn = mysqli_connect("localhost", "root", "", "user");

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $stmt = mysqli_prepare($conn, "SELECT Uid, Password FROM user WHERE Username = ?");

    mysqli_stmt_bind_param($stmt, "s", $Username);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $dbUid, $dbPassword);
    mysqli_stmt_fetch($stmt);

    mysqli_stmt_close($stmt);
    mysqli_close($conn);

    if (password_verify($Password, $dbPassword)) {
        return $dbUid;
    } else {
        return false;
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Username']) && isset($_POST['Password'])) {

        $username = $_POST['Username'];
        $password = $_POST['Password'];

        $uid = logIn($username, $password);

        if ($uid) {
            $response = array('status' => 'success', 'message' => 'Login Success', 'Uid' => $uid);
        } else {
            $response = array('status' => 'error', 'message' => 'Username or Password invalid');
        }

        echo json_encode($response);

    } else {
        echo json_encode(array('status' => 'error', 'message' => 'Invalid request'));
    }
} else {
    echo json_encode(array('status' => 'error', 'message' => 'Invalid request method'));
}

?>