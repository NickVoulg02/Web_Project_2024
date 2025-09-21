# Web Project 2024

## 📌 Overview

This project is a **collaborative system** designed to help coordinate **aid requests** and **offerings** following a natural disaster (e.g., flood, earthquake). 

Its main features:
- Citizens can **submit requests** for needed items (water, food, medicine, etc.)  
- Citizens can **offer surplus items** for donation  
- Vehicles belonging to Civil Protection / volunteer rescuers are used to **pick up / deliver** items  
- A central base (warehouse) holds donated items and can issue alerts when supplies are low  
- A map-based interface shows all requests and offers, allowing rescuers to take up tasks  
- Citizens can access the system via mobile, declare their needs or what they can donate

---

## 🛠️ Features

- Registration / login for citizens and rescuers  
- Interface for submitting help requests or offers  
- Task assignment: rescuer vehicles are assigned to pickup / delivery tasks  
- Dashboard / map view showing current requests/offers and vehicle availability  
- Notifications for base supply shortages

---

## 📁 Contents of the Repository

| Folder/File | Purpose |
|-------------|---------|
| `index.php` | Main entry / homepage or controller for web routing |
| `DATABASE.sql` | Database schema and seed data |
| `1084625,1084626,1084628.docx` / `.pdf` | Possibly project documentation or design documents |
| `.htaccess` | Configuration for URL rewriting / server settings |
| `errors/` | Error handling / error pages |
| `test/` | Testing scripts or demo data |
| `README.md` | This file |

---

## 🧭 Getting Started

### Prerequisites

- Web server with PHP support (e.g., Apache, Nginx + PHP)  
- MySQL or compatible DBMS  
- Access to configure `.htaccess` if URL rewriting is used  

### Installation Steps

1. Clone the project:

   ```bash
   git clone https://github.com/NickVoulg02/Web_Project_2024.git
   cd Web_Project_2024

2. Import the database:

  Use DATABASE.sql to create the necessary tables/data

3. Configure your web server:

  Set up the document root to point to this project folder
  Enable .htaccess or otherwise handle routing, if used
  Set appropriate permissions for folders if needed

4. Update configuration files (if any) with your database credentials
5. Open the application via your browser
