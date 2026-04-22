SELECT *
FROM Bronze
WHERE Student_ID IS NULL
   OR First_Name IS NULL
   OR Last_Name IS NULL
   OR Email IS NULL
   OR Gender IS NULL
   OR Department IS NULL
   OR Grade IS NULL
   OR Extracurricular_Activities IS NULL
   OR Internet_Access_at_Home IS NULL
   OR Parent_Education_Level IS NULL
   OR Family_Income_Level IS NULL
   OR Age IS NULL
   OR Math_Score IS NULL
   OR assi_Math IS NULL
   OR Science_Score IS NULL
   OR assi_Science IS NULL
   OR English_Score IS NULL
   OR assi_English IS NULL
   OR Social_Studies_Score IS NULL
   OR assi_Social_Studie IS NULL
   OR French_Score IS NULL
   OR assi_French IS NULL
   OR Computer_Science_Score IS NULL
   OR assi_Computer_Science IS NULL
   OR last_score IS NULL
   OR Study_Hours_per_Week IS NULL
   OR Stress_Level_1_10 IS NULL
   OR Sleep_Hours_per_Night IS NULL
   OR assi_late IS NULL
   OR non_academic_attendance IS NULL
   OR academic_attendance IS NULL
   OR lms_login_freq_per_day IS NULL
   OR lms_active_avg_hrs IS NULL
   OR resource_access_avg_hrs IS NULL;

SELECT *
FROM Bronze

SELECT 
    Gender,
    Grade,
    Department,
    MIN(assi_late) AS min_assi_late,
    MIN(non_academic_attendance) AS min_non_academic,
    MIN(academic_attendance) AS min_academic,
    MIN(lms_login_freq_per_day) AS min_login,
    MIN(lms_active_avg_hrs) AS min_lms_hours,
    MIN(resource_access_avg_hrs) AS min_resource
FROM Bronze
GROUP BY Gender, Grade, Department
ORDER BY Grade,Department;

SELECT 
    Gender,
    Grade,
    Department,
    MAX(assi_late) AS max_assi_late,
    MAX(non_academic_attendance) AS max_non_academic,
    MAX(academic_attendance) AS max_academic,
    MAX(lms_login_freq_per_day) AS max_login,
    MAX(lms_active_avg_hrs) AS max_lms_hours,
    MAX(resource_access_avg_hrs) AS max_resource
FROM Bronze
GROUP BY Gender, Grade, Department
ORDER BY Grade,Department;

SELECT 
    Gender,
    Grade,
    Department,
    AVG(assi_late) AS avg_assi_late,
    AVG(non_academic_attendance) AS avg_non_academic,
    AVG(academic_attendance) AS avg_academic,
    AVG(lms_login_freq_per_day) AS avg_login,
    AVG(lms_active_avg_hrs) AS avg_lms_hours,
    AVG(resource_access_avg_hrs) AS avg_resource
    FROM Bronze
GROUP BY Gender, Grade, Department
ORDER BY Grade,Department;


SELECT *
INTO Silver
FROM Bronze;

UPDATE Silver
SET Grade = 
    CASE 
        WHEN last_score IS NULL THEN Grade 
        WHEN last_score >= 90 THEN 'A'
        WHEN last_score >= 80 THEN 'B'
        WHEN last_score >= 70 THEN 'C'
        WHEN last_score >= 60 THEN 'D'
        ELSE 'F'
    END;

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 75),
    academic_attendance = ISNULL(academic_attendance, 100),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.79),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 2.09),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.39)
WHERE 
    Gender = 'Male'
    AND Grade = 'A'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 81.96),
    academic_attendance = ISNULL(academic_attendance, 93.05),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.07),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.8),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.24)
WHERE 
    Gender = 'Male'
    AND Grade = 'B'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.02),
    non_academic_attendance = ISNULL(non_academic_attendance, 82.8),
    academic_attendance = ISNULL(academic_attendance, 89.22),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.92),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs,1.6),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.11)
