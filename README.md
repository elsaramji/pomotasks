# **PomoTasks 🍅**

*A Simple Pomodoro-Based Task Management Application*

---

![PomoTasks Preview](assets/ui_preview/overview.png)

---

## 🔗 Try It Out

You can try the app from the link below:

👉 **[Live Demo](https://appetize.io/app/b_z5jmfq4mwma7fcjpzjut5fgmaa)**  
> 📱 Best viewed on mobile devices

---

## 📱 Overview

**PomoTasks** is a minimal and efficient Pomodoro timer and task manager designed to enhance productivity through focused work intervals and structured task management. Built with Clean Architecture and powered by Firebase, it ensures smooth, scalable, and real-time productivity tracking.

---

## 🎯 Key Features

- ✅ Onboarding Flow 🎉  
- ✅ Pomodoro Timer 🍅  
- ✅ Bottom Navigation Bar  
- ✅ Task List View 📝  
- ✅ Add New Tasks 📝  
- ⏳ Assign Tasks to Pomodoro Sessions 📝🍅  
- ⏳ Edit Existing Tasks 📝  
- ✅ Mark Tasks as Completed ✅  
- ✅ Overview & Analytics Dashboard 📊  
- 🔐 Firebase Authentication ⏳ 
- ☁️ Real-time Sync via Firestore ⏳
- 🔔 In-App Notifications with FCM ⏳ 
- 🧪 Multi-environment Support (dev/staging/prod) ⏳

---

## 🧱 Project Architecture

Built with **modular Clean Architecture**:

```bash
lib/
├── core/
│   ├── utils/
│   ├── services/
│   ├── constants/
│   └── extensions/
├── config/
│   ├── themes/
│   ├── images/
│   └── strings/
├── features/
│   ├── tasks/
│     ├── presentation/
|       ├── cubits/
|       ├── functions/
|       ├── views/
|       └── widgets/
│     ├── data/
│     └── domain/
│   ├── timer/ as..^
│   └── analytics/ as..^
├── shared/
│ ├── presentation/
│ ├── data/
│ └── domain/
└── main_dev.dart
└── main_prod.dart
```
ذذ
## 🧰 Tools & Technologies

| Category         | Stack                                      |
|------------------|--------------------------------------------|
| Framework        | Flutter, Dart                              |
| State Management | Bloc(Cubit)                                   |
| Backend & APIs   | Firebase (Auth, Firestore)   |
| CI/CD            | GitHub Actions, Fastlane                   |
| Build Flavors    | dev, staging, prod                         |
| UI/UX            | Figma, Material Design                     |
| Testing          | flutter_test, Mockito                      |
## 🚀 CI/CD & Firebase

- CI/CD automated with **GitHub Actions + Fastlane**
- 🔄 Builds uploaded to **Firebase App Distribution**
- Separate configurations for each flavor:
  - `dev`: for testing
  - `staging`: for pre-release
  - `prod`: for production

---

## 🧪 Testing

- ✅ Unit & widget testing with `flutter_test`
- ✅ API mocking & error handling tests
- 🧪 Test-driven development for Pomodoro timer logic

---

## 🧑‍💻 Getting Started

```bash
git clone https://github.com/elsaramji/pomotasks.git
cd pomotasks
flutter pub get
flutter run --flavor dev -t lib/main_dev.dart
```
