---

# **Code Challenges Project**  

A modern web application built with **React** and **Ruby on Rails** to manage and solve coding challenges.  

---

## **🚀 Tech Stack**  

- **Backend:** Ruby on Rails (API)  
- **Frontend:** React  
- **Database:** PostgreSQL  

---

## **📖 Getting Started**  

### **1️⃣ Clone the Repository**  
```bash  
git clone https://github.com/your-repo/code-challenges.git  
cd code-challenges  
```  

### **2️⃣ Install Dependencies**  
- **Backend:**  
  ```bash  
  bundle install  
  ```  
- **Frontend:**  
  ```bash  
  npm install  
  ```  

### **3️⃣ Set Up the Database**  
```bash  
rails db:create  
rails db:migrate  
```  

---

## **▶️ Running the Application**  

1. Start the Rails API server:  
   ```bash  
   rails s  
   ```  
2. Open your browser and visit: [http://localhost:3000](http://localhost:3000)  

---

## **📊 API Overview**  

### **Challenges Endpoints**  

| Method | Endpoint             | Description             | Body (JSON) |  
|--------|-----------------------|-------------------------|-------------|  
| GET    | `/api/challenges`     | List all challenges     | N/A         |  
| POST   | `/api/challenges`     | Create a new challenge  | ✅ Required  |  
| GET    | `/api/challenges/:id` | Show a specific challenge | N/A       |  
| PUT    | `/api/challenges/:id` | Update an existing challenge | ✅ Required |  
| DELETE | `/api/challenges/:id` | Delete a challenge      | N/A         |  

#### **Example Payloads**  

- **Create Challenge**  
  ```json  
  {  
    "challenge": {  
      "title": "Find the Unique Text",  
      "description": "Identify the unique string from a dataset.",  
      "start_date": "2024-12-22",  
      "end_date": "2024-12-25"  
    }  
  }  
  ```  

- **Update Challenge**  
  ```json  
  {  
    "challenge": {  
      "title": "Updated Title",  
      "description": "Updated description.",  
      "start_date": "2024-12-22",  
      "end_date": "2024-12-30"  
    }  
  }  
  ```  

---

## **🔒 Authentication and User Management**  

This project uses **Devise** for authentication and **JWT** tokens for secure session management.  

### **Endpoints Overview**  

| Method | Endpoint                 | Description             | Authorization |  
|--------|---------------------------|-------------------------|---------------|  
| POST   | `/users`                  | Create a new user       | ❌            |  
| POST   | `/users/sign_in`          | Sign in an existing user | ❌           |  
| DELETE | `/users`                  | Delete a user account   | ✅ Token      |  
| DELETE | `/users/sign_out`         | Sign out the user       | ✅ Token      |  

#### **Example Payloads**  

- **Create User**  
  ```json  
  {  
    "user": {  
      "email": "user@example.com",  
      "password": "securepassword"  
    }  
  }  
  ```  

- **Sign In User**  
  ```json  
  {  
    "user": {  
      "email": "user@example.com",  
      "password": "securepassword"  
    }  
  }  
  ```  

- **Authorization Token**  
  Include the JWT token in the `Authorization` header:  
  ```
  Authorization: Bearer <your_token_here>  
  ```  

---

## **💻 Development Notes**  

This project combines a **React frontend** with a **Rails API backend**, offering a clean separation of concerns and scalability. Future enhancements include:  
- Adding real-time challenge submissions  
- User roles and permissions  
- Advanced analytics for coding challenges  

Stay tuned! 🚀  

---  

Feel free to customize further based on your branding or tone preferences!