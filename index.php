<?php
include 'db.php';

function get_latest_articles($category_id, $limit = 3) {
    global $conn;
    $query = "SELECT articles.id, articles.title, articles.image, articles.created_at, categories.name as category 
              FROM articles 
              JOIN categories ON articles.category_id = categories.id 
              WHERE categories.id = $category_id 
              ORDER BY articles.created_at DESC 
              LIMIT $limit";
    $result = mysqli_query($conn, $query);
    return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

$categories_query = "SELECT * FROM categories";
$categories_result = mysqli_query($conn, $categories_query);
$categories = mysqli_fetch_all($categories_result, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<head>
    <title>Naslovna stranica</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include 'header.php'; ?>
        <div class="container">
            <div class="content">
                <?php foreach ($categories as $category): ?>
                    <div class="category-section">
                        <h2><?php echo $category['name']; ?></h2>
                        <div class="card-container">
                            <?php
                            $articles = get_latest_articles($category['id']);
                            foreach ($articles as $article):
                            ?>
                                <div class="card">
                                    <a href="article.php?id=<?php echo $article['id']; ?>">
                                        <img src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>">
                                        <h3><?php echo $article['title']; ?></h3>
                                    </a>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    <?php include 'footer.php'; ?>
</body>
</html>
