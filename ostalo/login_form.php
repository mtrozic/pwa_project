<?php
session_start();

include 'db.php'; // Uključivanje konekcije na bazu

// Provjera da li je korisnik već prijavljen
if (isset($_SESSION['user_id'])) {
    header("Location: admin.php");
    exit();
}

// Provjera podataka nakon što se forma pošalje
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Provjera korisnika u bazi podataka
    $query = "SELECT * FROM users WHERE username = '$username'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) == 1) {
        // Prijava uspješna, postavljanje sesijske varijable
        $user = mysqli_fetch_assoc($result);

        // Provjera lozinke
        if (password_verify($password, $user['password'])) {
            // Postavljanje sesije
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['username'];
            header('Location: admin.php');
            exit;
        } else {
            $error = 'Neispravna lozinka.';
        }
    } else {
        // Neuspješna prijava
        $error = "Pogrešno korisničko ime.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Prijava</h2>
        
        <?php if (isset($error)): ?>
            <p style="color: red;"><?php echo $error; ?></p>
        <?php endif; ?>

        <form action="login.php" method="POST">
            <div class="form-group">
                <label for="username">Korisničko ime:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Lozinka:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Prijavi se">
            </div>
        </form>
    </div>
</body>
</html>
