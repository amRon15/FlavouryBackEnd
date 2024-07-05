<?php
require ("admin_header.php");
require ("conn.php");
?>
<div class="box-container">
<h2>Create User</h2>
<form id="create-user-form" action="http://localhost/Flavoury/create_user.php" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="Username" required>
    <label for="email">Email:</label>
    <input type="email" id="email" name="Email" required>
    <label for="password">Password:</label>
    <input type="password" id="password" name="Password" required>
    <p></p>
    <input type="submit" value="Create User">
</form>
</div>