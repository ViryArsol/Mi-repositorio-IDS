<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de datos</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="dive2">
        <h1>Resultados</h1>
        <center>
            <img src="img/perritofeliz.jpg" alt="perritofeliz"width="150">
            <?php
                $Nombre = $_POST['Name'];
                $Edad = $_POST['Age'];
                $Ciudad = $_POST['City'];
                $Pasatiempo = $_POST['Hobby'];

                echo '<p><b>Nombre:</b> '.$Nombre.'</p><br>';
                echo '<p><b>Edad:</b> '.$Edad.'</p><br>';
                echo '<p><b>Ciudad:</b> '.$Ciudad.'</p><br>';
                echo '<p><b>Pasatiempo:</b> '.$Pasatiempo.'</p><br>';

            ?>
        </center>
        <h2>¡Bien Hecho!</h2>
        <div id="popUpOverlay"></div>
            <div id="popUpBox">
            <div id="box">
                <i class="fas fa-question-circle fa-5x"></i>
                    <h1>¿Volver a ingresar datos?</h1>
                <div id="closeModal"></div>
                </div>  
             </div>    
                <button onclick="Alert.render('you look very pretty today.')" class="btn">¡Volver a Ingresar!</button>
             <script src="./app.js"></script>
   </center>

    </div>
</body>
</html>