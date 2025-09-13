# News App

A simple and elegant news application built with Flutter. It allows users to explore top headlines, search for specific topics, and read articles. The app supports both English and Arabic languages and features a clean, responsive UI.

## 📸 Screenshots

| Home Screen | Article Details | Search |
| :---: | :---: | :---: |
| <img src="https://github.com/AliKamar34/news_app/blob/main/assets/screenShots/home.png" width="250"> | <img src="https://github.com/AliKamar34/news_app/blob/main/assets/screenShots/details.png" width="250"> | <img src="https://github.com/AliKamar34/news_app/blob/main/assets/screenShots/search_result.png" width="250"> |



## ✨ Features

- **Top Headlines**: View the latest top headlines from the US.
- **Featured Articles Carousel**: A sliding carousel for the most prominent articles.
- **Search**: Search for articles by any keyword.
- **Quick Search**: Pre-defined categories for quick searching (e.g., Business, Technology).
- **Article Details**: View a summary of an article, including title, author, and description.
- **In-App Browser**: Read the full article on its original website without leaving the app.
- **Localization**: Seamlessly switch between English and Arabic.
- **Responsive UI**: Adapts to different screen sizes.
- **Loading Skeletons**: Provides a smooth user experience while data is being fetched.

## 🏗️ Architecture

This project follows the principles of **Clean Architecture** to create a scalable and maintainable codebase. The code is organized into layers:

- **Presentation**: Contains the UI (Widgets) and state management (Bloc/Cubit). It is responsible for displaying data and handling user input.
- **Data**: Contains repository implementations and data sources (remote API calls). It fetches data and passes it to the domain layer.

### State Management

The app uses the **Bloc** library for state management, which helps in separating business logic from the UI.

- `GetArticlesCubit`: Manages the state for fetching and displaying top headlines on the home screen.
- `SearchCubit`: Manages the state for searching articles.

## 🛠️ Technologies & Packages

- **State Management**: flutter_bloc
- **Navigation**: go_router
- **Networking**: dio
- **Localization**: easy_localization
- **Functional Programming**: dartz
- **Image Caching**: cached_network_image
- **Web View**: webview_flutter
- **Loading Skeletons**: skeletonizer
- **Secure Storage**: flutter_secure_storage
- **Carousel**: carousel_slider

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Setup

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/AliKamar34/news_app.git
    cd news_app
    ```

2.  **Set up the API Key:**
    This project uses the NewsAPI. You need to get your own free API key from their website.

    - Create a new file named `secrets.dart` inside the `lib/core/` directory.
    - Add your API key to this file as follows:

      ```dart
      // lib/core/secrets.dart
      class Secrets {
        static const String apiKey = 'YOUR_API_KEY_HERE';
      }
      ```

3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

4.  **Generate localization files:**
    If you make any changes to the translation files in `assets/translations`, run the following command to regenerate the locale keys:
    ```sh
    flutter pub run easy_localization:generate -S "assets/translations" -O "lib/core/localization" -o "locale_keys.g.dart" -f keys
    ```

5.  **Run the app:**
    ```sh
    flutter run
    ```

## 📁 Project Structure

The project follows a feature-first directory structure.

```
lib
├── core/                # Core utilities, helpers, networking, routing, themes
│   ├── errors/
│   ├── helpers/
│   ├── localization/
│   ├── networking/
│   ├── routing/
│   ├── themes/
│   └── widgets/
├── features/            # Feature-based modules
│   ├── home/
│   │   ├── data/
│   │   ├── presentation/
│   └── search/
│       ├── data/
│       └── presentation/
├── main.dart            # App entry point
└── news_app.dart        # Root widget of the app
```
