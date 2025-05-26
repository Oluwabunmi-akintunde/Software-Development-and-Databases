# Software-Development-and-Databases

### Food Delivery Database System (Deliveroo Clone)

This project involves the end-to-end design and implementation of a relational database system for a fictional food delivery service modeled after Deliveroo. It includes data modeling, database creation, data ingestion, GUI development, and data analysis features.

####  Key Features

* **Relational Database Design:** Entity-Relationship (ER) diagram in Crow’s Foot notation; normalized to 3NF.
* **SQL Schema Creation:** Tables for customers, restaurants, and orders.
* **Data Import:** Python script to read, clean, and load data from multiple CSV files into a SQLite database.
* **Customer Entry GUI:** Tkinter-based interface for adding new customer records with auto-generated IDs.
* **Dashboard Interface:** GUI with buttons to:

  * Display order cost statistics (mean, max, min)
  * Plot a histogram of item counts (log-scale)
  * List customers who ordered more than 40 items
* **AI Report:** Brief write-up on using AI tools (like ChatGPT) for code generation, with reflections on testing, ethics, and future workforce implications.

#### Tools

* Python (pandas, sqlite3, Tkinter, matplotlib)
* SQLite
* MySQL Workbench (for ER modeling)