WHERE 
    Gender = 'Male'
    AND Grade = 'C'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.1),
    non_academic_attendance = ISNULL(non_academic_attendance, 81.48),
    academic_attendance = ISNULL(academic_attendance, 82.51),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.48),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.45),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.98)
WHERE 
    Gender = 'Male'
    AND Grade = 'D'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.29),
    non_academic_attendance = ISNULL(non_academic_attendance, 79.25),
    academic_attendance = ISNULL(academic_attendance, 75.84),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.26),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.26),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.85)
WHERE 
    Gender = 'Male'
    AND Grade = 'F'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 80.85),
    academic_attendance = ISNULL(academic_attendance, 95.71),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.68),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.82),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.51)
WHERE 
    Gender = 'Male'
    AND Grade = 'A'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 82.71),
    academic_attendance = ISNULL(academic_attendance, 93.1),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.19),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.73),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.26)
WHERE 
    Gender = 'Male'
    AND Grade = 'B'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.02),
    non_academic_attendance = ISNULL(non_academic_attendance, 84.18),
    academic_attendance = ISNULL(academic_attendance, 88.76),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.86),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.61),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.13)
WHERE 
    Gender = 'Male'
    AND Grade = 'C'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.1),
    non_academic_attendance = ISNULL(non_academic_attendance, 81.07),
    academic_attendance = ISNULL(academic_attendance, 83.03),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.55),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.48),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.95)
WHERE 
    Gender = 'Male'
    AND Grade = 'D'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.39),
    non_academic_attendance = ISNULL(non_academic_attendance, 77.98),
    academic_attendance = ISNULL(academic_attendance, 76.94),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.26),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.32),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.85)
WHERE 
    Gender = 'Male'
    AND Grade = 'F'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 76.37),
    academic_attendance = ISNULL(academic_attendance, 95),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.53),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.91),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.32)
WHERE 
    Gender = 'Male'
    AND Grade = 'A'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 82.82),
    academic_attendance = ISNULL(academic_attendance, 93.14),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.28),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.82),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.28)
WHERE 
    Gender = 'Male'
    AND Grade = 'B'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.03),
    non_academic_attendance = ISNULL(non_academic_attendance, 84.29),
    academic_attendance = ISNULL(academic_attendance, 89.5),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.91),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.62),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.16)
WHERE 
    Gender = 'Male'
    AND Grade = 'C'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.03),
    non_academic_attendance = ISNULL(non_academic_attendance, 80.94),
    academic_attendance = ISNULL(academic_attendance, 84.21),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.56),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.47),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.01)
WHERE 
    Gender = 'Male'
    AND Grade = 'D'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.3),
    non_academic_attendance = ISNULL(non_academic_attendance, 80.7),
    academic_attendance = ISNULL(academic_attendance, 72.28),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.3),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.22),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.8)
WHERE 
    Gender = 'Male'
    AND Grade = 'F'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 81),
    academic_attendance = ISNULL(academic_attendance, 92),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.7),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 2.5),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.89)
WHERE 
    Gender = 'Female'
    AND Grade = 'A'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 81.8),
    academic_attendance = ISNULL(academic_attendance, 92.68),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.27),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.82),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.23)
WHERE 
    Gender = 'Female'
    AND Grade = 'B'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.02),
    non_academic_attendance = ISNULL(non_academic_attendance, 84.36),
    academic_attendance = ISNULL(academic_attendance, 88.13),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.83),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.59),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.14)
WHERE 
    Gender = 'Female'
    AND Grade = 'C'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.01),
    non_academic_attendance = ISNULL(non_academic_attendance, 81.21),
    academic_attendance = ISNULL(academic_attendance, 83.08),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.53),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.43),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.97)
WHERE 
    Gender = 'Female'
    AND Grade = 'D'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.3),
    non_academic_attendance = ISNULL(non_academic_attendance, 81.94),
    academic_attendance = ISNULL(academic_attendance, 74.54),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.16),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.25),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.84)
