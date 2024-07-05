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
            display:flex;
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

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
    </style>
</head>

<body>
    <h1>Flavoury</h1>    
    <p>Welcome <?php echo $_SESSION['Username']; ?></p>
    <hr />
    <ul>
        <li>
            <div class="link-container">
                <a href="#" id="create-user-link">Create User</a>
            </div>
        </li>
        <li>
            <div class="link-container">
                <a href="#" id="view-user-link">View User</a>
            </div>
        </li>
        <li>
            <div class="link-container">
                <a href="#" id="create-recipe-link">Create Recipe</a>
            </div>
        </li>
        <li>
            <div class="link-container">
                <a href="#" id="view-recipe-link">View Recipe</a>
            </div>
        </li>
    </ul>

    <div id="content">
        <div id="user-list-container"></div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var contentElement = document.getElementById('content');
            var userListContainer = document.getElementById('user-list-container');
            if (!userListContainer) {
                console.error('User list container not found');
                return;
            }

            document.getElementById('create-user-link').addEventListener('click', function (event) {
                event.preventDefault();
                contentElement.innerHTML = `
        <h2>Create User</h2>
            <form id="create-user-form" action="http://localhost/Flavoury/create_user.php" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="Username" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="Email" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="Password" required>
                <input type="submit" value="Create User">
            </form>
        `;

                var createUserForm = document.getElementById('create-user-form');
                createUserForm.addEventListener('submit', function (event) {
                    event.preventDefault();

                    fetch(createUserForm.action, {
                        method: createUserForm.method,
                        body: new FormData(createUserForm)
                    })
                        .then(function (response) {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(function (data) {
                            if (data.status === 'success' && data.redirect) {
                                alert(data.message);
                                window.location.href = data.redirect;
                            } else {
                                console.log('Error:', data.message);
                            }
                        })
                        .catch(function (error) {
                            console.log('Error:', error);
                        });
                });
            });

            document.getElementById('view-user-link').addEventListener('click', function (event) {
            event.preventDefault();

            var userListContainer = document.getElementById('user-list-container');

            fetch('http://localhost/Flavoury/view_users.php')
                .then(function (response) {
                    return response.json();
                })
                .then(function (data) {
                    if (data.length > 0) {
                        var table = document.createElement('table');
                        table.classList.add('user-table');

                        var tableHeader = document.createElement('thead');
                        var headerRow = document.createElement('tr');
                        var headers = Object.keys(data[0]);

                        headers.forEach(function (header) {
                            var th = document.createElement('th');
                            th.textContent = header;
                            headerRow.appendChild(th);
                        });

                        tableHeader.appendChild(headerRow);
                        table.appendChild(tableHeader);

                        var tableBody = document.createElement('tbody');

                        data.forEach(function (row) {
                            var tableRow = document.createElement('tr');

                            Object.values(row).forEach(function (value) {
                                var td = document.createElement('td');
                                td.textContent = value;
                                tableRow.appendChild(td);
                            });

                            tableBody.appendChild(tableRow);
                        });

                        table.appendChild(tableBody);

                        userListContainer.innerHTML = '';
                        userListContainer.appendChild(table);
                    } else {
                        userListContainer.textContent = 'No users found.';
                    }
                })
                .catch(function (error) {
                    console.log('Error:', error);
                });
            });

            document.getElementById('create-recipe-link').addEventListener('click', function (event) {
                event.preventDefault();
                contentElement.innerHTML = `
                <h2>Create Recipe</h2>
                <form action="http://localhost/Flavoury/create_recipe.php" method="post">
                    <label for="rname">Recipe Name:</label>
                    <input type="text" id="rname" name="Rname" required>
                    <label for="category">Category:</label>
                    <input type="text" id="category" name="Category" required>
                    <label for="cooktime">Cook Time:</label>
                    <input type="text" id="cooktime" name="Cooktime" required>
                    <label for="description">Description:</label>
                    <textarea id="description" name="Description" required></textarea>
                    <label for="ingredient">Ingredients:</label>
                    <textarea id="ingredient" name="Ingredient" required></textarea>
                    <label for="sid">SID:</label>
                    <input type="text" id="sid" name="Sid" required>
                    <label for="step">Steps:</label>
                    <textarea id="step" name="Step" required></textarea>
                    <input type="submit" value="Create Recipe">
                </form>
            `;
            });

            document.getElementById('view-recipe-link').addEventListener('click', function (event) {
                event.preventDefault();
                contentElement.innerHTML = `<h2>View Recipes</h2><div><?php include 'view_recipes.php'; ?></div>`;
            });
        });
    </script>
</body>
</html>