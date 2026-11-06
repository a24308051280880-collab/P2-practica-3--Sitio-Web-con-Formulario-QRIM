<?php
include 'conexion.php';

// Consulta para obtener solo los llaveros
$sql = "SELECT * FROM productos WHERE categoria = 'llavero'";
$resultado = $conexion->query($sql);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Llaveros - Fuggler Monsters</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <aside class="sidebar">
        <div class="logo">Fuggler</div>
        <div class="tagline">Funny Ugly Monster</div>
        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="llaveros.php" class="active">Llaveros</a></li>
                <li><a href="peluches.php">Peluches</a></li>
                <li><a href="cuenta.php">Cuenta</a></li>
            </ul>
        </nav>
        <footer>
            <p>Fuggler Monsters. / Quiñones Rios Iris 5-J</p>
        </footer>
    </aside>

    <main class="main-content">
        <h1 class="section-title">Colección: Llaveros </h1>
        <div class="container">
            
            <?php
            if ($resultado->num_rows > 0) {
                while($producto = $resultado->fetch_assoc()) {
                    echo '<div class="card">';
                    echo '  <img src="' . $producto['imagen'] . '" alt="' . $producto['nombre'] . '">';
                    echo '  <h2>' . $producto['nombre'] . '</h2>';
                    echo '  <span class="series">Llavero - $' . number_format($producto['precio'], 2) . ' MXN</span>';
                    echo '  <p class="desc">' . $producto['descripcion'] . '</p>';
                    echo '  <button class="btn-buy">Comprar</button>';
                    echo '</div>';
                }
            } else {
                echo '<p>No se encontraron llaveros en la base de datos.</p>';
            }
            ?>

        </div>
    </main>
</body>
</html>