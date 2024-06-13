<?php
include 'db.php';

// Funkcija za dohvaćanje zadnjih članaka po kategoriji
function get_latest_articles($category_id, $limit = 3) {
    global $conn;
    $query = "SELECT articles.id, articles.title, articles.image, categories.name as category 
              FROM articles 
              JOIN categories ON articles.category_id = categories.id 
              WHERE categories.id = $category_id 
              ORDER BY articles.created_at DESC 
              LIMIT $limit";
    $result = mysqli_query($conn, $query);
    return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

// Dohvaćanje kategorija
$categories_query = "SELECT * FROM categories";
$categories_result = mysqli_query($conn, $categories_query);
$categories = mysqli_fetch_all($categories_result, MYSQLI_ASSOC);
?>

<div class="latest-articles">
    <?php foreach ($categories as $category): ?>
        <div class="category-section">
            <h2><?php echo $category['name']; ?></h2>
            <div class="articles">
                <?php
                $articles = get_latest_articles($category['id']);
                foreach ($articles as $article):
                ?>
                    <div class="article-card">
                        <img src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>">
                        <h3><?php echo $article['title']; ?></h3>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<style>
.latest-articles {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
}

.category-section {
    width: calc(50% - 20px); /* Prilagodi prema potrebi */
}

.articles {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
}

.article-card {
    width: calc(50% - 10px); /* Prilagodi prema potrebi */
    border: 1px solid #ccc;
    border-radius: 4px;
    overflow: hidden;
}

.article-card img {
    width: 100%;
    height: auto;
}

.article-card h3 {
    padding: 10px;
    font-size: 1.1em;
}
</style>
