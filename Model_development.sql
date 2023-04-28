-- Create Model

CREATE MODEL loanPredictor
FROM loan_default
  (SELECT gender, loan_type, credit_worthiness, open_credit, neg_ammortization, lump_sum_payment,
          age, credit_score, occupancy_type, secured_by, loan_limit, approv_in_adv, loan_purpose,
          business_or_commercial, loan_amount, term, interest_only, property_value, income,
          construction_type, total_units, credit_type, co_applicant_credit_type, region, status
          FROM loan_default_lite)
PREDICT status;


-- Test Model

SELECT Status
FROM mindsdb.loanpredictor
WHERE loan_limit='cf'
AND gender='Female'
AND approv_in_adv='nopre'
AND loan_type='type1'
AND loan_purpose='p3'
AND credit_worthiness='l1'
AND open_credit='nopc'
AND business_or_commercial='nob/c'
AND loan_amount=486500
AND term=360
AND neg_ammortization='not_neg'
AND interest_only='int_only'
AND lump_sum_payment='not_lpsm'
AND property_value= 648000
AND construction_type = 'sb'
AND occupancy_type = 'pr'
AND secured_by = 'home'
AND total_units = '1U'
AND income = 7920
AND credit_type = 'EXP'
AND credit_score = 603
AND co_applicant_credit_type = 'CIB'
AND age = '55-64'
AND submission_of_application = 'to_inst'
AND region = 'south';

