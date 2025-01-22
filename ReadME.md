# Mobile Testing with Appium and Robot Framework

This project demonstrates how to perform mobile testing using Appium and Robot Framework. The tests are written in Robot Framework and utilize the AppiumLibrary to interact with the mobile application.

## Prerequisites

- Python 3.13
- Appium server
- Android Emulator or a physical device
- Robot Framework
- AppiumLibrary for Robot Framework

## Installation

1. Clone the repository:
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. Create and activate a virtual environment:
    ```sh
    python3 -m venv mobile-template-env
    source mobile-template-env/bin/activate  # On Windows use `mobile-template\Scripts\activate`
    ```

3. Install the required dependencies:
    ```sh
    pip install -r requirements.txt
    pip install --upgrade pip
    ```

## Running Tests

1. Start the Appium server:
    ```sh
    appium
    ```

2. Run the tests using Robot Framework:
    ```sh
    robot tests
    ```

## Additional Information

For more information on Robot Framework and AppiumLibrary, refer to the following documentation:
- [Robot Framework](https://robotframework.org/)
- [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)
 