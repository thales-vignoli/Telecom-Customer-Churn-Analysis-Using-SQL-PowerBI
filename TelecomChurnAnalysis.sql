/* ------ DATA CLEANING ------ */

/*Find the number of consumers*/

SELECT
COUNT(DISTINCT(Customer_ID)) as Total_Customer
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`

/*Find duplicate rows*/

SELECT 
Customer_ID, COUNT (*) as Total_Duplicates
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
GROUP BY Customer_ID
HAVING COUNT(*) > 1 

/*Find and analyse missing values*/

  WITH MissingValueCounts AS (
SELECT 'Customer ID' AS ColumnName, COUNT(*) - COUNT(Customer_ID) AS MissingCount
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Gender', COUNT(*) - COUNT(Gender)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Age', COUNT(*) - COUNT(Age)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Married', COUNT(*) - COUNT(Married)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Number_of_Dependents', COUNT(*) - COUNT(Number_of_Dependents)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'City', COUNT(*) - COUNT(City)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Number_of_Referrals', COUNT(*) - COUNT(Number_of_Referrals)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Tenure_in_Months', COUNT(*) - COUNT(Tenure_in_Months)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Offer', COUNT(*) - COUNT(Offer)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Phone_Service', COUNT(*) - COUNT(Phone_Service)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Phone_Service', COUNT(*) - COUNT(Phone_Service)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Avg_Monthly_Long_Distance_Charges', COUNT(*) - COUNT(Avg_Monthly_Long_Distance_Charges)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Multiple_Lines', COUNT(*) - COUNT(Multiple_Lines)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Internet_Service', COUNT(*) - COUNT(Internet_Service)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Internet_Type', COUNT(*) - COUNT(Internet_Type)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Avg_Monthly_GB_Download', COUNT(*) - COUNT(Avg_Monthly_GB_Download)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Online_Security', COUNT(*) - COUNT(Online_Security)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Online_Backup', COUNT(*) - COUNT(Online_Backup)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Device_Protection_Plan', COUNT(*) - COUNT(Device_Protection_Plan)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Premium_Tech_Support', COUNT(*) - COUNT(Premium_Tech_Support)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Streaming_TV', COUNT(*) - COUNT(Streaming_TV)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Streaming_Movies', COUNT(*) - COUNT(Streaming_Movies)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Streaming_Music', COUNT(*) - COUNT(Streaming_Music)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Unlimited_Data', COUNT(*) - COUNT(Unlimited_Data)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Contract', COUNT(*) - COUNT(Contract)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Paperless_Billing', COUNT(*) - COUNT(Paperless_Billing)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Payment_Method', COUNT(*) - COUNT(Payment_Method)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Monthly_Charge', COUNT(*) - COUNT(Monthly_Charge)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Charges', COUNT(*) - COUNT(Total_Charges)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Refunds', COUNT(*) - COUNT(Total_Refunds)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Extra_Data_Charges', COUNT(*) - COUNT(Total_Extra_Data_Charges)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Long_Distance_Charges', COUNT(*) - COUNT(Total_Long_Distance_Charges)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Revenue', COUNT(*) - COUNT(Total_Revenue)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Churn_Category', COUNT(*) - COUNT(Churn_Category)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Churn_Reason', COUNT(*) - COUNT(Churn_Reason)
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned')

SELECT ColumnName, MissingCount
FROM MissingValueCounts
WHERE MissingCount > 0
ORDER BY MissingCount DESC;

SELECT
'Internet_Type' AS Column_Name,
STRING_AGG(DISTINCT Internet_Type, ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Streaming_TV' AS Column_Name,
STRING_AGG(DISTINCT CAST(Streaming_TV AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Multiple_Lines' AS Column_Name,
STRING_AGG(DISTINCT CAST(Multiple_Lines AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Streaming_Music' AS Column_Name,
STRING_AGG(DISTINCT CAST(Streaming_Music AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Device_Protection_Plan' AS Column_Name,
STRING_AGG(DISTINCT CAST(Device_Protection_Plan AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Premium_Tech_Support' AS Column_Name,
STRING_AGG(DISTINCT CAST(Premium_Tech_Support AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Streaming_Movies' AS Column_Name,
STRING_AGG(DISTINCT CAST(Streaming_Movies AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Online_Security' AS Column_Name,
STRING_AGG(DISTINCT CAST(Online_Security AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Online_Backup' AS Column_Name,
STRING_AGG(DISTINCT CAST(Online_Backup AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Unlimited_Data' AS Column_Name,
STRING_AGG(DISTINCT CAST(Unlimited_Data AS STRING), ', ') AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Avg_Monthly_GB_Download' AS Column_Name,
CAST(ROUND(AVG(Avg_Monthly_GB_Download), 2) AS STRING) AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
UNION ALL
SELECT
'Avg_Monthly_Long_Distance_Charges' AS Column_Name,
CAST(ROUND(AVG(Avg_Monthly_Long_Distance_Charges), 2) AS STRING) AS Data_Values
FROM
`river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`;

SELECT 
COUNT(*) as Total_Churned,
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'

 
/* ------ DATA EXPLORATION ------ */

/* 1. What is the number and proportion of customers who have churned?*/
SELECT
COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) as Total_Churned,
ROUND(COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) / COUNT(*) * 100,2) as Propotion_Churned
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`;

