<?php
session_start();

function logIn($Username, $Password)
{
    $conn = mysqli_connect("localhost", "root", "", "user");

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $stmt = mysqli_prepare($conn, "SELECT Uid, Username, Password FROM user WHERE Username = ?");

    mysqli_stmt_bind_param($stmt, "s", $Username);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $dbUid, $dbUsername, $dbPassword);
    mysqli_stmt_fetch($stmt);

    mysqli_stmt_close($stmt);
    mysqli_close($conn);

    if (password_verify($Password, $dbPassword)) {
        $_SESSION['Uid'] = $dbUid;
        return $dbUsername;
    } else {
        return false;
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Username']) && isset($_POST['Password'])) {

        $username = $_POST['Username'];
        $password = $_POST['Password'];

        $Username = logIn($username, $password);

    
    
        if ($Username) {
            $_SESSION['Username'] = $Username;        
            header("Location: admin_main.php");
            exit();
        } else {
            $_SESSION['login_status'] = 'Username or Password invalid';
            header("Location: admin_login.php");
            exit();
        }

    } else {
        $_SESSION['login_status'] = 'Please login via Admin page';
        header("Location: admin_login.php");
        exit();
    }
}
?>