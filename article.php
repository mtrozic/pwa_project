<?php
include 'db.php';

// Dohvaćanje članka prema ID-u
if (isset($_GET['id'])) {
    $article_id = $_GET['id'];
    $query = "SELECT * FROM articles WHERE id = $article_id";
    $result = mysqli_query($conn, $query);
    $article = mysqli_fetch_assoc($result);
} else {
    // Ukoliko nema ID-a, preusmjeri nazad na index.php ili drugu stranicu
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<head>
    <title>Detalji članka</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include 'header.php'; ?>
        <div class="container">
            <div class="content">
                <div class="article-details">
                    <img src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>" style="max-height: 500px;">
                    <h2><?php echo $article['title']; ?></h2>
                    <p>Datum kreiranja: <?php echo date('d.m.Y', strtotime($article['created_at'])); ?></p>
                    <div class="article-content">
                        <?php echo $article['content']; ?>
                    </div>
                </div>
            </div>
        </div>
    <?php include 'footer.php'; ?>
</body>
</html>
