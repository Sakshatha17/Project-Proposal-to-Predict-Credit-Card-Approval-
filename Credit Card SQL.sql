# Q1.Group the customers based on their income type? and
 #find the average of their annual income.?
 
SELECT Type_Income, AVG(Annual_Income) AS Average_Income
FROM credit_data
GROUP BY Type_Income;

#Q2.Find the female owners of cars and property?
SELECT *
FROM credit_data
WHERE GENDER = 'F'
AND (Propert_Owner = 'Y' AND Car_Owner = 'Y');

#QTo find total number of Females owning Car and Property?
SELECT count(*)
FROM credit_data
WHERE GENDER = 'F'
AND (Propert_Owner = 'Y' AND Car_Owner = 'Y');

#Q3.Find the female customers who are staying with their families?
SELECT *
FROM credit_data
WHERE GENDER = 'F'
AND marital_status = 'Married'
AND Family_Members > 1;

#Q4.Please list the top five people having the highest income?
SELECT *
FROM credit_data
ORDER BY Annual_income DESC
LIMIT 5;

#Q5.How many married couple are having bad credit ?
SELECT COUNT(*) AS num_married_couples_bad_credit
FROM credit_data
WHERE label = 1
AND Marital_status = "Married" ;

#Q6. What is the highest education level and  what is the total count ?
SELECT EDUCATION, COUNT(*) AS total_count
FROM credit_data
GROUP BY EDUCATION
ORDER BY total_count DESC
LIMIT 1;

#Q7.Between married males and females, who is having more bad credit ?
SELECT GENDER, COUNT(*) AS total_count
FROM credit_data
WHERE label = 1
AND Marital_status = 'Married'
GROUP BY GENDER
ORDER BY total_count DESC
limit 2 ;



 
