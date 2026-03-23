// OP1: insertMany() — insert all 3 documents from sample_documents.json
db.products.insertMany([
  {
    _id: "ELEC1001",
    name: "Samsung Galaxy S23",
    category: "Electronics",
    brand: "Samsung",
    price: 74999,
    stock: 25,
    specifications: {
      warranty_years: 1,
      voltage: "5V",
      battery: "3900mAh",
      processor: "Snapdragon 8 Gen 2"
    },
    features: ["5G", "AMOLED Display", "128GB Storage"],
    seller: {
      name: "TechWorld",
      rating: 4.6
    }
  },
  {
    _id: "CLOT2001",
    name: "Men Regular Fit Cotton Shirt",
    category: "Clothing",
    brand: "Allen Solly",
    price: 1899,
    stock: 60,
    attributes: {
      size: ["M", "L", "XL"],
      color: "Blue",
      material: "Cotton",
      fit: "Regular"
    },
    care_instructions: ["Machine Wash", "Do Not Bleach"],
    seller: {
      name: "FashionHub",
      rating: 4.3
    }
  },
  {
    _id: "GROC3001",
    name: "Organic Full Cream Milk",
    category: "Groceries",
    brand: "Aavin",
    price: 68,
    stock: 120,
    expiry_date: new Date("2024-12-20"),
    nutritional_info: {
      energy_kcal: 150,
      protein_g: 8,
      fat_g: 8,
      calcium_mg: 300
    },
    storage: {
      temperature: "Keep Refrigerated",
      shelf_life_days: 7
    },
    seller: {
      name: "FreshMart",
      rating: 4.5
    }
  }
]);

// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find(
  {
    category: "Electronics",
    price: { $gt: 20000 }
  }
);

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find(
  {
    category: "Groceries",
    expiry_date: { $lt: new Date("2025-01-01") }
  }
);

// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne(
  { _id: "ELEC1001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — create an index on category field and explain why
db.products.createIndex({ category: 1 });

// This index improves query performance because category-based filtering
// is common in product catalog searches, such as Electronics, Clothing,
// and Groceries. It reduces the number of documents scanned.
