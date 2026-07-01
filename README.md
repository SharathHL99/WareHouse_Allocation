# Warehouse Allocation System

A Spring Boot REST API that manages product distribution across multiple warehouses. The system automatically allocates products based on stock availability, supports stock transfers between warehouses, prevents over-allocation, and maintains allocation history for auditing.

---

# Features

- Warehouse Management
  - Create Warehouse
  - Update Warehouse
  - Activate Warehouse
  - Deactivate Warehouse
  - Soft Delete Warehouse

- Product Management
  - Add Product
  - Update Product
  - View Products
  - Delete Product

- Inventory Management
  - Maintain warehouse-wise inventory
  - Update available stock
  - Stock validation

- Product Allocation
  - Allocate product to a selected warehouse
  - Automatic warehouse selection based on available stock
  - Prevent over-allocation
  - Capacity validation

- Stock Transfer
  - Transfer stock between warehouses
  - Validate available quantity
  - Update inventories automatically

- Allocation History
  - Allocation audit trail
  - Allocation status tracking

- Search & Pagination
  - Search allocation by Product
  - Search allocation by Warehouse
  - Search allocation by Date Range
  - Pagination
  - Sorting

- Concurrency Handling
  - Optimistic Locking using JPA Versioning

---

# Technology Stack

| Technology | Version |
|------------|---------|
| Java | 17 |
| Spring Boot | 3.x |
| Spring Data JPA | Latest |
| Hibernate | Latest |
| MySQL | 8.x |
| Maven | 3.x |
| Lombok | Latest |
| Swagger OpenAPI | springdoc-openapi |
| JUnit 5 | Latest |
| Mockito | Latest |

---

# Project Architecture

```
                Client

                   │

           REST API Controller

                   │

            Service Layer

                   │

          Repository Layer

                   │

          MySQL Database
```

The application follows a layered architecture for better maintainability and separation of concerns.

- Controller Layer
- Service Layer
- Repository Layer
- Database Layer

---

# Database Tables

| Table | Description |
|---------|-------------|
| Warehouse | Warehouse details |
| Product | Product information |
| Warehouse Inventory | Product stock available in each warehouse |
| Allocation | Product allocation records |
| Stock Transfer | Warehouse-to-warehouse stock transfer history |

---

# Project Structure

```
src
│
├── main
│   ├── java
│   │   ├── controller
│   │   ├── service
│   │   ├── serviceimpl
│   │   ├── repository
│   │   ├── entity
│   │   ├── dto
│   │   ├── exception
│   │   ├── config
│   │   └── WarehouseAllocationApplication.java
│   │
│   └── resources
│       ├── application.properties
│       ├── schema.sql
│       └── data.sql
│
└── test
    └── java
```

---

# Getting Started

## Prerequisites

- Java 17
- Maven
- MySQL Server
- Git
- IntelliJ IDEA / Eclipse

---

## Clone Repository

```bash
git clone https://github.com/your-username/warehouse-allocation-system.git

cd warehouse-allocation-system
```

---

## Configure Database

Create a MySQL database.

```sql
CREATE DATABASE warehouse_db;
```

Update the database configuration inside:

```
src/main/resources/application.properties
```

Example:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/warehouse_db
spring.datasource.username=root
spring.datasource.password=root

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

---

## Build Project

```bash
mvn clean install
```

---

## Run Project

```bash
mvn spring-boot:run
```

or

Run

```
WarehouseAllocationApplication.java
```

from your IDE.

---

# API Base URL

```
http://localhost:8080/api
```

---

# Swagger Documentation

After running the application, access Swagger UI:

```
http://localhost:8080/swagger-ui/index.html
```

---

# API Modules

## Warehouse APIs

- Create Warehouse
- Update Warehouse
- Get Warehouse By Id
- Get All Warehouses
- Activate Warehouse
- Deactivate Warehouse
- Soft Delete Warehouse

---

## Product APIs

- Create Product
- Update Product
- Delete Product
- Get Product
- Get All Products

---

## Inventory APIs

- Add Inventory
- Update Inventory
- Get Inventory

---

## Allocation APIs

- Allocate Product
- Auto Allocate Product
- Cancel Allocation
- Search Allocation
- Allocation History

---

## Stock Transfer APIs

- Transfer Stock
- Transfer History

---

# Testing

Run all unit tests:

```bash
mvn test
```

Frameworks used:

- JUnit 5
- Mockito

---

# Design Highlights

- Layered Architecture
- DTO Pattern
- Global Exception Handling
- Optimistic Locking
- Automatic Warehouse Selection
- Soft Delete
- Capacity Validation
- Audit Logging
- Pagination and Sorting

---

# Future Enhancements

- JWT Authentication
- Role-Based Authorization
- Email Notifications
- Dashboard
- Inventory Reports
- Docker Support
- CI/CD Pipeline

---

# Author

**Sharath H L**

---

# License

This project is developed for learning and educational purposes.
