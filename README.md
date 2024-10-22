# To-DO-APP

This *To-DO-APP* is a Flutter application designed to help users efficiently manage their tasks. The app allows users to add, edit, delete, and complete tasks with a clean and user-friendly interface.

## Features

- *Add Tasks*: Create new tasks with titles, descriptions, and due dates.
- *Edit Tasks*: Modify existing tasks for corrections or updates.
- *Delete Tasks*: Remove tasks from the list by swiping.
- *Responsive UI*: Ensures that the layout adapts to different screen sizes and orientations.
- *Dark Mode*: Support for both light and dark themes based on user preferences.
- *Firebase Integration*: Sync tasks in real-time across devices using Firebase.

## Technologies Used

- *Flutter*: A cross-platform framework to build the app for both Android and iOS.
- *Firebase*: For real-time data syncing and authentication.
- *Provider*: State management for handling app-wide changes efficiently.
- *Google Fonts*: To enhance the visual styling of text elements.
- *Dart*: The programming language used in Flutter for app development.

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install) (version 3.0 or later)
- [Dart](https://dart.dev/get-dart)
- Firebase project set up (for backend and data syncing)

### Installation

1. *Clone the Repository*

   bash
   git clone https://github.com/ZiadElshal/To-Do-List-App.git

   

3. *Navigate to the Project Directory*

   bash
   cd task-management-app
   

4. *Install Dependencies*

   Run the following command to fetch the required packages:

   bash
   flutter pub get
   

5. *Firebase Setup*

   - Set up Firebase for your project:
     - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/).
     - Follow the instructions to add both Android and iOS Firebase configurations,(or simply choose flutter configuration).
     - Replace google-services.json (for Android) and GoogleService-Info.plist (for iOS) in the respective directories, or just use flutter integration provided by Firebase.

6. *Run the Application*

   To run the application on your preferred device, use:

   bash
   flutter run
   


## Screenshots

### Light Mode

<p align="center">

  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/splash_screen_light.png?raw=true" alt="Sign Up" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/login.png?raw=true" alt="Sign Up" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/register.png?raw=true" alt="Sign In" width="220" style="margin: 10px;"/>
</p>

<p align="center">
        <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/task_list_tab.png?raw=true" alt="Validator dark" width="220" style="margin: 10px;"/>
     <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/add_task.png?raw=true" alt="Task" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/added_task_snackBar.png?raw=true" alt="Task Add" width="220" style="margin: 10px;"/>

<p align="center">
     <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/delete_edit.png?raw=true" alt="Task Delete" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/edit_task_screen.png?raw=true" alt="Done Task" width="220" style="margin: 10px;"/>
    <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/deleted_task_snackBar.png?raw=true" alt="Dialog Dark" width="220" style="margin: 10px;"/>

<p align="center">
       <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/done.png?raw=true![img.png](img.png)" alt="Edit Task" width="220" style="margin: 10px;"/>
      <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/light/setting_tab.png?raw=true" alt="Settings" width="220" style="margin: 10px;"/>
   ></p>

### Dark Mode

<p align="center">

  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/splash_screen_dark.png?raw=true" alt="Sign Up" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/login.png?raw=true" alt="Sign Up" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/register.png?raw=true" alt="Sign In" width="220" style="margin: 10px;"/>
</p>

<p align="center">
        <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/task_list_tab_dark.png?raw=true" alt="Validator dark" width="220" style="margin: 10px;"/>
     <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/add_task_dark.png?raw=true" alt="Task" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/added_task_snackBar_dark.png?raw=true" alt="Task Add" width="220" style="margin: 10px;"/>

<p align="center">
     <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/delete_edit_dark.png?raw=true" alt="Task Delete" width="220" style="margin: 10px;"/>
  <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/edit_task_screen_dark.png?raw=true" alt="Done Task" width="220" style="margin: 10px;"/>
    <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/deleted_task_snackBar_dark.png?raw=true" alt="Dialog Dark" width="220" style="margin: 10px;"/>

<p align="center">
       <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/done_dark.png?raw=true![img.png](img.png)" alt="Edit Task" width="220" style="margin: 10px;"/>
      <img src="https://github.com/ZiadElshal/To-Do-App/blob/master/screenshots/dark/setting_tab_dark.png?raw=true" alt="Settings" width="220" style="margin: 10px;"/>
   ></p>

## Contributions

Feel free to fork this repository, open issues, and submit pull requests. Contributions are highly appreciated!
