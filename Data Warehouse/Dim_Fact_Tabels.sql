-- Table 1: Dim_Time
CREATE TABLE Dim_Time (
    time_id INT PRIMARY KEY IDENTITY(1,1),
    work_year INT NOT NULL
);

-- Table 2: Dim_Currency
CREATE TABLE Dim_Currency (
    currency_id INT PRIMARY KEY IDENTITY(1,1),
    salary_currency VARCHAR(10) NOT NULL,
    exchange_rate DECIMAL(18,6) NOT NULL, 
    currency_name VARCHAR(50) NOT NULL   
);

-- Table 3: Dim_Location
CREATE TABLE Dim_Location (
    location_id INT PRIMARY KEY IDENTITY(1,1),
    country_code VARCHAR(100) NOT NULL,
	country_name VARCHAR(255) NOT NULL

);

-- Table 4: Dim_Employee (References Dim_Location)
CREATE TABLE Dim_Employee (
    employee_id INT PRIMARY KEY IDENTITY(1,1),
    location_id INT NOT NULL,
    experience_level VARCHAR(20) NOT NULL,
    employment_type VARCHAR(20) NOT NULL,
    FOREIGN KEY (location_id) REFERENCES Dim_Location(location_id)
);

-- Table 5: Dim_Company (References Dim_Location)
CREATE TABLE Dim_Company (
    company_id INT PRIMARY KEY IDENTITY(1,1),
    location_id INT NOT NULL,
    company_size VARCHAR(20),
    remote_ratio INT,
    FOREIGN KEY (location_id) REFERENCES Dim_Location(location_id)
);

-- Table 6: Dim_Role
CREATE TABLE Dim_Role (
    role_id INT PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(100) NOT NULL
);

-- Table 7: Dim_Job (References Dim_Role)
CREATE TABLE Dim_Job (
    job_title_id INT PRIMARY KEY IDENTITY(1,1),
    role_id INT NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    FOREIGN KEY (role_id) REFERENCES Dim_Role(role_id)
);

-- Table 8: Fact_Employment_Rate (References Dim_Time and Dim_Location)
CREATE TABLE Fact_Employment_Rate (
    employment_rate_id INT PRIMARY KEY IDENTITY(1,1),
    time_id INT NOT NULL,
    location_id INT NOT NULL,
    employment_rate VARCHAR(100),
    FOREIGN KEY (time_id) REFERENCES Dim_Time(time_id),
    FOREIGN KEY (location_id) REFERENCES Dim_Location(location_id)
);

-- Table 9: Fact_Role_Skills (References Dim_Role)
CREATE TABLE Fact_Role_Skills (
    role_skills_fact_id INT PRIMARY KEY IDENTITY(1,1),
    role_id INT NOT NULL,
    skill VARCHAR(100) NOT NULL,
    FOREIGN KEY (role_id) REFERENCES Dim_Role(role_id)
);

-- Table 10: Fact_Salary (References Dim_Time, Dim_Currency, Dim_Job, Dim_Employee, Dim_Company)
CREATE TABLE Fact_Salary (
    salary_fact_id INT PRIMARY KEY IDENTITY(1,1),
    time_id INT NOT NULL,
    currency_id INT NOT NULL,
    job_title_id INT NOT NULL,
    employee_id INT NOT NULL,
    company_id INT NOT NULL,
    salary DECIMAL(15, 2),
    salary_amount_usd VARCHAR(50),
    FOREIGN KEY (time_id) REFERENCES Dim_Time(time_id),
    FOREIGN KEY (currency_id) REFERENCES Dim_Currency(currency_id),
    FOREIGN KEY (job_title_id) REFERENCES Dim_Job(job_title_id),
    FOREIGN KEY (employee_id) REFERENCES Dim_Employee(employee_id),
    FOREIGN KEY (company_id) REFERENCES Dim_Company(company_id)
);
