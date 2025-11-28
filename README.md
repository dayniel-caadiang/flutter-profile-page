# Personal Profile Page (Flutter)

## Description
A modern, dark-themed personal profile page built using Flutter.  
The app showcases a clean, responsive UI with interactive elements such as profile views, a like button, and a contact action.  
This project demonstrates Flutter UI design, widget composition, and responsive layouts suitable for both mobile and desktop screens.

---

## Features
- **Profile Picture Display** with glowing border and fallback icon
- **Personal Information Section** (Name, Bio, Education, Focus Area)
- **Tech Tags & Skills** displayed as chips and styled badges
- **Projects Section** highlighting a VR game capstone project
- **Interactive Elements**
  - Tap to increase profile views  
  - Like/unlike toggle  
  - Contact Me button with snackbar feedback  
- **Responsive Layout**
  - Stacked UI for mobile  
  - Side-by-side layout for wider screens  
- **Hobbies & Interests** displayed with icons and card components

---

## Screenshots
_Add screenshots of your app here_

Example:

## Project Structure (Highlight)
- main.dart – App entry point, theme setup
- ProfilePage widget – Main screen and layout
- Reusable UI builders:
- _buildProfilePicture()
- _buildTechTags()
- _buildProjectCard()
- _buildFocusArea()
- _buildInteractiveSection()
- _buildHobbiesInterestsRow()

## Challenges Faced
- Creating a fully responsive layout using LayoutBuilder, Expanded, and Wrap
- Maintaining a consistent dark theme across all components
- Implementing interactive widgets for likes, views, and buttons
- Handling missing profile images using errorBuilder

## What I Learned
Designing modern UI using Flutter layouts, gradients, shadows, and card components
Structuring code using widget decomposition and clean method extraction
Managing interactive state using StatefulWidgets
Creating adaptive UIs for both mobile and desktop Flutter environments
Strengthening understanding of Flutter styling and theming
