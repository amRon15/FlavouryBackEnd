<?php require ("admin_header.php"); ?>

<!-- <body>
    <script type="module">
        // Import the functions you need from the SDKs you need
        import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.3/firebase-app.js";
        import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.12.3/firebase-analytics.js";
        // TODO: Add SDKs for Firebase products that you want to use
        // https://firebase.google.com/docs/web/setup#available-libraries

        // Your web app's Firebase configuration
        // For Firebase JS SDK v7.20.0 and later, measurementId is optional
        const firebaseConfig = {
            apiKey: "AIzaSyBKhgkxD316NkO8xifXdFXNWVl1-mcl8oY",
            authDomain: "flavoury-27429.firebaseapp.com",
            databaseURL: "https://flavoury-27429-default-rtdb.firebaseio.com",
            projectId: "flavoury-27429",
            storageBucket: "flavoury-27429.appspot.com",
            messagingSenderId: "495304470035",
            appId: "1:495304470035:web:a8cc6060261cf2445759e6",
            measurementId: "G-JH0SR4GGLB"
        };

        // Initialize Firebase
        const app = initializeApp(firebaseConfig);
        const analytics = getAnalytics(app);
    </script>
</body> -->

<script>

    window.onload = function(){
        let imgid = document.getElementById('Imgid')
        imgid.value = generateUUID()
    }

    function generateUUID() {
        return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
    }

    // function saveInStorage() {
    //     var uuid = generateUUID();
    //     document.getElementById("Imgid").value = uuid;


    //     var fileInput = document.getElementById("fileName");
    //     var file = fileInput.files[0];
    //     var fileName = file.name;
    //     var idxDot = fileName.lastIndexOf(".") + 1;
    //     var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
    //     if (extFile == "jpg" || extFile == "jpeg" || extFile == "png") {
    //         var storageRef = firebase.storage().ref();
    //         var imagesRef = storageRef.child('recipe/' + uuid + ".jpg");
    //         imagesRef.put(file);
    //     }
    // }

    function addIngredient() {
        var ingredientContainer = document.getElementById("ingredient-container");
        var newIngredientDiv = document.createElement("div");
        newIngredientDiv.innerHTML = `
            <input type="text" name="Ingredient[]" placeholder="Ingredient">
            <input type="text" name="Portion[]" placeholder="Portion">
        `;
        ingredientContainer.appendChild(newIngredientDiv);
    }

    function addStep() {
        var stepContainer = document.getElementById("step-container");
        var newStepInput = document.createElement("textarea");
        newStepInput.setAttribute("name", "Step[]");
        stepContainer.appendChild(newStepInput);
    }

</script>

<div class="box-container">
    <h2>Create Recipe</h2>
    <form action="create_recipe.php" method="post">
        <label for="Imgid">Image:</label>
        <input type="text" id="Imgid" name="Imgid" readonly>
        <!-- <input name="image" type="file" id="fileName" accept=".jpg,.jpeg,.png" onsubmit="saveInStorage()" /> -->
        <label for="Uid">Uid:</label>
        <input type="text" id="Uid" name="Uid" value="31" readonly>
        <label for="RName">Recipe Name:</label>
        <input type="text" id="RName" name="RName" required>
        <label for="Category">Category:</label>
        <input type="text" id="Category" name="Category" required>
        <label for="CookTime">Cook Time:</label>
        <input type="text" id="CookTime" name="CookTime" required>
        <label for="Description">Description:</label>
        <textarea id="Description" name="Description" required></textarea>
        <label for="Serving">Serving:</label>
        <input type="text" id="Serving" name="Serving" required>
        <label for="Ingredient">Ingredients:</label>
        <div id="ingredient-container">
            <div>
                <input type="text" name="Ingredient[]" placeholder="Ingredient">
                <input type="text" name="Portion[]" placeholder="Portion">
            </div>
        </div>
        <button type="button" onclick="addIngredient()">+</button>
        <label for="Step">Steps:</label>
        <div id="step-container">
            <textarea name="Step[]"></textarea>
        </div>
        <button type="button" onclick="addStep()">+</button>
        <p></p>
        <input type="submit" value="Create Recipe">
    </form>
</div>