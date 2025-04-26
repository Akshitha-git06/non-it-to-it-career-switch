CREATE DATABASE career_switch_project;
USE career_switch_project;

CREATE TABLE career_data (
  `Field of Study` VARCHAR(100),
  `Current Occupation` VARCHAR(100),
  Age INT,
  Gender VARCHAR(20),
  `Years of Experience` INT,
  `Education Level` VARCHAR(100),
  `Industry Growth Rate` VARCHAR(20),
  `Job Satisfaction` INT,
  `Work-Life Balance` INT,
  `Job Opportunities` INT,
  Salary INT,
  `Job Security` INT,
  `Career Change Interest` INT,
  `Skills Gap` INT,
  `Family Influence` VARCHAR(50),
  `Mentorship Available` INT,
  Certifications INT,
  `Freelancing Experience` INT,
  `Geographic Mobility` INT,
  `Professional Networks` INT,
  `Career Change Events` INT,
  `Technology Adoption` INT,
  `Likely to Change Occupation` INT,
  `Switch to IT` VARCHAR(20), 
  `Non-IT Background` VARCHAR(20), 
  `Non-IT to IT Switch` VARCHAR(20) 
);

-- Total Number of People Who Switched
SELECT COUNT(*) AS Total_Switches
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched';

-- Switches by Gender
SELECT Gender, COUNT(*) AS Total_Switches
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY Gender;

-- Field of Study vs Switches
SELECT `Field of Study`, COUNT(*) AS Total_Switches
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Field of Study`
ORDER BY Total_Switches DESC;

-- Current Occupation After Switching
SELECT `Current Occupation`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Current Occupation`
ORDER BY Switch_Count DESC;

-- Certifications and Switching
SELECT Certifications, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY Certifications
ORDER BY Switch_Count DESC;

-- Career Change Interest
SELECT `Career Change Interest`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Career Change Interest`
ORDER BY Switch_Count DESC;

-- Mentorship Availability
SELECT `Mentorship Available`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Mentorship Available`
ORDER BY Switch_Count DESC;

-- Skills Gap
SELECT `Skills Gap`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Skills Gap`
ORDER BY Switch_Count DESC;

-- Family Influence
SELECT `Family Influence`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Family Influence`
ORDER BY Switch_Count DESC;

-- Education Level
SELECT `Education Level`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Education Level`
ORDER BY Switch_Count DESC;

-- Job Satisfaction
SELECT `Job Satisfaction`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Job Satisfaction`
ORDER BY `Job Satisfaction`;

-- Salary Distribution (for switched)
SELECT Salary, COUNT(*) AS People
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY Salary
ORDER BY Salary DESC;

-- Geographic Mobility
SELECT `Geographic Mobility`, COUNT(*) AS Switch_Count
FROM career_data
WHERE `Non-IT to IT Switch` = 'Switched'
GROUP BY `Geographic Mobility`
ORDER BY Switch_Count DESC;

SELECT * FROM career_data;












