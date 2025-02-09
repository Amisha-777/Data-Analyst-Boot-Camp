# 📂 Automated File Sorter

## 📝 Project Overview
Keeping your files organized can be a tedious task. This Python script scans a specified directory, categorizes files based on their extensions, and moves them into designated folders—ensuring a structured and clutter-free workspace. 

## 🚀 Features
- 🔄 **Automated File Organization** – Detects and categorizes files based on their extensions.
- 📂 **Dynamic Folder Creation** – Generates required folders automatically if they do not exist.
- 🔍 **Customizable Directory Selection** – Allows users to define the target directory.
- 🚫 **Prevents Overwriting** – Ensures existing files are not unintentionally replaced.
- ⚡ **Lightweight & Efficient** – Runs quickly without unnecessary resource consumption.

## 💻 Technologies Used
- **Python 3.x** (Core functionality)
- **os** (Interacting with the operating system for file management)
- **shutil** (Handling file movement operations efficiently)

## 📂 Example Folder Structure
Before running the script:
```
📁 My Files
│— project.pdf
│— vacation.jpg
│— report.csv
│— notes.txt
```
After execution:
```
📁 My Files
│— 📁 Documents
│   └── project.pdf
│— 📁 Images
│   └── vacation.jpg
│— 📁 CSV Files
│   └── report.csv
│— 📁 Text Files
│   └── notes.txt
```

## 🔄 How It Works
1️⃣ **Scans the defined directory** – Identifies all files present.
2️⃣ **Sorts files based on extension** – Moves `.csv`, `.jpg`, `.txt`, etc., into predefined folders.
3️⃣ **Handles missing folders** – Automatically creates the necessary directories.
4️⃣ **Ensures seamless execution** – Avoids overwriting existing files.


📌 **Stay organized, stay productive!** 🗂


