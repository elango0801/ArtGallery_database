
## 🎨 Art Gallery Management System (MySQL)

This project is a database schema and set of stored procedures for managing an **Art Gallery System**, built using **MySQL**. It includes tables for artists, art types, mediums, artworks, admin users, enquiries, and more — along with powerful stored procedures and views for dynamic querying and reporting.

---

### 📁 Project Structure

The `artgallerymanagement.sql` file includes:

- ✅ Table creation scripts
- ✅ Foreign key relationships
- ✅ Sample stored procedures
- ✅ Useful views and queries

---

### 🧱 Core Tables

| Table Name     | Description                                   |
|----------------|-----------------------------------------------|
| `artist`       | Stores artist info like name, contact, awards |
| `arttype`      | Categories or genres of art                   |
| `artmedium`    | Medium used in the artwork (oil, acrylic, etc.) |
| `artproduct`   | Main table storing artwork info               |
| `enquiry`      | Tracks customer inquiries about artworks      |
| `admin`        | Admin user login and details                  |
| `page`         | Static content like About Us, Contact, etc.   |

---

### 🧠 Stored Procedures

- `FilterArtByPrice(minPrice, maxPrice)`  
  → View artworks within a price range

- `GetRecentArtworks(daysAgo)`  
  → Fetch artworks added in the last *n* days

- `GetAllEnquiriesWithProduct()`  
  → Show enquiries with related product info

- `GetTable('tableName')`  
  → Dynamic procedure to select from any table

---

### 📊 Views

- `TopSellingArtists`  
  → Lists artists by total artwork sales and count

---

### ⚙️ Requirements

- **MySQL 5.7+ / 8.0+**
- A MySQL client (phpMyAdmin, DBeaver, MySQL Workbench, etc.)

---

### 🚀 Getting Started

1. Clone this repo:
   ```bash
   git clone https://github.com/your-username/art-gallery-management.git
   ```

2. Import `artgallerymanagement.sql` into your MySQL server.

3. Run:
   ```sql
   USE artgallery;
   ```

4. Try:
   ```sql
   CALL FilterArtByPrice(5000, 20000);
   ```

---

### 📌 Future Improvements

- Add triggers for inventory or sales
- Integrate with a front-end UI (Django/Flask/Vue.js)
- Create API endpoints for CRUD operations

---

### 📬 Contact

For feedback or questions, feel free to contact via [elango0801@gmail.com].

---

Would you like a markdown file for this (`README.md`) included a screenshots of a sample ER diagram?
