// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "E101",
    name: "Samsung 55 inch Smart TV",
    category: "Electronics",
    price: 52000,
    attributes: {
      brand: "Samsung",
      warranty_years: 2,
      voltage: "220V"
    }
  },
  {
    product_id: "C201",
    name: "Men's Denim Jacket",
    category: "Clothing",
    price: 2499,
    attributes: {
      brand: "Levis",
      size: ["S", "M", "L", "XL"],
      fabric: "Denim"
    }
  },
  {
    product_id: "G301",
    name: "Amul Butter 500g",
    category: "Groceries",
    price: 275,
    attributes: {
      brand: "Amul",
      expiry_date: "2025-01-10"
    }
  }
]);

// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  "attributes.expiry_date": { $lt: "2025-01-01" }
});

// OP4: updateOne() — add discount_percent field
db.products.updateOne(
  { product_id: "E101" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — create index on category
db.products.createIndex({ category: 1 });