WHERE 
    Gender = 'Female'
    AND Grade = 'F'
    AND Department = '5th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 84),
    academic_attendance = ISNULL(academic_attendance, 100),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.42),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 2.09),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1/32)
WHERE 
    Gender = 'Female'
    AND Grade = 'A'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 82.06),
    academic_attendance = ISNULL(academic_attendance, 92.13),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.21),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.81),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.22)
WHERE 
    Gender = 'Female'
    AND Grade = 'B'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.02),
    non_academic_attendance = ISNULL(non_academic_attendance, 83.46),
    academic_attendance = ISNULL(academic_attendance, 89.78),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.88),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.62),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.16)
WHERE 
    Gender = 'Female'
    AND Grade = 'C'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.09),
    non_academic_attendance = ISNULL(non_academic_attendance, 79.99),
    academic_attendance = ISNULL(academic_attendance, 83.65),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.5),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.45),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.99)
WHERE 
    Gender = 'Female'
    AND Grade = 'D'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.39),
    non_academic_attendance = ISNULL(non_academic_attendance, 77.98),
    academic_attendance = ISNULL(academic_attendance, 76.94),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.26),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.32),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.85)
WHERE 
    Gender = 'Female'
    AND Grade = 'F'
    AND Department = '6th Grade';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 75),
    academic_attendance = ISNULL(academic_attendance, 96),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.65),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 2.29),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.54)
WHERE 
    Gender = 'Female'
    AND Grade = 'A'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0),
    non_academic_attendance = ISNULL(non_academic_attendance, 83.62),
    academic_attendance = ISNULL(academic_attendance, 94.04),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 2.22),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.83),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.25)
WHERE 
    Gender = 'Female'
    AND Grade = 'B'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.04),
    non_academic_attendance = ISNULL(non_academic_attendance, 83.89),
    academic_attendance = ISNULL(academic_attendance, 87.85),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.93),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.63),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 1.13)
WHERE 
    Gender = 'Female'
    AND Grade = 'C'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.06),
    non_academic_attendance = ISNULL(non_academic_attendance, 80.19),
    academic_attendance = ISNULL(academic_attendance, 82.6),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.55),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.45),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.97)
WHERE 
    Gender = 'Female'
    AND Grade = 'D'
    AND Department = 'Middle School';

UPDATE Silver
SET 
    assi_late = ISNULL(assi_late, 0.3),
    non_academic_attendance = ISNULL(non_academic_attendance, 81.94),
    academic_attendance = ISNULL(academic_attendance, 74.54),
    lms_login_freq_per_day = ISNULL(lms_login_freq_per_day, 1.16),
    lms_active_avg_hrs = ISNULL(lms_active_avg_hrs, 1.25),
    resource_access_avg_hrs = ISNULL(resource_access_avg_hrs, 0.84)
WHERE 
    Gender = 'Female'
    AND Grade = 'F'
    AND Department = 'Middle School';

SELECT *
FROM Silver
WHERE Student_ID IS NULL
   OR First_Name IS NULL
   OR Last_Name IS NULL
   OR Email IS NULL
   OR Gender IS NULL
   OR Department IS NULL
   OR Grade IS NULL
   OR Extracurricular_Activities IS NULL
   OR Internet_Access_at_Home IS NULL
   OR Parent_Education_Level IS NULL
   OR Family_Income_Level IS NULL
   OR Age IS NULL
   OR Math_Score IS NULL
   OR assi_Math IS NULL
   OR Science_Score IS NULL
   OR assi_Science IS NULL
   OR English_Score IS NULL
   OR assi_English IS NULL
   OR Social_Studies_Score IS NULL
   OR assi_Social_Studie IS NULL
   OR French_Score IS NULL
   OR assi_French IS NULL
   OR Computer_Science_Score IS NULL
   OR assi_Computer_Science IS NULL
   OR last_score IS NULL
   OR Study_Hours_per_Week IS NULL
   OR Stress_Level_1_10 IS NULL
   OR Sleep_Hours_per_Night IS NULL
   OR assi_late IS NULL
   OR non_academic_attendance IS NULL
   OR academic_attendance IS NULL
   OR lms_login_freq_per_day IS NULL
   OR lms_active_avg_hrs IS NULL
   OR resource_access_avg_hrs IS NULL;

   UPDATE Silver
