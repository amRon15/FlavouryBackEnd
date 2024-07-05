<?php
require ("admin_header.php");
require ("conn.php");
?>
<div class="box-container" id="user-list-container"></div>
<script>
    window.addEventListener('load', function() {
        var userListContainer = document.getElementById('user-list-container');

        if (!userListContainer) {
            console.error('User list container not found');
            return;
        }

        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'http://localhost/Flavoury/view_users.php', true);
        xhr.setRequestHeader('Content-Type', 'application/json');

        xhr.onload = function () {
            if (xhr.status === 200) {
                var data = JSON.parse(xhr.responseText);

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
            } else {
                console.error('Error:', xhr.status);
            }
        };

        xhr.onerror = function () {
            console.error('Request failed');
        };

        xhr.send();
    });
</script>