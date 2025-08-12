# My Social Media - A demo project

This project is a Flutter application built using Clean Architecture, designed to be scalable, maintainable, and easy to understand. It demonstrates best practices for organizing code, managing state, and integrating with APIs.

It's configured with [Cubit] for state management, [Dio] for networking, [GetIt] as service locator, Repository Pattern and convenience methods. 

# Architecture Overview

- **Clean Architecture:** - The project is structured into distinct layers:
- **domain:** - Contains business logic and entities.
- **data:** - Handles data sources (API, local mock).
- **presentation:** - UI and Cubit-based state management.
- **Feature-based folder structure:** - Each feature has its own folder with subfolders for data, domain, and presentation.
- **Shared modules:** - Common utilities, themes, widgets, and constants are placed in core and shared folders.

# State Management
- **Cubit (from flutter_bloc)** is used for state management.
- Each feature has its own Cubit to handle state transitions and business logic.

# API Integration
- **Dio** - is used to demonstrate how to connect to a REST API.
- Although the app is currently using local mock data, the Dio setup shows how real API calls can be integrated seamlessly.

# Testing
- Includes unit tests for the feed feature.
- The test structure is modular and can be easily replicated for other features.

# First Run

After installing the package dependencies with 

```
flutter pub get
```

run the code generation tool 

```
flutter pub run build_runner build
```

To run the app use the following command:
```
flutter run
```
