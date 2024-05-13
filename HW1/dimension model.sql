CREATE SCHEMA IF NOT EXISTS citywidesalary;

-- Fiscal Year Dimension Table
CREATE TABLE citywidesalary.dim_fiscal_year (
    fiscal_year_id SERIAL PRIMARY KEY,
    fiscal_year INTEGER NOT NULL
);

-- Agency Dimension Table
CREATE TABLE citywidesalary.dim_agency (
    agency_id SERIAL PRIMARY KEY,
    agency_name TEXT NOT NULL
);

-- Start Date Dimension Table
CREATE TABLE citywidesalary.dim_start_date (
    start_date_id SERIAL PRIMARY KEY,
    start_date TIMESTAMP NOT NULL,
    date_iso_format TEXT NOT NULL,
    year_number INT NOT NULL,
    quarter_number INT NOT NULL,
    month_number INT NOT NULL,
    day_number INT NOT NULL,
    hour_number INT NOT NULL,
    month_name TEXT NOT NULL,
    day_name TEXT NOT NULL,
    week_of_year INT NOT NULL,
    week_of_month INT NOT NULL
);

-- Borough Dimension Table
CREATE TABLE citywidesalary.dim_borough (
    borough_id SERIAL PRIMARY KEY,
    borough TEXT NOT NULL
);

-- Title Description Dimension Table
CREATE TABLE citywidesalary.dim_title_description (
    title_description_id SERIAL PRIMARY KEY,
    title_description TEXT NOT NULL
);

-- Leave Status Dimension Table
CREATE TABLE citywidesalary.dim_leave_status (
    leave_status_id SERIAL PRIMARY KEY,
    leave_status TEXT NOT NULL
);

-- Pay Basis Dimension Table
CREATE TABLE citywidesalary.dim_pay_basis (
    pay_basis_id SERIAL PRIMARY KEY,
    pay_basis TEXT NOT NULL
);

-- Fact Table for Salaries
CREATE TABLE citywidesalary.fact_salaries (
    fact_id SERIAL PRIMARY KEY,
    fiscal_year_id INTEGER REFERENCES citywidesalary.dim_fiscal_year(fiscal_year_id),
    agency_id INTEGER REFERENCES citywidesalary.dim_agency(agency_id),
    start_date_id INTEGER REFERENCES citywidesalary.dim_start_date(start_date_id),
    borough_id INTEGER REFERENCES citywidesalary.dim_borough(borough_id),
    title_description_id INTEGER REFERENCES citywidesalary.dim_title_description(title_description_id),
    leave_status_id INTEGER REFERENCES citywidesalary.dim_leave_status(leave_status_id),
    pay_basis_id INTEGER REFERENCES citywidesalary.dim_pay_basis(pay_basis_id),
    base_salary NUMERIC,
    regular_hrs NUMERIC,
    regular_gross_paid NUMERIC,
    ot_hrs NUMERIC,
    total_ot_paid NUMERIC,
    total_other_pay NUMERIC
);
