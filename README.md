# User Manage App

A User Manage app flutter project.

## 📌 Project Overview

This project is a **User Management Application** built using **Flutter (GetX)** for the frontend and **Firebase Realtime Database** with **Vercel Serverless APIs** for the backend.

The application supports **full CRUD operations** (Create, Read, Update, Delete) with **pagination-based user listing** and **individual user profile management**.

The backend is deployed as **serverless REST APIs on Vercel**, ensuring scalability and fast response times, while the frontend follows a **clean architecture** with proper state management using **GetX (Obx)**.

- App Link: https://drive.google.com/file/d/1DCX3N3FYWQf4vndvwsmgypXfx_rG2oWn/view?usp=drive_link

---

## 🛠 Tech Stack

**Frontend**
- Flutter
- GetX (State Management)
- HTTP package

**Backend**
- Node.js
- Firebase Admin SDK
- Firebase Realtime Database

---

## ✨ Features

- User creation with validated input fields
- User listing with pagination support
- Fetch single user details by user ID
- Update existing user information
- Delete user with confirmation
- Separate REST API endpoints for each operation
- Firebase Realtime Database integration
- GetX state management with reactive UI (`Obx`)
- Light, Dark, and System Default (Auto) theme modes
- Runtime theme switching with persistent preferences

## 🎨 Theme & UI Features

- Light Mode support
- Dark Mode support
- System Default (Auto) theme mode
- Runtime theme switching
- Persistent theme preference
- Consistent UI styling across all screens

## 🌐 API Details

### Base URL
- https://user-manage-liard.vercel.app/api

**API Teck Stack**
- Node.js
- Firebase Admin SDK
- Firebase Realtime Database

---

### 📌 Endpoints

#### ➤ Fetch All Users (Pagination)
- GET /users?pageSize={pageSize}&currentPage={currentPage}
- https://user-manage-liard.vercel.app/api/users?pageSize=10&currentPage=1

#### ➤ Fetch Single User By Id
- GET /users?id=193
- https://user-manage-liard.vercel.app/api/users?id=193

#### ➤ Create User
- POST /createUser
- https://user-manage-liard.vercel.app/api/createUser
[All fields required]
- body:
{
  "name": "John",
  "email": "john@example.com",
  "age": 26,
  "gender": "Male"
}

#### ➤ Update User
- PUT /updateUser
- https://user-manage-liard.vercel.app/api/updateUser
[fields optional (Id required)]
- body:
{
  "id": 193,
  "name": "John",
  "email": "john@example.com",
  "age": 26,
  "gender": "Male"
}

#### ➤ Delete User
- DELETE /deleteUser
- https://user-manage-liard.vercel.app/api/deleteUser?id=193

## 🧠 State Management Approach

This application uses **GetX** for state management to ensure high performance, scalability, and clean architecture.

- Reactive programming using `Rx` variables
- UI updates handled through `Obx` widgets
- No usage of `setState` in UI components
- Clear separation of business logic and UI
- Controllers handle all API interactions

## 📁 Folder Structure

The project follows a **clean and scalable architecture** to maintain separation of concerns and improve maintainability.

### 📌 `bindings/`
Contains GetX bindings responsible for **controller initialization and dependency injection**.

- Ensures controllers are created only when needed
- Helps manage controller lifecycle efficiently

---

### 📌 `controllers/`
Contains all **GetX controllers** responsible for business logic and API interactions.

Includes:
- Main application controller
- User-related controllers (Create, Update, Fetch, Delete)

---

### 📌 `generator/`
Automatically generated folder used for **asset path management**.

- Generated using external Flutter asset generator plugin
- Prevents hard-coded asset strings

---

### 📌 `models/`
Contains **data model classes**.

- User fetch model
- Used for parsing API responses and data handling

---

### 📌 `pref/`
Handles **local storage and preferences**.

- Stores theme mode selection (Light / Dark / Auto)
- Manages app-level preferences

---

### 📌 `resources/`
Centralized location for **UI-related constants**.

Includes:
- `app_assets` – Asset references
- `app_fonts` – Font families
- `app_styles` – Text and widget styles
- `app_colors` – Color definitions
- `app_dimen` – Dimensions and spacing values

---

### 📌 `screens/`
Contains all **UI screens** of the application.

Includes:
- Splash Screen
- Home Screen
- Create User Screen
- Update User Screen

---

### 📌 `utils/`
Utility helpers used across the app.

- `lottie_delegates.dart` for runtime Lottie color adaptation
- Supports Dark and Light theme switching

---

### 📌 `widgets/`
Reusable custom UI components.

Includes:
- Custom container widgets
- Custom scaffold
- Theme tile custom widgets

---

### 📌 `lib/`
Root configuration files for the application.

Includes:
- `main.dart` – App entry point
- `app.dart` – Initial app setup and routing
- `constant.dart` – Global constants and values

---

### 📌 `assets/`
Stores all static resources used in the app.

Includes:
- `assets/lottie/` – Lottie animation files
- `project/fonts/` – Font files
- `project/res/` – SVG and PNG assets for UI usage

### 📌 `keystore/`
Contains files related to Android app signing.

Includes:
- `keystore.jks` – Android signing keystore file
- Playstore app submission aab file generate and apk file generate for testing
- `README.md` – Contains keystore configuration details:
  - Key alias name
  - Key alias password
  - Keystore password

## 🚀 Steps to Setup and Run the Project Locally

### 1️.Prerequisites
Ensure the following are installed on your system:

- Flutter SDK - v3.35.4
- Jdk - V21
- Android Studio / VS code

---

### 2️.Clone the Repository
- git clone https://github.com/GaneshInnovator/user_manage_task.git
- cd user_manage_task

### 3.Install Dependecies
- flutter pub get

### 3.Run the project
- flutter pub run

## 📦 Build APK with Keystore (Release)

Follow these steps to generate a **signed release APK**.

### 1️⃣ Configure Keystore
- Open android level project
- After gradle sync to click the top tool build -> generate signed app budle

- Note: Keystore folder contain the keystore jks file and password information.
