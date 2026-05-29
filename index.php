<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Captura de datos</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="dive">
        <form action="resultados.php" method="POST">
        <h1>Captura de datos personales</h1>
        <br>
        <h2>Ingresa los datos que se te piden</h2>
        <br>
        <p>Mi primera encuesta</p>
        <hr>
        <label for="Name">Nombre: </label>
        <input type="text" id="Name" name="Name" value="Ingresa tu nombre">
        <br>
        <label for="Age">Edad: </label>
        <input type="number" id="Age" name="Age" value="Ingresa tu edad">
        <br>
        <label for="City">Ciudad donde vives: </label>
        <input type="text" id="City" name="City" value="Ingresa tu ciudad donde vives">
        <br>
        <label for="Hobby">Pasatiempo favorito: </label>
        <input type="text" id="Hobby" name="Hobby" value="Ingresa tu pasatiempo favorito">
        <br>
        <input type="submit" value="Enviar">
       
        </form>
    </div>
</body>
</html>