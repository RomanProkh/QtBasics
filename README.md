# Qt Basics – Metropolia UAS (5 ECTS)

This repository contains selected **code snippets**, **configuration guides**, and **sample QML files** used in the *Qt Basics* course at **Metropolia University of Applied Sciences**.

⚠️ **Note:** This is **not** the full course content. The complete course, including theory, assignments, and assessments, is available via **Metropolia's Moodle system**.

---

### Course Overview

**Qt Basics (5 ECTS)** introduces students to modern UI development using **Qt Quick (QML)**. The course combines practical coding exercises with design-oriented thinking to help students build interactive, well-structured applications.
The course introduces:

- Declarative UI programming with QML
- Layouts, positioners, and anchors
- States, transitions, and animations
- Event handling and user interaction
- UI design workflows using Qt Design Studio
- Best practices for clean architecture and scalable component design
  
The goal is to give students hands-on experience with **declarative UI programming** in Qt and prepare them for more advanced application development using Qt/C++ or embedded platforms.

### What You'll Find Here

This repository includes:

- Selected **code examples** from exercises and demos  
- Small **projects** 
- Snippets for layouts, animations, and component structure  
- **Installation & configuration guide** for Qt on desktop

### Setup Instructions

To run the examples in this repository:

1. Download and install Qt Online Installer
2. During installation, select "Qt for Desktop Development"
3. Clone this repository:
   <em> git clone https://github.com/RomanProkh/QtBasics </em>
4. Open the project using Qt Creator.
5. Choose the correct build kit and run the application.

⚠️ **Note**: Qt Creator requires an explicit C++ toolchain. On Windows, selecting the Qt for Desktop Development component during installation includes the MinGW compiler, so no manual setup is needed. On macOS, the Qt Online Installer provides pre-built binaries compatible with the system’s default Clang compiler, though you should ensure that essential development tools are installed. On Linux, Qt relies on the system’s GCC toolchain, so you must install the necessary development packages beforehand. A guide for setting up Qt on Ubuntu is available in the 'Getting Ready' folder, and similar instructions for other Linux distributions can be found via the link at the bottom of the guide.
