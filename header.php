<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #d32f2f;
            color: #fff;
            z-index: 1000;
        }

        .navbar .logo img {
            max-height: 50px;
            vertical-align: middle;
            margin-right: 10px;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            align-items: center;
            margin-left: 0;
            padding-left: 0;
        }

        .navbar ul li {
            margin-left: 15px;
        }

        .navbar ul li:first-child {
            margin-left: 0;
        }

        .navbar ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 16px;
            font-weight: 600;
        }

        .navbar ul li a:hover {
            text-decoration: underline;
        }

        .container {
            margin-top: 80px;
            padding: 20px;
        }

        .footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #666;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <ul>
            <li>
                <a href="index.php">
                    <img src="https://www.tvz.hr/wp-content/uploads/2021/12/uprava.png" alt="Logo" class="logo">
                </a>
            </li>
            <li><a href="index.php">Naslovna stranica</a></li>
            <li><a href="category.php?category_id=1">Politika</a></li>
            <li><a href="category.php?category_id=2">Sport</a></li>
            <li><a href="category.php?category_id=3">Auti</a></li>
            <li><a href="admin.php">Administracija</a></li>
        </ul>
    </nav>
</body>
</html>