SET 
    Math_Score = ROUND(Math_Score, 2),
    Science_Score = ROUND(Science_Score, 2),
    English_Score = ROUND(English_Score, 2),
    Social_Studies_Score = ROUND(Social_Studies_Score, 2),
    French_Score = ROUND(French_Score, 2),
    Computer_Science_Score = ROUND(Computer_Science_Score, 2),

    assi_Math = ROUND(assi_Math, 2),
    assi_Science = ROUND(assi_Science, 2),
    assi_English = ROUND(assi_English, 2),
    assi_Social_Studie = ROUND(assi_Social_Studie, 2),
    assi_French = ROUND(assi_French, 2),
    assi_Computer_Science = ROUND(assi_Computer_Science, 2),

    last_score = ROUND(last_score, 2),

    Study_Hours_per_Week = ROUND(Study_Hours_per_Week, 2),
    Stress_Level_1_10 = ROUND(Stress_Level_1_10, 2),
    Sleep_Hours_per_Night = ROUND(Sleep_Hours_per_Night, 2),

    assi_late = ROUND(assi_late, 2),
    non_academic_attendance = ROUND(non_academic_attendance, 2),
    academic_attendance = ROUND(academic_attendance, 2),

    lms_login_freq_per_day = ROUND(lms_login_freq_per_day, 2),
    lms_active_avg_hrs = ROUND(lms_active_avg_hrs, 2),
    resource_access_avg_hrs = ROUND(resource_access_avg_hrs, 2);

    SELECT *
    FROM Silver

CREATE TABLE Dim_Identity (
    id_key INT PRIMARY KEY,
    First_Name VARCHAR(100) NULL,
    Last_Name VARCHAR(100) NULL,
    Email VARCHAR(150) NULL,
    Gender VARCHAR(20) NULL,
    Age INT NULL
);

CREATE TABLE Fact_Performance (
    id_key INT PRIMARY KEY,
    Student_ID VARCHAR(50) NULL,
    Math_Score FLOAT NULL,
    Science_Score FLOAT NULL,
    English_Score FLOAT NULL,
    Social_Studies_Score FLOAT NULL,
    French_Score FLOAT NULL,
    Computer_Science_Score FLOAT NULL,
    last_score FLOAT NULL,
    Study_Hours_per_Week FLOAT NULL,
    Stress_Level_1_10 INT NULL,
    Sleep_Hours_per_Night FLOAT NULL,
    academic_attendance FLOAT NULL,
    non_academic_attendance FLOAT NULL,
    lms_login_freq_per_day FLOAT NULL,
    lms_active_avg_hrs FLOAT NULL,
    resource_access_avg_hrs FLOAT NULL
);

CREATE TABLE Dim_Social (
    id_key INT PRIMARY KEY,
    Internet_Access_at_Home VARCHAR(10) NULL,
    Parent_Education_Level VARCHAR(100) NULL,
    Family_Income_Level VARCHAR(50) NULL
);

CREATE TABLE Dim_Assignments (
    id_key INT PRIMARY KEY,
    assi_Math VARCHAR(100) NULL,
    assi_Science VARCHAR(100) NULL,
    assi_English VARCHAR(100) NULL,
    assi_Social_Studie VARCHAR(100) NULL,
    assi_French VARCHAR(100) NULL,
    assi_Computer_Science VARCHAR(100) NULL,
    assi_late VARCHAR(50) NULL
);

CREATE TABLE Dim_Academic_Context (
    id_key INT PRIMARY KEY,
    Department VARCHAR(100) NULL,
    Grade VARCHAR(50) NULL,
    Extracurricular_Activities TEXT NULL
);

