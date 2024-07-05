<?php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flavoury Admin Main Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Italiana&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }

        h1 {
            font-family: 'Italiana', cursive;
            font-size: 60px;
            color: #1fcc79;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #1fcc79;
        }

        ul {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }

        li {
            margin: 0 10px;
            list-style-type: none;
        }

        .link-container {
            display: flex;
            align-items: center;
        }

        a {
            display: block;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        a:hover {
            background-color: #45a049;
        }

        #content {
            margin-top: 20px;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        textarea {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
            text-align: left;
        }

        .box-container {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            background-color: #ffffff;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <h1>Flavoury</h1>
    <p>Welcome, <strong><?php echo $_SESSION['Username']; ?></strong></p>
    <hr />
    <ul>
        <li>
            <div class="link-container">
                <a href="http://localhost/Flavoury/admin_create_user.php" id="create-user-link">Create User</a>
            </div>
        </li>
        <li>
            <div class="link-container">
                <a href="http://localhost/Flavoury/admin_view_user.php" id="view-user-link">View User</a>
            </div>
        </li>
        <li>
            <div class="link-container">
                <a href="http://localhost/Flavoury/admin_create_recipe.php" id="create-recipe-link">Create Recipe</a>
            </div>
        </li>
        <li>
            <div class="link-container">
                <a href="http://localhost/Flavoury/admin_view_recipe.php" id="view-recipe-link">View Recipe</a>
            </div>
        </li>
    </ul>