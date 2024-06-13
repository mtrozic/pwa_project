<?php
session_start();
include 'db.php';

// Provjera je li korisnik prijavljen
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

$error = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $content = mysqli_real_escape_string($conn, $_POST['content']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $image_url = mysqli_real_escape_string($conn, $_POST['image_url']);

    // Provjera jesu li svi podaci uneseni
    if (empty($title) || empty($content) || empty($category) || empty($image_url)) {
        $error = 'Sva polja su obavezna.';
    } else {
        // Unos članka u bazu
        $query = "INSERT INTO articles (title, content, category_id, image) VALUES ('$title', '$content', '$category', '$image_url')";
        if (mysqli_query($conn, $query)) {
            header('Location: index.php');
            exit;
        } else {
            $error = 'Došlo je do greške prilikom unosa članka.';
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unos članka</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Unos novog članka</h2>
        <?php if ($error): ?>
            <p class="error"><?php echo $error; ?></p>
        <?php endif; ?>
        <form action="article_form.php" method="post">
            <label for="title">Naslov:</label>
            <input type="text" id="title" name="title" required>
            
            <label for="content">Sadržaj:</label>
            <textarea id="content" name="content" rows="10" required></textarea>
            
            <label for="category">Kategorija:</label>
            <select id="category" name="category" required>
                <option value="1">Politika</option>
                <option value="2">Sport</option>
                <option value="3">Auti</option>
            </select>
            
            <label for="image_url">URL slike:</label>
            <input type="url" id="image_url" name="image_url" required>
            
            <button type="submit">Spremi</button>
        </form>
    </div>
</body>
</html>