/* 2. What is the average age of the consumers that joined, stayed and churned?*/

SELECT
  ROUND(AVG(CASE WHEN Customer_Status = 'Joined' THEN Age END), 2) AS Avg_Age_Joined,
  ROUND(AVG(CASE WHEN Customer_Status = 'Stayed' THEN Age END), 2) AS Avg_Age_Stayed,
  ROUND(AVG(CASE WHEN Customer_Status = 'Churned' THEN Age END), 2) AS Avg_Age_Churned
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`;

/*3. What is the gender's proportion churn?*/

SELECT
Gender,
COUNT(Gender) as Total,
ROUND((COUNT(*) / (SELECT COUNT(*) FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` WHERE Customer_Status = 'Churned')) * 100, 2) as Proportion_Churned
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
GROUP BY Gender;

/*4. The state civil of customers has correlation with churned?*/

SELECT
Married,
COUNT(Married) as Total,
ROUND((COUNT(*) / (SELECT COUNT(*) FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` WHERE Customer_Status = 'Churned')) * 100, 2) as Proportion_Churned
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Customer_Status = 'Churned'
GROUP BY Married;

/*5. The number of dependents of customers has correlation with churned?*/
UPDATE `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
SET Number_of_Dependents = 1
WHERE Number_of_Dependents >= 1;

SELECT
    main.Customer_Status,
    main.Number_of_Dependents as Dependents,
    COUNT(*) AS Total,
    ROUND(COUNT(*) / Total_Status.Total_Per_Status * 100, 2) AS Rate_For_Each_Status
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` main
JOIN (
    SELECT
        Customer_Status,
        COUNT(*) AS Total_Per_Status
    FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
    GROUP BY Customer_Status
) AS Total_Status
ON main.Customer_Status = Total_Status.Customer_Status
GROUP BY main.Customer_Status, main.Number_of_Dependents, Total_Status.Total_Per_Status
ORDER BY main.Customer_Status ASC, Dependents;



/*6. Average of referrals by customer's status*/

SELECT
Customer_Status,
ROUND(AVG(Number_of_Referrals),2) as Avg_Referrals
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
GROUP BY Customer_Status
ORDER BY Avg_Referrals DESC;

/*7 The better offer for each customer's status*/
SELECT
Customer_Status,
Offer,
COUNT(Offer) as Total
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
GROUP BY Customer_Status, Offer
ORDER BY Customer_Status, Total DESC;

/*8. Average of tenure in months by customer's status*/

SELECT
Customer_Status,
ROUND(AVG(Tenure_in_Months),2) as Avg_Tenure
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
GROUP BY Customer_Status
ORDER BY Avg_Tenure DESC;

/*9 Average monthly long distance charge for each customer's status*/
SELECT
Customer_Status,
ROUND(AVG(Avg_Monthly_Long_Distance_Charges),2) as Avg_Monthly_Long_Distance_Charges
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
GROUP BY Customer_Status;

/*10 Total of phone service for each customer's status*/
SELECT
Customer_Status,
Phone_Service,
COUNT(Phone_Service) as Total
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
GROUP BY Phone_Service, Customer_Status
ORDER BY Customer_Status, Total DESC;



/*12 Total of multiple lines for each customer's status*/
SELECT
Customer_Status,
Multiple_lines,
COUNT(Multiple_Lines) as Total
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Multiple_Lines IS NOT NULL
GROUP BY Customer_Status, Multiple_Lines
ORDER BY Customer_Status DESC;

/*12 Total of internet service for each customer's status*/

WITH CountData AS (
  SELECT
    Customer_Status,
    Internet_Service,
    COUNT(*) AS Total
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Internet_Service IS NOT NULL
  GROUP BY Customer_Status, Internet_Service
),
TotalPerStatus AS (
  SELECT
    Customer_Status,
    SUM(Total) AS StatusTotal
  FROM CountData
  GROUP BY Customer_Status
)
SELECT
  CountData.Customer_Status,
  CountData.Internet_Service,
  CountData.Total,
  ROUND((CountData.Total / TotalPerStatus.StatusTotal) * 100, 2) AS Percentage
FROM CountData
JOIN TotalPerStatus ON CountData.Customer_Status = TotalPerStatus.Customer_Status
ORDER BY CountData.Customer_Status DESC, CountData.Internet_Service;


/*13. Main internet type for each customer's status*/
SELECT
Customer_Status,
Internet_Type,
COUNT(Internet_Type) as Total
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Internet_Type IS NOT NULL
GROUP BY Customer_Status, Internet_Type
ORDER BY Customer_Status DESC;

/*14. Average monthly of gb download for each customer's status */
SELECT
Customer_Status,
ROUND(AVG(Avg_Monthly_GB_Download),2) as Average_Download
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Avg_Monthly_GB_Download IS NOT NULL
GROUP BY Customer_Status
ORDER BY Average_Download DESC;

/*15. Proportion of user that has online security for each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Online_Security IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Online_Security,
  COUNT(a.Online_Security) as Total,
  ROUND(COUNT(a.Online_Security) * 100.0 / b.TotalPerStatus,2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Online_Security IS NOT NULL
GROUP BY a.Customer_Status, a.Online_Security, b.TotalPerStatus
ORDER BY a.Customer_Status DESC, a.Online_Security;

/*16. Proportion of user that has online backup for each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Online_Backup IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Online_Backup,
  COUNT(a.Online_Backup) as Total,
  ROUND(COUNT(a.Online_Backup) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Online_Backup IS NOT NULL
GROUP BY a.Customer_Status, a.Online_Backup, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;



/*18. Proportion of user that has device protection plan for each customer's status */
WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Device_Protection_Plan IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Device_Protection_Plan,
  COUNT(a.Device_Protection_Plan) as Total,
  ROUND(COUNT(a.Device_Protection_Plan) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Device_Protection_Plan IS NOT NULL
GROUP BY a.Customer_Status, a.Device_Protection_Plan, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;

/*19. Proportion of user that has premium tech support plan for each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Premium_Tech_Support IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Premium_Tech_Support,
  COUNT(a.Premium_Tech_Support) as Total,
  ROUND(COUNT(a.Premium_Tech_Support) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Premium_Tech_Support IS NOT NULL
GROUP BY a.Customer_Status, a.Premium_Tech_Support, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;



/*20. Proportion of user that has streaming TV plan for each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Streaming_TV IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Streaming_TV,
  COUNT(a.Streaming_TV) as Total,
  ROUND(COUNT(a.Streaming_TV) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Streaming_TV IS NOT NULL
GROUP BY a.Customer_Status, a.Streaming_TV, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;


/*21. Proportion of user that has streaming movies plan for each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Streaming_Movies IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Streaming_Movies,
  COUNT(a.Streaming_Movies) as Total,
  ROUND(COUNT(a.Streaming_Movies) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Streaming_Movies IS NOT NULL
GROUP BY a.Customer_Status, a.Streaming_Movies, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;

/*22. Proportion of user that has streaming music plan for each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Streaming_Music IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Streaming_Music,
  COUNT(a.Streaming_Music) as Total,
  ROUND(COUNT(a.Streaming_Music) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Streaming_Music IS NOT NULL
GROUP BY a.Customer_Status, a.Streaming_Music, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;

/*23. Proportion of user that has unlimited data plan for each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Unlimited_Data IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Unlimited_Data,
  COUNT(a.Unlimited_Data) as Total,
  ROUND(COUNT(a.Unlimited_Data) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Unlimited_Data IS NOT NULL
GROUP BY a.Customer_Status, a.Unlimited_Data, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;


/*24. More used type of contract by each customer's status */

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
  WHERE Contract IS NOT NULL
  GROUP BY Customer_Status
)

SELECT
  a.Customer_Status,
  a.Contract,
  COUNT(a.Contract) as Total,
  ROUND(COUNT(a.Contract) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis` a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE a.Contract IS NOT NULL
GROUP BY a.Customer_Status, a.Contract, b.TotalPerStatus
ORDER BY a.Customer_Status, Total DESC;


/*25. Analysing the more common payment method for each customer's status */

SELECT
Customer_Status,
Payment_Method,
COUNT(Payment_Method) as Total
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Payment_Method IS NOT NULL
GROUP BY Customer_Status, Payment_Method
ORDER BY Customer_Status, Total DESC;

/*26. Average of monthly charge for each customer's status */

SELECT
Customer_Status,
ROUND(AVG(Monthly_Charge),2) as Average_Monthly_Charge
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Monthly_Charge IS NOT NULL
GROUP BY Customer_Status
ORDER BY Customer_Status DESC;

/*27. Average of total charge for each customer's status */

SELECT
Customer_Status,
ROUND(AVG(Total_Charges),2) as Avg_Total_Charges
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Total_Charges IS NOT NULL
GROUP BY Customer_Status
ORDER BY Avg_Total_Charges DESC;


/*28. Average of total refunds for each customer's status */

SELECT
Customer_Status,
ROUND(AVG(Total_Refunds),2) as Avg_Total_Refunds
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Total_Refunds IS NOT NULL
GROUP BY Customer_Status
ORDER BY Avg_Total_Refunds DESC;

/*29. Average of total extra data charges for each customer's status */

SELECT
Customer_Status,
ROUND(AVG(Total_Extra_Data_Charges),2) as Avg_Total_Extra_Data_Charges
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Total_Extra_Data_Charges IS NOT NULL
GROUP BY Customer_Status
ORDER BY Customer_Status DESC;

/*30. Average of total long distance charges for each customer's status */

SELECT
Customer_Status,
ROUND(AVG(Total_Long_Distance_Charges),2) as Avg_Total_Long_Distance_Charges
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Total_Long_Distance_Charges IS NOT NULL
GROUP BY Customer_Status
ORDER BY Avg_Total_Long_Distance_Charges DESC;

/*31. Average of total revenue for each customer's status */

SELECT
Customer_Status,
ROUND(AVG(Total_Revenue),2) as Avg_Revenue
FROM `river-howl-405022.telecom_churn_analysis.telecom_churn_analysis`
WHERE Total_Revenue IS NOT NULL
GROUP BY Customer_Status
ORDER BY Avg_Revenue DESC;

