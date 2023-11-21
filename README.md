ASSIGNMENT 7

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


ASSIGNMENT 8

Explain the difference between Navigator.push() and Navigator.pushReplacement(), accompanied by examples of the correct usage of both methods!

Navigator.push() adds a new route onto the navigation stack, allowing users to navigate forward and backward through the app's history. For example, Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen())) adds a new route to display NextScreen. On the other hand, Navigator.pushReplacement() replaces the current route with a new one, preventing the user from returning to the previous screen using the back button. For instance, Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewScreen())) replaces the current screen with NewScreen.

Explain each layout widget in Flutter and their respective usage contexts!

Flutter provides a range of layout widgets, each with unique functions and use cases. Container is a versatile widget for styling and layout adjustments. Column and Row are used to organize widgets vertically and horizontally, respectively. Stack stacks widgets on top of each other, while ListView and GridView manage scrollable lists and grids. These widgets offer flexibility in arranging UI elements, such as arranging elements linearly, layering widgets, or displaying scrollable content.

List the form input elements you used in this assignment and explain why you used these input elements!

In this assignment, common form input elements like TextFormField were likely employed for user input capture, offering text fields with built-in validation and error handling. Buttons such as ElevatedButton or TextButton facilitated form submission or navigation between screens. Elements like ListView or GridView were used to display lists of products, allowing users to view multiple items in an organized layout within the app.

How is clean architecture implemented in a Flutter application?

Clean architecture in Flutter involves segregating code into layers for better maintainability and testability. The presentation layer contains UI elements like widgets and screens, the domain layer encapsulates business logic and use cases, and the data layer handles data sources such as APIs or databases. Each layer is independent of the others, with dependencies flowing inward toward the core. Dependency injection is often used to provide necessary dependencies across layers, ensuring separation of concerns and easier testing by decoupling different parts of the application.

Step by step :

Step 1: Adding a Menu Drawer for Navigation

Create a Drawer Widget:
Create a new file left_drawer.dart in a widgets directory.
Define a LeftDrawer widget using Drawer and ListView.
Add DrawerHeader for a styled header.
Implement routing using ListTile with Navigator.pushReplacement().
Integrate Drawer to Pages:
Import necessary pages (MyHomePage, ClothFormPage).
Add LeftDrawer() to the Scaffold widget of the pages where navigation is needed.
Replace the drawer property in Scaffold with LeftDrawer().

Step 2: Adding Forms and Input Elements

Create a Cloth Form Page:
Create a new file named clothlist_form.dart.
Implement a basic ShopFormPage widget using Scaffold.
Add a Form widget to encapsulate input fields.
Use TextFormField widgets for name, price, and description inputs.
Form Validation and Handling Input:
Implement validators for each input field.
Manage the form state using a GlobalKey<FormState>.
Update the state on field value changes using setState().
Display Data on Submission:
Add a button (ElevatedButton) to submit the form data.
Implement a showDialog with an AlertDialog to display entered data.
Reset the form state after submission using reset().

Step 3: Displaying Data

Show Dialog with Entered Data:
Enhance the showDialog method to display entered data in an AlertDialog.

Step 4: Adding Navigation to Buttons

Implement Navigation on Button Tap:
Update onTap attribute in InkWell for navigation.
Utilize Navigator.push() for navigating to ShopFormPage.

Step 5: Refactoring Files

Organize Code into Folders:
Create a widgets directory and move shop_card.dart into it.
Move ShopItem widget contents from menu.dart to widgets/cloth_card.dart.
Create a screens folder and move menu.dart and clothlist_form.dart into it.

ASSIGNMENT 9
Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?

Yes, it's possible to retrieve JSON data without creating a model in Flutter. You can directly fetch JSON data from APIs using HTTP requests without defining models. This approach might be suitable for simple applications or when the data structure is straightforward. However, not using models can make the code harder to maintain, especially when dealing with complex data structures. Models provide a structured format to handle data more efficiently, improving code readability and maintainability.

Explain the function of CookieRequest and explain why a CookieRequest instance needs to be shared with all components in a Flutter application.

In Flutter, sharing an HTTP request object with cookies (CookieRequest) across components ensures consistent authentication and authorization throughout the application. Sharing this instance allows components to maintain session data, enabling user-specific functionalities and maintaining authentication state.

Explain the mechanism of fetching data from JSON until it can be displayed on Flutter.

Fetching data from JSON in Flutter typically involves making HTTP requests to an API endpoint. Upon receiving the JSON response, it's parsed into usable Dart objects using the jsonDecode method. These decoded objects can then be utilized to populate UI components such as lists, cards, or widgets with relevant data, displaying it to the user.

Explain the authentication mechanism from entering account data on Flutter to Django authentication completion and the display of menus on Flutter.

Data Entry: In Flutter, users input their account details through UI components like text fields or forms.
HTTP Request: Upon submitting, Flutter sends an HTTP request (commonly POST) to the Django backend, carrying the entered credentials.
Django Authentication: Django handles the incoming request, verifying the credentials against the stored user data.
Token or Session: If the credentials match, Django generates an authentication token or sets a session, confirming the user's identity.
Menu Display in Flutter: Upon successful authentication, the Flutter app fetches user-specific data from Django and adjusts the displayed menus accordingly.

List all the widgets you used in this assignment and explain their respective functions.

Scaffold: Provides the basic structure for material design visual layout, including app bars, drawers, and snack bars.
AppBar: Represents the app bar, displaying the app's title and optional actions.
Drawer: Creates a drawer panel, offering navigation options and settings, typically accessible via a swipe or button press.
FutureBuilder: Allows displaying UI components based on asynchronous operations' results, like fetching data.
ListView: Renders a scrollable list of children, often used to display dynamic content fetched from APIs.
Text: Displays a string of text with customizable styling.

Explain how you implement the checklist above step by step! (not just following the tutorial).

1. Django Setup:
Create an authentication app in Django.
Add necessary settings for CORS, secure cookies, and sessions.
Define a login view in Django for user authentication.
Setup URL routing for the login function.

2. Flutter Integration:
Install required packages provider and pbp_django_auth.
Implement the CookieRequest instance sharing using Provider in the root widget.
Create a login screen in Flutter with text fields for username and password.
Use the pbp_django_auth package to authenticate users with the Django backend.

3. Custom Model Creation:
Utilize Quicktype to generate Dart models from JSON data.
Create a Dart file in the Flutter project for the generated model.

4.Fetching Data from Django and Displaying in Flutter:
Add HTTP package to Flutter for making HTTP requests.
Implement a method to fetch data from a Django JSON endpoint.
Display the retrieved data in a Flutter ListView.

5. Form Integration with Django Service:
Implement a Django view for creating products.
Modify the Flutter form to send data to Django via HTTP POST requests.

6. Logout Feature Implementation:
Create a Django view for logging users out.
Integrate logout functionality in the Flutter app using the CookieRequest instance.


