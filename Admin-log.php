<?php
    session_start();

function logIn($Username, $Password)
{
    $conn = mysqli_connect("localhost", "root", "", "user");

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $stmt = mysqli_prepare($conn, "SELECT Username, Password FROM user WHERE Username = ?");

    mysqli_stmt_bind_param($stmt, "s", $Username);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $dbUid, $dbPassword);
    mysqli_stmt_fetch($stmt);

    mysqli_stmt_close($stmt);
    mysqli_close($conn);

    if (password_verify($Password, $dbPassword)) {
        return $Username;
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
            $_SESSION['Username'] = $row['Username'];
            header("Location: new_admin_main.php");
        } else {
            header("Location: new_admin_login.php");
            $message = 'Username or Password invalid';
            exit();
        }

    } else {
        header("Location: new_admin_login.php");
        $message = 'Invalid request';
        exit();
    }
}
?>