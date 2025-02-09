# Web Scraping Top U.S. Companies by Revenue

## 📌 Overview
This repository contains a Python script for web scraping, developed as part of my learning journey in Python programming. The script efficiently extracts tabular data from a Wikipedia, processes it for accuracy and consistency, and exports the cleaned data into a well-structured CSV file for further analysis.

## Project Highlights
*   **Data Acquisition**: Utilizes BeautifulSoup and requests to scrape company rankings, names, industries, and revenue figures
*   **Data Transformation**: Leverages pandas to convert the raw HTML table into a structured DataFrame, standardizing column names, handling missing values, and correcting data types for numerical analysis.
*   **Data Analysis**: Provides basic Exploratory Data Analysis (EDA) to identify trends, patterns, and insights from the scraped data, such as revenue distribution across industries.

## 🌐 Data Source
*   The primary data source is the "[List of largest companies in the United States by revenue](https://en.wikipedia.org/wiki/List_of_largest_companies_in_the_United_States_by_revenue)" Wikipedia page, which compiles data based on the Fortune 500 list. The analysis focuses on the top 100 companies as of 2024 (mostly for fiscal year 2023).

## 🛠️ Technologies Used
*   Python 3.x
*   BeautifulSoup4: For parsing HTML content.
*   Requests: For fetching web pages.
*   Pandas: For data manipulation and analysis.
*   Jupyter Notebook: For interactive development and documentation.

## Key Learnings and Implementation Details
*   **Dynamic Table Handling**: The script handles HTML tables efficiently, navigating through table structures to extract relevant data.
*   **Data Cleaning**: Comprehensive data cleaning techniques are applied to handle missing values, standardize formats, and ensure data integrity.
*   **Automated Data Updates**: The script can be adapted to scrape updated data periodically, providing a mechanism for continuous data monitoring.
*   **Scalability**: The script can be extended to scrape additional pages or data points from the Fortune 500 list, offering scalability for more extensive analysis.
