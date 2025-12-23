![Java](https://img.shields.io/badge/Java-J2EE-blue)
![Servlet](https://img.shields.io/badge/Servlet-Enabled-green)
![JSP](https://img.shields.io/badge/JSP-Frontend-orange)
![Maven](https://img.shields.io/badge/Maven-Build-success)
![Tomcat](https://img.shields.io/badge/Tomcat-Server-yellow)

👨‍💼 Employee Management System (J2EE)
A JSP/Servlet-based Employee Management System using the DAO pattern and HTML/CSS forms. It supports employee registration, login with registered credentials, and a post-login dashboard showing complete employee details.

📐 Architecture
Forms (JSP/HTML): User-facing pages for registration and login

Servlets: Handle form submissions, session management, and navigation

DAO Layer: Encapsulates database operations for employees via JDBC

Model (POJOs): Simple Java objects representing employee data

⚙️ Tech Stack
Language: Java (J2EE)

Web: JSP, Servlets, HTML/CSS

Persistence: JDBC (DAO pattern)

Server: Apache Tomcat

Database: MySQL or PostgreSQL

Tools: Maven (dependency management), Eclipse IDE

✨ Features
Registration: Create a new employee profile via form

Login: Authenticate using registered credentials

Dashboard: Display full employee details after login

Session management: Maintain authenticated user state

Validation: Basic form validations on inputs

🚀 Getting Started
Clone the repository:

bash
git clone https://github.com/ImHarshad1/Employee-Management-System-J2EE.git
Import the project into Eclipse IDE (or your preferred IDE).

Configure database connection in application.properties or context.xml.

Build and deploy on Apache Tomcat server.

Access the application at: http://localhost:8080/EmployeeManagementSystem

🧪 Testing
JSP pages tested using browser, verify session and details page 

Database checks: Confirm rows created/updated in the employees table

📌 Highlights
DAO pattern: Clean separation of DB access from presentation

Simple, usable UI: Form-driven JSP pages

Session-aware flows: Protect dashboard behind login

Easily deployable: Works on Tomcat with minimal setup
