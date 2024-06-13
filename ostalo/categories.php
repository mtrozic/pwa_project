<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kategorije</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.php">Naslovna stranica</a></li>
                <li><a href="categories.php?category=politika">Politika</a></li>
                <li><a href="categories.php?category=sport">Sport</a></li>
                <li><a href="categories.php?category=auti">Auti</a></li>
                <li><a href="admin.php">Administracija</a></li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <!-- Prikaz članaka za odabranu kategoriju -->
        <?php include 'category_articles.php'; ?>
    </div>
</body>
</html>