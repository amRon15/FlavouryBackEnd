<?php

require('conn.php');

$conn = connectToDatabase();

if ($result = mysqli_query($conn,'DELETE * FROM recipe WHERE Rid = ?'))
{
    $_POST = $Rid;

}
?>
