# PharmaSis

PharmaSis is a pharmaceutical system designed to manage pharmacy inventories, prescriptions, and sales transactions. Keeps track of drug supplies, expiration dates, and sales performance.

## Project Structure

---

## 🧪 Technologies Used

- **HTML/CSS/JavaScript** (Frontend)
- **XAMPP / MySQL** (Database)
- **Metabase** (Data Visualization)
- *(Optional)* React + Node.js if used

---

## 🚀 How to Run the Web App

### 1. **Setup XAMPP**

- Open XAMPP and start **Apache** and **MySQL**.
- Place the `pharma-sis` folder inside your `htdocs` directory.
- Open a browser and go to: `http://localhost/pharma-sis/index.html`

### 2. **Import the Database**

- Open **DBeaver** or **phpMyAdmin**.
- Create a new database (e.g., `pharmasis_db`).
- Run the SQL script found in `database/pharma_schema.sql` to import tables and dummy data.

### 3. **Open Metabase Dashboards**

- Open **Metabase** and connect it to the database (`pharmasis_db`).
- If using the provided `metabase.db.mv.db` files:
  - Replace your local Metabase DB files with these (location: `C:\Users\<You>\`)
  - Restart Metabase.
- Dashboards and saved questions will be pre-loaded.

---

## 🖼️ Sample Metabase Screenshots

See the `documentation.pdf` for screenshots of:
- Overview dashboard
- Sales & Inventory reports
- Monthly trend analysis

---

## 👤 Users Guide

> For steps on using the system, see the **User Guide** section in the documentation or the system walkthrough in the `docs` folder.

---

## 👨‍💻 Authors / Contributors

- John Doe – Backend
- Jane Smith – Frontend
- Alex Cruz – Database
- Maria Lee – Metabase Setup

---

## 📄 License

This project is for educational purposes only.
