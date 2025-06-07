<?php

$dbType = getenv("DB_TYPE");

try {
    if ($dbType === 'mysql') {
        $db = new PDO(
            "mysql:host=" . getenv("MYSQL_HOST") . ";dbname=" . getenv("MYSQL_DB"),
            getenv("MYSQL_USER"),
            getenv("MYSQL_PASSWORD")
        );
    } elseif ($dbType === 'pgsql') {
        $db = new PDO(
            "pgsql:host=" . getenv("POSTGRES_HOST") . ";dbname=" . getenv("POSTGRES_DB"),
            getenv("POSTGRES_USER"),
            getenv("POSTGRES_PASSWORD")
        );
    } else {
        throw new Exception("Unsupported DB_TYPE: $dbType");
    }

    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Database connection failed: " . $e->getMessage();
}