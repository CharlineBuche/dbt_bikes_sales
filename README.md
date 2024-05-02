# Analysis of bikes sales

### Introduction

The file lists the international sales of a bike retailer.

This analysis will focus on sales by country to understand the differences between each country (pricing policy and customer’s behavior) and propose recommendations to improve the business.

### Source

The dataset was sourced by [The Devastator on Kaggle](https://www.kaggle.com/thedevastator).

The dataset was created by [Vineet Bahl's](https://data.world/vineet).

### DBT project

I create a DBT project to make some light changes (cleaning and transformation explained below).

I importe the finalized table on Power BI in order to make visualizations and draw conclusions.

### **Exploration, cleaning and transformations**

- 34 867 raws and 16 columns
- Each row represents sales per day and per product with informations about customer profil (age, gender, country) and sales (cost, price, revenue).
- Date range : from january 2015 from july 2016
- 4 countries and 45 states :
    - France (16 states)
    - United States (22 states)
    - Germany (6 states)
    - United Kingdom (1 state = England)
- 3 product categories :
    - Clothing
    - Accessories
    - Bikes
- 17 sub categories :
    - Caps
    - Socks
    - Vests
    - Gloves
    - Shorts
    - Fenders
    - Helmets
    - Jerseys
    - Cleaners
    - Bike Racks
    - Road Bikes
    - Bike Stands
    - Touring Bikes
    - Mountain Bikes
    - Hydration Packs
    - Tires and Tubes
    - Bottles and Cages
- Cleaning (staging folder) - minimum changes such as :
    - Changing the name of some columns
    - Changing the type into INT for ‘Year’, ‘Customer_Age’ and ‘Quantity’
    - Suppressing columns (index and Column1)
    - “Unit_Price” round decimals
    - Suppressing the raw with null values (one raw)
    - Adding a new column with Year and Month
- Transformation (intermediate folder) :
    - Calculating margin
    - Assigning an age group to make graphs easier to read and understand
    - I create tables in a mart folder to start the analysis but it wasn’t useful.

### **Analysis**

The analysis is available on my Notion <a href="https://forested-random-fe5.notion.site/Analysis-of-bikes-sales-bf31abb7bf1e4bcfb638f3aa23747f29">here</a>
