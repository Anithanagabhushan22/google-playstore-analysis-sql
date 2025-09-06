-- BASIC SQL QUERIES

-- Q1: Retrieve a full snapshot of the Play Store dataset to understand the available app attributes
SELECT App_ID, App_Name, Category, Ratings, Installs, Price, Last_updated
FROM google_playstore_apps;

-- Q2: Identify the distinct app categories to analyze how apps are distributed across domains
SELECT DISTINCT Category
FROM google_playstore_apps;

-- Q3: Extract all unique app names to ensure no duplicates exist in the dataset
SELECT DISTINCT App_Name AS Applications
FROM google_playstore_apps;

-- Q4: Generate a list of apps under the Communication category to evaluate competition in that segment
SELECT App_ID, App_Name, Category  
FROM google_playstore_apps
WHERE Category = 'Communication';

-- Q5: Find apps with a rating of exactly 4.5 to analyze high-performing but not top-rated applications
SELECT App_ID, App_Name, Category, Ratings 
FROM google_playstore_apps
WHERE Ratings = 4.5;

-- Q6: Identify apps with exactly 1000000 installs to benchmark against mid-tier popular apps
SELECT App_ID, App_Name AS Applications, Installs AS Total_Installs
FROM google_playstore_apps
WHERE Installs = 1000000;

-- Q7: Retrieve apps that were last updated in 2025 to track the most recently maintained apps
SELECT App_ID, App_Name AS Applications, Category, Last_updated 
FROM google_playstore_apps
WHERE Last_updated = 2025;

-- Q8: List all apps in the Gaming category to prepare for a deeper analysis of user engagement trends
SELECT App_ID, App_Name AS Applications, Category 
FROM google_playstore_apps
WHERE Category = 'Gaming';

-- Q9: Identify the bottom 5 apps with ratings below 2 to highlight poor performers
SELECT App_ID, App_Name AS Applications, Category, Ratings AS Total_Ratings
FROM google_playstore_apps
WHERE Ratings < 2 LIMIT 5;

-- Q10: Find apps with installs between 1000000 and 5000000 to analyze mid-range adoption levels
SELECT App_ID, App_Name AS Applications, Category, Installs AS Total_Installs
FROM google_playstore_apps
WHERE Installs between 1000000 and 5000000 ;

-- Q11: Rank apps by price (ascending) to identify the cheapest options in the marketplace
SELECT App_ID, App_Name AS Applications, Category, Price
FROM google_playstore_apps
ORDER BY Price;

-- Q12: Retrieve the top 3 most expensive apps to evaluate premium offerings in the store
SELECT App_ID, App_Name AS Applications, Category, Price AS Total_Price 
FROM google_playstore_apps
ORDER BY Price DESC LIMIT 3;

-- INTERMEDIATE SQL QUERIES --

-- Q13: Identify the top 5 most installed apps to determine market leaders in adoption
SELECT App_Name AS Applications, Installs AS Total_Installs
FROM google_playstore_apps
ORDER BY Installs DESC
LIMIT 5;

-- Q14: Calculate the average rating per category and rank them to assess which categories are most valued by users
SELECT Category, AVG(Ratings) AS Avg_Ratings
FROM google_playstore_apps
GROUP BY Category
ORDER BY Avg_Ratings DESC;

-- Q15: Determine the top 3 categories with the highest number of apps to evaluate market saturation
SELECT Category, COUNT(*) AS Total_Apps
FROM google_playstore_apps
GROUP BY Category
ORDER BY Total_Apps DESC LIMIT 3;

-- Q16: Find apps updated after Jan 1, 2023 to analyse the latest actively maintained applications
SELECT App_Name AS Applications, Last_Updated
FROM google_playstore_apps
WHERE Last_Updated > '2023-01-01'
ORDER BY Last_Updated DESC;

-- Q17: Compute the average price of apps in each category for apps priced above 600 to analyze premium pricing trends
SELECT Category, AVG(Price) AS Avg_Price
FROM google_playstore_apps
WHERE Price > 600
GROUP BY Category
ORDER BY Avg_Price DESC;

-- Q18: Retrieve the top 3 apps priced below 300 with the highest average price to evaluate budget-friendly competition
SELECT App_Name AS Applications, AVG(Price) AS Avg_Price
FROM google_playstore_apps
WHERE Price < 300
GROUP BY App_Name
ORDER BY Avg_Price DESC LIMIT 3 ;

-- Q19: Identify categories with an average rating greater than 4.2 to find consistently high-performing domains
SELECT Category, AVG(Ratings) AS Avg_Ratings
FROM google_playstore_apps
GROUP BY Category
HAVING AVG(Ratings) > 4.2;

-- Q20: Find apps with an average rating greater than 3 to filter out low-quality applications
SELECT App_Name, AVG(Ratings) AS Avg_Ratings
FROM google_playstore_apps
GROUP BY App_Name
HAVING AVG(Ratings) > 3 ;

-- Q21: Retrieve the top 10 apps rated greater than 4.0 to highlight leading apps by user satisfaction
SELECT App_Name AS Applications, Ratings AS Total_Ratings
FROM google_playstore_apps
WHERE Ratings > 4.0
ORDER BY Ratings DESC
LIMIT 10;



