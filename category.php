<?php
include 'db.php';

if (!isset($_GET['category_id'])) {
    header('Location: index.php');
    exit;
}

$category_id = $_GET['category_id'];

function get_articles_by_category($category_id) {
    global $conn;
    $query = "SELECT * FROM articles WHERE category_id = $category_id ORDER BY created_at DESC";
    $result = mysqli_query($conn, $query);
    return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

$query = "SELECT name FROM categories WHERE id = $category_id";
$result = mysqli_query($conn, $query);
$category = mysqli_fetch_assoc($result);
$category_name = $category['name'];

$articles = get_articles_by_category($category_id);
?>

<!DOCTYPE html>
<head>
    <title><?php echo $category_name; ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include 'header.php'; ?>
        <div class="container">
            <div class="content">
                <div class="category-section">
                    <h2><?php echo $category_name; ?></h2>
                    <div class="card-container">
                        <?php foreach ($articles as $article): ?>
                            <div class="card">
                                <a href="article.php?id=<?php echo $article['id']; ?>">
                                    <img src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>">
                                    <h3><?php echo $article['title']; ?></h3>
                                </a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    <?php include 'footer.php'; ?>
</body>
</html>
