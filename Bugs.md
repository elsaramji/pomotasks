# 🐞 Bug Report

* ✅ Timer state retrun defult values when navgait to view (solution: fixed by Saramji 🧼)
  **Notes:**
  _ReFactor Cubit sates and rebuilding widgets ._

---

## ❗ Cubit State Not Persisting Across Widgets — Solved via Dependency Injection

## 🐛 The Problem

While using `Cubit` in multiple widgets, I noticed an issue:  
**state changes in one widget were not reflected in another**.

Initially, I was doing this:

```dart
BlocProvider(
  create: (_) => TasksCubit(),
  child: FirstWidget(),
);

BlocProvider(
  create: (_) => TasksCubit(),
  child: SecondWidget(),
);
```

---

## ✅ Solution: Using Dependency Injection with Cubit to Share State Across Widgets

To ensure your `Cubit` shares the **same state** across multiple widgets, you should avoid creating a new instance every time.

Instead, use **Dependency Injection** (e.g. with [`get_it`](https://pub.dev/packages/get_it)) to provide a **single shared instance** of the Cubit.

---

## 🔧 Step 1: Setup GetIt

```dart
import 'package:get_it/get_it.dart';
import 'tasks_cubit.dart'; // your cubit file

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerSingleton<TasksCubit>(TasksCubit());
}
```

Call setupDI() before runApp():

```dart
void main() {
  setupDI();
  runApp(MyApp());
}
```

---

## 🧩 Step 2: Provide the Cubit with BlocProvider

Use BlocProvider to inject the same Cubit instance:

```dart
BlocProvider(
  create: (_) => getIt.get<TasksCubit>(),
  child: YourWidget(),
);
```

Now any widget under this provider will have access to the same Cubit and its current state
---

## 🧠 Why this works

Using get_it.registerSingleton() ensures that the same Cubit object is reused across the app.
This avoids issues like inconsistent state, duplicate Cubits, and unexpected resets.
