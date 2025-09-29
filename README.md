# Guitar Shop API

## ฐานข้อมูล
- MySQL
- ตาราง: `products`  
- ข้อมูล: 20 รายการสินค้า

## API
**URL Base:** `http://localhost/guitar_api/products.php`

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET    | /products.php | ดึงสินค้าทั้งหมด |
| GET    | /products.php?id={id} | ดึงสินค้าตาม id |
| POST   | /products.php | เพิ่มสินค้า |
| PUT    | /products.php?id={id} | แก้ไขสินค้า |
| DELETE | /products.php?id={id} | ลบสินค้า |

**ตัวอย่าง JSON POST/PUT**
```json
{
    "name": "Fender Stratocaster",
    "category": "Electric Guitar",
    "price": 1200.00,
    "stock": 5,
    "description": "Classic electric guitar"
}

```
### ดูสินค้าทั้งหมด
![Show all products](/images/product.png)

### ดูสินค้า ID 1
![Show product by ID](/images/Show%20product%20by%20ID.png)

### เพิ่มสินค้าใหม่
![Add new Product](/images/Add%20new%20Product.png)

### แก้ไขสินค้า
![Before update](/images/Before%20update.png)  
![After update](/images/Update%20Produce.png)  
![Update Product](/images/After%20update.png)

### ลบสินค้า
![Before delete](/images/before%20delete.png)  
![After delete](/images/Delete%20product.png)  
![Delete product](/images/After%20delete.png)
