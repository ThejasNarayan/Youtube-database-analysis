# YouTube Database Analysis using SQL

## Overview
This repository contains the analysis of a dataset extracted from YouTube using SQL queries. The dataset includes information about various videos, channels, views, likes, dislikes, comments, and other relevant metrics.

## Project Structure
- `data/`: This directory contains the dataset used for analysis. 
- `analysis.sql`: SQL script containing the queries for data analysis.
- `results/`: This directory stores any output files or reports generated during the analysis.
- `README.md`: This file, providing an overview of the project.

## Analysis
The analysis is performed using SQL queries to extract, transform, and analyze the data directly from the database. The main steps of the analysis include:

1. Data Retrieval: Extracting relevant data from the YouTube database tables.
2. Data Cleaning: Handling missing values, removing duplicates, and formatting data types within the SQL queries.
3. Exploratory Data Analysis (EDA): Using SQL queries to explore the dataset, understand its structure, and identify patterns.
4. Aggregation and Calculation: Performing calculations and aggregations to derive insights such as average views per video, top channels by subscribers, etc.
5. Conclusion: Summarizing the findings and conclusions drawn from the SQL analysis.

## Usage
To replicate the analysis:

1. Clone this repository to your local machine.
2. Import the dataset into your SQL database management system.
3. Open and execute the `analysis.sql` script in your SQL environment.

## Results
The key findings of the SQL analysis are summarized below:
- [Example 1]:The top 5 most viewed videos in the dataset are dominated by music videos, indicating a strong preference for music content among viewers.
- [Example 2]:  There is a positive correlation between the number of likes and views, suggesting that videos with higher likes tend to attract more viewership.
- [Example 3]: Channels with a higher number of subscribers tend to have a larger average number of views per video, indicating a strong influence of subscriber base on video popularity.

## Future Work
Possible avenues for future exploration or enhancements to the SQL analysis can include:
- Optimization of SQL queries for better performance on large datasets.
- Incorporating additional data sources into the database for richer analysis.
- Automating the analysis pipeline using stored procedures or scheduled tasks.

## Contributors
- ThejasNarayan: Implemented SQL queries for data extraction, performed data cleaning and transformation, and conducted exploratory data analysis.
- Syed Abrar:Assisted in optimizing SQL queries for better performance and contributed to the aggregation and calculation of key metrics.
- Saqib Minhaaj:Contributed to the interpretation of SQL analysis results, drafted the README file, and provided overall project guidance.


## Acknowledgments
Any acknowledgments or credits for databases, datasets, or inspiration used in the analysis.
