# Flutter DI and Repository Pattern Example

This is a Flutter practice app that demonstrates how to implement Dependency Injection (DI) and the Repository Pattern. The app fetches posts from the [JSONPlaceholder API](https://jsonplaceholder.typicode.com/posts), using the `http` package to make network requests. The app architecture uses the `Provider` for state management and `GetIt` for DI. 

## Features

- Fetch posts data from JSONPlaceholder API.
- Implemented Repository Pattern for API interactions.
- Dependency Injection using `GetIt` for better separation of concerns.
- State management using `Provider` for UI updates.

## Tech Stack

- **Flutter**: Cross-platform mobile development framework.
- **http**: To make network requests to the JSONPlaceholder API.
- **Provider**: For state management.
- **GetIt**: For dependency injection.

## Project Structure

The project is organized as follows:

- `lib/`
  - `main.dart`: Entry point of the app.
  - `core/`: Contains the core structure of the app.
    - `models/`: Contains data models (e.g., `Post`).
    - `repository/`: Contains classes implementing the Repository Pattern for data management (e.g., `PostRepository`).
    - `service/`: Contains classes responsible for interacting with external services (e.g., `PostService`).
    - `provider/`: Contains state management classes using `Provider` (e.g., `PostProvider`).
    - `view/`: Contains the UI layer, including screens and widgets.

## Setup & Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
