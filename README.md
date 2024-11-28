# VrvAssignment
# Wiff Serenity: Role-Based Access Control (RBAC) Implementation

In the **Wiff Serenity** e-commerce platform, I have implemented **Role-Based Access Control (RBAC)** using **Auth0** to manage user authentication and authorization. This ensures that users are appropriately assigned roles (either as a **Buyer** or **Seller**) and granted access to resources based on these roles. Below is an overview of how I’ve implemented RBAC in the application.

---

## **Authentication and Authorization**

- **Authentication**:  
  Users can securely log in using their email credentials via **Auth0**. During the login process, **Auth0** verifies the identity of the user and issues an **access token** (JWT) that is used to manage the user session.

- **Authorization**:  
  After successful authentication, the user’s role is checked to determine their level of access within the application. The user is then redirected to the appropriate dashboard based on their role:
  - **Buyer Dashboard**: If the email domain is anything other than `vrvsecurity.com`, the user is treated as a **Buyer** and is redirected to the **Buyer Dashboard**.
  - **Seller Dashboard**: If the email domain is `vrvsecurity.com`, the user is assigned the **Seller** role and is redirected to the **Seller Dashboard**.

---

## **Role Assignment in Auth0**

- **Role Assignment**:  
  I have configured **Auth0** to assign roles based on the user’s email domain during the login process. Users who log in with an email domain of `vrvsecurity.com` are automatically assigned the **Seller** role, whereas users with any other domain are assigned the **Buyer** role.

- **Role-Based Access Control (RBAC) Setup**:  
  I have set up RBAC in **Auth0** where:
  - **Buyer Role**: The **Buyer** role allows users to view products, manage their cart, and make purchases. Buyers have access to features such as browsing products, viewing their order history, and updating their profile.
  - **Seller Role**: The **Seller** role grants users the ability to manage their products, view their sales, and handle order fulfillment. Sellers can add, update, or delete their products, as well as view and manage customer orders.

---

## **Role-Based Access to Dashboards**

- Upon login, the **Buyer** or **Seller** role is checked to determine which dashboard the user should be redirected to. The following access rules apply:
  - **Buyer Dashboard**:  
    - Buyers can view all products available in the system and perform actions related to the cart, favorites, and order management.
  - **Seller Dashboard**:  
    - Sellers can manage their product listings, check order statuses, and perform administrative tasks related to their products.

- If a user with the **Seller** role tries to access the **Buyer Dashboard**, they will be redirected to the **Seller Dashboard** and vice versa.

---

## **Technologies Used**

- **Auth0**: Used for authentication and authorization.  
  - Auth0 manages user login, registration, and role assignment.  
  - Roles are assigned dynamically during the authentication process based on the user’s email domain.

- **JWT (JSON Web Token)**:  
  - Used to securely transmit user information and role data between the client and the server.

- **Spring Security**:  
  - Implements role-based access control in the backend, ensuring that only users with the correct roles can access certain resources.

---

## **System Architecture and Flow**

1. **User Login**:  
   - The user logs in using **Auth0** via an OAuth flow.  
   - Auth0 authenticates the user, assigns the appropriate role (Buyer or Seller), and generates a JWT token with the user's role information.

2. **Role Assignment**:  
   - If the user’s email domain is `vrvsecurity.com`, they are assigned the **Seller** role.  
   - If the email domain is anything else, the user is assigned the **Buyer** role.

3. **Dashboard Redirection**:  
   - After login, the user is redirected to their respective dashboard based on the assigned role:
     - **Buyer Dashboard**: Accessible by **Buyers**.
     - **Seller Dashboard**: Accessible by **Sellers**.

4. **Role-Based Access Control**:  
   - Each dashboard has role-based access rules that prevent unauthorized access. For example, only users with the **Seller** role can access the **Seller Dashboard** and manage products.

---

## **Security Measures**

- **Secure Login**:  
  The application uses **Auth0**'s secure login mechanism, which includes protections against common security vulnerabilities like CSRF, XSS, and session hijacking.

- **Role Validation**:  
  The **JWT token** includes role information that is validated on the backend to ensure that only users with the correct roles can access restricted resources.

- **Access Control Lists (ACL)**:  
  The backend ensures that only **Buyers** can access Buyer-specific features and only **Sellers** can manage their product listings.

---

## **Conclusion**

By implementing **Role-Based Access Control (RBAC)** using **Auth0**, I have ensured that the **Wiff Serenity** e-commerce platform provides secure and personalized user experiences based on roles. This implementation not only secures the application but also ensures that users have access only to the resources and features they are authorized to use, based on their role as a **Buyer** or **Seller**.

This system aligns with the assignment objectives and demonstrates a clear understanding of **Authentication**, **Authorization**, and **RBAC** principles, providing a robust, scalable, and secure approach for managing user roles and access.

---
