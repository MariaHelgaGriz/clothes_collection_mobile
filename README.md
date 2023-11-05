#ASSIGNMENT 7#
What are the main differences between stateless and stateful widget in Flutter?
In Flutter, two primary widget types exist: stateless widgets and stateful widgets. 
The key differnece between them are in their handling of internal state and UI updates. Stateless widgets are unchanging and solely rely on their initial input parameters for rendering, making them ideal for static or data-driven components. In contrast, stateful widgets are mutable and maintain their internal state, allowing them to adapt to changing conditions or user interactions. When state changes, a stateful widget rebuilds itself, making them suitable for dynamic elements like interactive interfaces, forms, and animations. To choose between stateless and stateful widgets depends on whether a component needs to manage internal state and update its appearance over time or remain static.

Explain all widgets that you used in this assignment.
The assignment involves the use of various Flutter widgets to develop a basic mobile application. It begins with configuring the app's theme color to indigo. The main.dart file is modified to convert the menu page widget from stateful to stateless, simplifying its structure. The app's home page is designed using widgets such as Scaffold, AppBar, SingleChildScrollView, Column, and GridView.count to create a visually pleasing layout with the shop's name displayed prominently. Additionally, a custom ShopCard widget is introduced to represent items for sale, featuring icons and interactive touch areas through the InkWell widget. When an item card is tapped, a SnackBar is displayed, providing brief notifications to the user. These widgets collectively contribute to the creation of an aesthetically pleasing and user-friendly mobile app.

Step by step :

1. Flutter Installation: Begin by installing Flutter on your system, following the instructions for your specific operating system.
Choose an IDE: Select your preferred Integrated Development Environment (IDE), such as Android Studio or Visual Studio Code. If using Visual Studio Code, install the Dart and Flutter extensions.
2. Create a Flutter Project: Open your terminal and navigate to the desired project directory. Use the command flutter create <APP_NAME> to create a new Flutter project and then navigate into the project directory with cd <APP_NAME>.
Run the Project: Launch the Flutter project by running flutter run. If you're on macOS, you have options to run it in an emulator within Android Studio or in Google Chrome by enabling web support.
3. Set Up Git Repository: Initialize a Git repository in the project folder with the command git init.
Organize Project Structure: To maintain a clean project structure, create a file named menu.dart in the lib directory. Move relevant code from main.dart to menu.dart, and resolve import issues.
4. Customize App Theme: Modify the app's theme color by updating the code related to the Material Color, changing the color scheme to indigo.
5. Convert Widget to Stateless: In main.dart, convert the MyHomePage widget to a stateless widget by removing the title attribute, making it stateless, and adding the build method.
Create Item List: In menu.dart, define a class named ShopItem to represent items for sale. Create a list of ShopItem instances with names and icons, and add this list to the stateless widget class.
5. Build the UI: In the stateless widget's build method, create the user interface using widgets like Scaffold, AppBar, Text, and GridView. Map the ShopItem list to a list of ShopCard widgets, and display them in a grid layout.
6. Create ShopCard Widget: Define a stateless widget class called ShopCard to represent item cards. Each card displays an icon and a name, and clicking the card triggers a SnackBar notification.
