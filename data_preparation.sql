DROP Table loan_default;
CREATE TABLE loan_default(
	ID VARCHAR(10) PRIMARY KEY,
	year SMALLINT,
	loan_limit VARCHAR(10),
	gender VARCHAR(20),
	approv_in_adv VARCHAR(10),
	loan_type VARCHAR(10),
	loan_purpose VARCHAR(10),
	Credit_Worthiness VARCHAR(10),
	open_credit VARCHAR(10),
	business_or_commercial VARCHAR(10),
	loan_amount NUMERIC, 
	rate_of_interest NUMERIC,
	Interest_rate_spread NUMERIC,
	Upfront_charges NUMERIC,
	term NUMERIC,
	Neg_ammortization VARCHAR(10),
	interest_only VARCHAR(10), 
	lump_sum_payment VARCHAR(10), 
	property_value NUMERIC,
	construction_type VARCHAR(10),
	occupancy_type VARCHAR(10),
	Secured_by VARCHAR(10),
	total_units VARCHAR(10),
	income NUMERIC,
	credit_type VARCHAR(10),
	Credit_Score SMALLINT,
	co_applicant_credit_type VARCHAR(10),
	age VARCHAR(10),
	submission_of_application VARCHAR(10),
	LTV NUMERIC,
	Region VARCHAR(10),
	Security_Type VARCHAR(15),
	Status SMALLINT, 
	dtir1 NUMERIC
);

-- Specify your data path
COPY loan_default(
	   ID, year, loan_limit, Gender, approv_in_adv, loan_type,
       loan_purpose, Credit_Worthiness, open_credit,
       business_or_commercial, loan_amount, rate_of_interest,
       Interest_rate_spread, Upfront_charges, term, Neg_ammortization,
       interest_only, lump_sum_payment, property_value,
       construction_type, occupancy_type, Secured_by, total_units,
       income, credit_type, Credit_Score, co_applicant_credit_type,
       age, submission_of_application, LTV, Region, Security_Type,
       Status, dtir1)

FROM "file_location (C:\\loan_default.csv)"'
DELIMITER ','
CSV HEADER;

-- Create random 5000 records

CREATE TABLE loan_default_lite
AS (
SELECT *
	FROM loan_default
	ORDER BY RANDOM()
	LIMIT 5000
);