ALTER TABLE Fact_Performance
ADD CONSTRAINT FK_Fact_Identity 
FOREIGN KEY (id_key) REFERENCES Dim_Identity(id_key);

ALTER TABLE Fact_Performance
ADD CONSTRAINT FK_Fact_Social 
FOREIGN KEY (id_key) REFERENCES Dim_Social(id_key);

ALTER TABLE Fact_Performance
ADD CONSTRAINT FK_Fact_Assignments 
FOREIGN KEY (id_key) REFERENCES Dim_Assignments(id_key);

ALTER TABLE Fact_Performance
ADD CONSTRAINT FK_Fact_AcademicContext 
FOREIGN KEY (id_key) REFERENCES Dim_Academic_Context(id_key);

INSERT INTO Fact_Performance (
    id_key, Student_ID, Math_Score, Science_Score, English_Score, 
    Social_Studies_Score, French_Score, Computer_Science_Score, 
    last_score, Study_Hours_per_Week, Stress_Level_1_10, 
    Sleep_Hours_per_Night, academic_attendance, non_academic_attendance, 
    lms_login_freq_per_day, lms_active_avg_hrs, resource_access_avg_hrs
)
SELECT 
    id_key, Student_ID, Math_Score, Science_Score, English_Score, 
    Social_Studies_Score, French_Score, Computer_Science_Score, 
    last_score, Study_Hours_per_Week, Stress_Level_1_10, 
    Sleep_Hours_per_Night, academic_attendance, non_academic_attendance, 
    lms_login_freq_per_day, lms_active_avg_hrs, resource_access_avg_hrs
FROM Silver;


INSERT INTO Dim_Identity (id_key, First_Name, Last_Name, Email, Gender, Age)
SELECT id_key, First_Name, Last_Name, Email, Gender, Age
FROM Silver;


INSERT INTO Dim_Social (id_key, Internet_Access_at_Home, Parent_Education_Level, Family_Income_Level)
SELECT id_key, Internet_Access_at_Home, Parent_Education_Level, Family_Income_Level
FROM Silver;

INSERT INTO Dim_Academic_Context (id_key, Department, Grade, Extracurricular_Activities)
SELECT id_key, Department, Grade, Extracurricular_Activities
FROM Silver;

INSERT INTO Dim_Assignments (
    id_key, assi_Math, assi_Science, assi_English, 
    assi_Social_Studie, assi_French, assi_Computer_Science, assi_late
)
SELECT 
    id_key, assi_Math, assi_Science, assi_English, 
    assi_Social_Studie, assi_French, assi_Computer_Science, assi_late
FROM Silver;


SELECT 
    f.id_key, f.Student_ID,
    i.First_Name, i.Last_Name, i.Email, i.Gender, i.Age,
    s.Internet_Access_at_Home, s.Parent_Education_Level, s.Family_Income_Level,
    ac.Department, ac.Grade, ac.Extracurricular_Activities,
    f.Math_Score, f.Science_Score, f.English_Score, f.Social_Studies_Score, f.French_Score, f.Computer_Science_Score,
    f.last_score, f.Study_Hours_per_Week, f.Stress_Level_1_10, f.Sleep_Hours_per_Night,
    f.academic_attendance, f.non_academic_attendance,
    f.lms_login_freq_per_day, f.lms_active_avg_hrs, f.resource_access_avg_hrs,
    a.assi_Math, a.assi_Science, a.assi_English, a.assi_Social_Studie, a.assi_French, a.assi_Computer_Science, a.assi_late
FROM Fact_Performance f
LEFT JOIN Dim_Identity i ON f.id_key = i.id_key
LEFT JOIN Dim_Social s ON f.id_key = s.id_key
LEFT JOIN Dim_Academic_Context ac ON f.id_key = ac.id_key
LEFT JOIN Dim_Assignments a ON f.id_key = a.id_key;

UPDATE Silver
SET assi_late = FLOOR(assi_late);


UPDATE Dim_Assignments
SET assi_late = FLOOR(assi_late);