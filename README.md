
````markdown
# 🚀 Crypto ETL Pipeline with Docker + MySQL

This project is a real-time **ETL pipeline** that fetches cryptocurrency market data from the [CoinGecko API](https://www.coingecko.com/en/api), transforms it using Python, and loads it into a MySQL database — all containerized using **Docker** and orchestrated via **Docker Compose**.

---

## 📌 Features

- 🔁 **ETL Pipeline** using Python
- 💰 Real-time cryptocurrency market data
- 🛢️ Stores data into MySQL with timestamp
- 🐳 Dockerized application for easy deployment
- 📦 Docker Compose to manage multi-container setup

---

## 🧱 Tech Stack

| Layer         | Technology            |
| ------------- | --------------------- |
| Language      | Python 3.10+          |
| API Source    | CoinGecko API         |
| Database      | MySQL 8               |
| Orchestration | Docker + Docker Compose |

---

## 📂 Project Structure

```bash
crypto-etl-project/
│___app/
|       ├── app.ipynb               # Jupytrer ETL script
|       ├── requirements.txt        # Python dependencies
├── Dockerfile              # Container image for app
├── docker-compose.yml      # App + MySQL service
````

---

## ⚙️ How It Works

1. **Extract**: Pulls data from CoinGecko public API
2. **Transform**: Adds current timestamp
3. **Load**: Inserts clean records into MySQL `cryptocoins` table

---

## 🚀 Getting Started

### 1. Clone this repository

```bash
git clone https://github.com/your-username/crypto-etl-project.git
cd crypto-etl-project
```

### 2. Build & Start with Docker Compose

```bash
docker-compose up --build
```

📌 This spins up:

* `crypto-etl-app` (Python container)
* `mysql-db` (MySQL container)

---

## 🧪 Sample Output

```sql
SELECT * FROM cryptocoins LIMIT 5;
```

| coin     | price    | market\_cap | timestamp           |
| -------- | -------- | ----------- | ------------------- |
| Bitcoin  | 62111.27 | 1.2T        | 2025-07-24 12:00:00 |
| Ethereum | 3587.54  | 430B        | 2025-07-24 12:00:00 |

---

## 🛠️ Customizing

### 📁 Database Credentials

Edit `docker-compose.yml`:

```yaml
environment:
  - MYSQL_ROOT_PASSWORD=your_password
  - MYSQL_DATABASE=crypto
```

---

## 📜 License

MIT License. Free to use and modify.

---

## 🙌 Credits

* [CoinGecko API](https://www.coingecko.com/en/api)
* Docker, MySQL, Python Community

---

## 👨‍💻 Author

Made with ❤️ by ABHINAV(https://github.com/abhinavmarth)
