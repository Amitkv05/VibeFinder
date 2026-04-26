# 🎉 Eventify – Event Finder App (Flutter)

## 📱 Overview

Eventify is a Flutter-based mobile application that allows users to discover and explore nearby events such as concerts, sports, and social gatherings.
The app fetches dynamic event data from a mock API and presents it with a clean, modern, and responsive UI.

---

## 🚀 Features

### 🏠 Home Screen

* Displays a list of events fetched from API
* Featured carousel for highlighted events
* Category section for quick browsing
* Search bar UI
* Pull-to-refresh functionality

### 📄 Event Detail Screen

* Large event banner image
* Event title, category, date & time
* Location and distance
* Detailed description
* CTA button: **"Get Tickets"**

---

## 🌐 API Integration

* Mock API created using Beeceptor
* Data fetched using HTTP GET request
* JSON parsed into Dart models

**API Endpoint:**
https://event-finder.free.beeceptor.com/events

---

## 🧱 Project Structure

```
lib/
 ├── models/        # Data models
 ├── services/      # API handling
 ├── screens/       # UI screens
 ├── widgets/       # Reusable components
 └── main.dart
```

---

## ⚙️ Tech Stack

* Flutter (Latest Stable)
* Dart
* HTTP package
* Beeceptor (Mock API)

---

## 🔄 State Handling

* Implemented using `FutureBuilder`
* Covers:

  * Loading state (progress indicator)
  * Error handling
  * Empty data state

---

## 🎨 UI/UX Highlights

* Clean and modern design
* Responsive layout
* Reusable widgets
* 
---

## ⭐ Bonus Features

* Pull-to-refresh
* Featured carousel slider
* Theming support
* Smooth navigation

---

## ⚠️ Challenges Faced

* Handling nested scroll views and layout overflow
* Managing API states efficiently
* Designing a responsive UI across screen sizes

---

## 🎥 Demo

(Attach screen recording or APK here)

---

## 📌 Submission Details

* Screens Implemented: Home Screen & Event Detail Screen
* API Used: Beeceptor Mock API
* Focus Areas: Clean UI, API integration, state handling, navigation

---

## 🙌 Conclusion

This project demonstrates a real-world Flutter app structure with proper separation of concerns, dynamic data handling, and user-friendly UI design.

---
