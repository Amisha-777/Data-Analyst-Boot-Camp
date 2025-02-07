# Web Scraping with BeautifulSoup and Requests

## 📌 Overview

This learning was focusesed on web scraping using Python's BeautifulSoup and Requests libraries. The objective is to extract information from a [webpage](https://www.scrapethissite.com/pages/forms/) and display structured data.

## Skills Learned
- Web Scraping using Python
- Extracting and parsing HTML content
- Using **BeautifulSoup** and **Requests** libraries

## Technologies Used
- Python: Used for web scraping
- BeautifulSoup: Extracts data from webpages
- Requests: Fetches webpage content

## Project Details
### Web Scraping Steps
1. Sent an HTTP GET request to the target webpage using the requests library.
2. Parsed the webpage's HTML content using BeautifulSoup.
3. Extracted specific elements from the webpage, including:
4. The first div tag found.
5. All div elements with class col-md-12.
6. All p tags with class lead.
7. Text content from specific p and th elements.
8. Used .text.strip() to clean extracted text for readability.

## Future Improvements
- Automating data extraction for dynamic websites
- Saving extracted data into structured formats like CSV or JSON
- Expanding scraping logic
