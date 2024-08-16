
<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "karensporfolio";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = $_GET['id'] ?? null;

if ($id) {
    $sql = "DELETE FROM skills WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    
    if ($stmt->execute()) {
        header("Location: index.php?msg=deleted");
        exit();
    } else {
        echo "Error deleting record: " . $conn->error;
    }
    
    $stmt->close();
} else {
    header("Location: dash_skills.php");
    exit();
}

$conn->close();
?>