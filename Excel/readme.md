# Excel Module

## Topics Covered

### 1. Pivot Tables - Creating and customizing Pivot Tables to summarize and analyze large datasets efficiently.

### 2. Excel Formulas
- **Basic Functions:**
  - MAX, MIN: Returns the highest or lowest value in a range.
  - SUM, SUMIF, SUMIFS: Adds values based on conditions.
  - COUNT, COUNTIF, COUNTIFS: Counts cells based on conditions.

- **Logical Functions:**
  - IF, IFS: Returns different values based on specified conditions.

- **Text Functions:**
  - LEN: Counts the number of characters in a string.
  - LEFT, RIGHT, MID: Extracts specific parts of text from a cell.
  - TEXT: Formats numbers and dates into text.
  - TRIM: Removes extra spaces from text.
  - CONCATENATE: Joins multiple text strings into one.
  - SUBSTITUTE: Replaces specific text in a string (supports replacing with 1 instance, 2 instances, or all instances).

- **Date Functions:**
  - DAYS: Calculates the number of days between two dates.
  - NETWORKDAYS: Returns the number of working days between two dates, excluding weekends and holidays.

### 3. XLOOKUP and VLOOKUP

- **XLOOKUP Basics & Variants:**
  - XLOOKUP: Searches for a value in a range and returns a corresponding value from another column.
  - XLOOKUP Rows (Downside: Must be next to each other): Requires lookup and return arrays to be adjacent.
  - XLOOKUP Exact Match (Using `"*"&`, `2`): Searches with wildcard characters or specific numbers.
  - XLOOKUP Search Order: Defines search direction (first-to-last or last-to-first).
  - XLOOKUP Horizontal: Looks up values in a horizontal range.
  - XLOOKUP with SUM: Uses XLOOKUP inside SUM for dynamic calculations.

- **VLOOKUP Basics & Use Cases:**

  - VLOOKUP: Searches for a value in the first column of a range and returns a value from another column.

- **Advantages of XLOOKUP Over VLOOKUP:**
  - Can search both left and right, unlike VLOOKUP which only looks right.
  - No need for sorted data.
  - Eliminates the need for approximate match settings.
  - Works with dynamic arrays.

### 4. Conditional Formatting
- Applies rules to format cells based on values.
- Uses formulas to create custom conditions.
- Highlights duplicate values automatically.
- Applies icon sets, color scales, and data bars for better visualization.
- Allows row-based conditional formatting.

### 5. Excel Charts
- Customizing charts for better visualization.
- Exploring different chart types (bar, pie, line, etc.).
- Adding labels, titles, and formatting to enhance readability.

### 6. Basic Data Cleaning in Excel
- Formatting and standardizing data to improve consistency.
- Handling currency and additional spaces.
- Fixing date inconsistencies for accurate calculations.
- Removing duplicate data to avoid redundancy.
- Understanding purpose of data cleaning and use case.


