# JSP_JDBC_TODO

This project is a simple web application that provides user authentication with login and registration features using Spring MVC.
## Features
- **User Authentication:** Users can register for an account and log in securely.
 
- **Secure Password Storage:** Passwords are securely hashed and stored in the database.
 
- **Spring MVC:** The application is built using the Spring MVC framework for web development.
## Requirements
- Java Development Kit (JDK)
 
- Apache Maven
 
- MySQL Database
 
- Tomcat Server or any servlet container of your choice

1. **Database Configuration:**
 
   - Create a MySQL database and update the `application.properties` file in the `src/main/resources` directory with your database connection details.
2. **Build and Deploy:**
 
   - Build the project using Maven:
 
     ```bash
 
     mvn clean install
 
     ```
 
   - Deploy the generated WAR file to your servlet container.
## Usage

1. **Register:**
 
   - Click on the "Register" link to create a new account.
2. **Login:**
 
   - After registration, log in with your credentials.
3. **Security Measures:**
 
   - The application uses secure password hashing to ensure the safety of user credentials.

