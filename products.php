<?php
header("Content-Type: application/json");
include 'config.php';

// รับ method ของ HTTP
$method = $_SERVER['REQUEST_METHOD'];
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

switch($method){
    case "GET":
        if($id){
            $stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
            $stmt->execute([$id]);
            $product = $stmt->fetch(PDO::FETCH_ASSOC);
            echo json_encode($product ? $product : ["error"=>"Product not found"]);
        } else {
            $stmt = $conn->query("SELECT * FROM products");
            $products = $stmt->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($products);
        }
        break;

    case "POST":
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $conn->prepare("INSERT INTO products (name, category, price, stock, description) VALUES (?, ?, ?, ?, ?)");
        $stmt->execute([
            $data['name'],
            $data['category'],
            $data['price'],
            $data['stock'],
            $data['description']
        ]);
        echo json_encode(["message"=>"Product added","id"=>$conn->lastInsertId()]);
        break;

    case "PUT":
        if(!$id){
            echo json_encode(["error"=>"Missing product ID"]);
            exit;
        }
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $conn->prepare("UPDATE products SET name=?, category=?, price=?, stock=?, description=? WHERE id=?");
        $stmt->execute([
            $data['name'],
            $data['category'],
            $data['price'],
            $data['stock'],
            $data['description'],
            $id
        ]);
        echo json_encode(["message"=>"Product updated"]);
        break;

    case "DELETE":
        if(!$id){
            echo json_encode(["error"=>"Missing product ID"]);
            exit;
        }
        $stmt = $conn->prepare("DELETE FROM products WHERE id=?");
        $stmt->execute([$id]);
        echo json_encode(["message"=>"Product deleted"]);
        break;

    default:
        echo json_encode(["error"=>"Invalid request"]);
        break;
}
?>
