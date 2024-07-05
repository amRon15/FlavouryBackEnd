<?php

require('conn.php');

$conn = connectToDatabase();

function DeleteUser($conn, $Uid) {

    $stmt = mysqli_prepare($conn, "DELETE * FROM user WHERE Uid = ?");

    mysqli_stmt_bind_param($stmt, "i", $Uid);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $dbUid);
    mysqli_stmt_fetch($stmt);

    mysqli_stmt_close($stmt);
    mysqli_close($conn);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['Uid'])) {

        $Uid = $_POST['Uid'];

        $UID = DeleteUser($Uid);

        if ($UID) {       
            header("Location: admin_main.php");
            exit();
        } else {
            $_SESSION['Delete Status'] = 'Uid invalid';
            header("Location: admin_view_user.php");
            exit();
        }

    } else {
        $_SESSION['Delete Status'] = 'Please delete via Admin page';
        header("Location: admin_view_user.php");
        exit();
        }
    }

?>