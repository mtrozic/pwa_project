<?php
session_start();
include 'db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if (isset($_POST['logout'])) {
    session_destroy();
    header("Location: login.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $category_id = $_POST['category_id'];
    $image_url = $_POST['image_url']; // Dodano polje za URL slike

    $query = "INSERT INTO articles (title, content, image, category_id, created_at) 
              VALUES ('$title', '$content', '$image_url', $category_id, NOW())";
    mysqli_query($conn, $query);

    header("Location: admin.php");
    exit();
}

$categories_query = "SELECT * FROM categories";
$categories_result = mysqli_query($conn, $categories_query);
$categories = mysqli_fetch_all($categories_result, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<head>
    <title>Administracija</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include 'header.php'; ?>
        <div class="container">
            <div class="content">
                <h2 style="text-align: center;">Unos novog članka</h2>
                <form action="admin.php" method="POST" class="article-form">
                    <label for="title">Naslov članka:</label>
                    <input type="text" id="title" name="title" required>
                    
                    <label for="content">Sadržaj članka:</label>
                    <textarea id="content" name="content" rows="6" required></textarea>
                    
                    <label for="image_url">URL slike članka:</label>
                    <input type="url" id="image_url" name="image_url" required>
                    
                    <label for="category_id">Kategorija:</label>
                    <select id="category_id" name="category_id" required>
                        <?php foreach ($categories as $category): ?>
                            <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
                        <?php endforeach; ?>
                    </select>
                    
                    <button type="submit">Spremi članak</button>
                </form>
            </div>
        </div>
    <?php include 'footer.php'; ?>
</body>
</html>
