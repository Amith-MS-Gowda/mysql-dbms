## 📘 `README.md` — Student Web App

```markdown
# 🎓 Student Web App

A full-stack web application to collect and store student details using:

- React (Frontend)
- Node.js + Express (Backend)
- MySQL (Database)

---

## 🧰 Tech Stack

| Layer     | Technology        |
|-----------|-------------------|
| Frontend  | React, Axios      |
| Backend   | Node.js, Express  |
| Database  | MySQL             |
| Styling   | CSS               |
| Dev Tools | Git, Postman      |

---

## 🛠️ Prerequisites

Before you begin, make sure you have the following installed:

- [Node.js & npm](https://nodejs.org/)
- [MySQL](https://dev.mysql.com/downloads/mysql/)
- [Git](https://git-scm.com/)
- (Optional) [XAMPP or MySQL Workbench](https://www.apachefriends.org/)

---

## 📦 Project Structure

```
StudentWebApp/
├── backend/               # Node.js + Express server
│   └── index.js
├── frontend/              # React application
│   ├── src/
│   │   ├── App.js
│   │   ├── StudentForm.js
│   │   └── StudentForm.css
├── README.md
├── .gitignore
└── package.json
```

---

## ⚙️ Step-by-Step Setup Guide

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/your-username/StudentWebApp.git
cd StudentWebApp
```

---

### 2️⃣ Set Up MySQL Database

1. Start MySQL (via XAMPP, MySQL Workbench, or CLI)
2. Open your terminal or SQL GUI and run:

```sql
CREATE DATABASE studentdb;

USE studentdb;

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usn VARCHAR(20),
  name VARCHAR(100),
  sem INT
);
```

---

### 3️⃣ Backend Setup (Node.js + Express)

```bash
cd backend
npm install
```

#### 👉 Configure DB Credentials in `index.js`:

```js
const db = mysql.createConnection({
  host: "localhost",
  user: "root",           // change if needed
  password: "your_password", // set your real password
  database: "studentdb"
});
```

#### Start the server:

```bash
node index.js
```

You should see:
```
Server running on http://localhost:5000
Connected to MySQL
```

---

### 4️⃣ Frontend Setup (React)

```bash
cd ../frontend
npm install
npm start
```

React app will launch at:
```
http://localhost:3000
```

---

### 5️⃣ Using the App

1. Fill in the **USN**, **Name**, and **Semester**
2. Click **Submit**
3. The form sends data via Axios to `http://localhost:5000/api/students`
4. The backend inserts the data into the MySQL `students` table

---

## 🧪 Testing API with Postman (Optional)

Make a `POST` request to:

```
http://localhost:5000/api/students
```

With JSON body:

```json
{
  "usn": "013",
  "name": "Amith M S Gowda",
  "sem": 6
}
```

---

## 📁 .gitignore (Recommended)

Make sure to add this to ignore heavy or sensitive files:

```gitignore
# Node
node_modules/
.env

# React
build/

# Logs
*.log

# OS
.DS_Store
```

---

## 📌 Future Enhancements

- Add view/list of students (GET API + React table)
- Add form validations
- Edit/delete student entries (CRUD)
- Store `.env` config securely

---

## 🙌 Author

**Amith M S Gowda**

> Connect with me on [LinkedIn](https://www.linkedin.com/in/amith-m-s-gowda-ba112425a) | [GitHub](https://github.com/Amith-MS-Gowda).

---
