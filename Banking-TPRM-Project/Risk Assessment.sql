USE TPRM_Banking;

CREATE TABLE Risk_Register (
    risk_id VARCHAR(10) PRIMARY KEY,
    vendor_id INT,
    vendor_name VARCHAR(150),
    risk_category VARCHAR(100),
    risk_description TEXT,
    likelihood INT,
    impact INT,
    risk_score INT,
    risk_rating VARCHAR(20),
    risk_owner VARCHAR(100),
    treatment_plan TEXT,
    treatment_status VARCHAR(30),
    target_date DATE,
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id)
);

INSERT INTO Risk_Register
(risk_id, vendor_id, vendor_name, risk_category,
 risk_description, likelihood, impact, risk_score,
 risk_rating, risk_owner, treatment_plan, treatment_status)
VALUES
('R001',1,'Apex Cloud Services','Access Management',
'Unauthorized privileged access could compromise critical banking infrastructure.',
4,5,20,'Critical','TPRM Team',
'Review vendor controls and obtain supporting evidence','Open'),

('R002',2,'PayBridge Technologies','Data Security',
'Exposure of sensitive payment data could result in financial loss and regulatory consequences.',
4,5,20,'Critical','TPRM Team',
'Review vendor controls and obtain supporting evidence','Open'),

('R003',3,'SecureStack Systems','Operational Security',
'Compromise of privileged VPN access could disrupt security monitoring services.',
3,4,12,'High','TPRM Team',
'Review vendor controls and obtain supporting evidence','Open'),

('R004',4,'PeopleFirst Payroll','Data Privacy',
'Unauthorized access to employee payroll information could expose confidential personal data.',
3,4,12,'High','TPRM Team',
'Review vendor controls and obtain supporting evidence','Open'),

('R005',5,'HelpDeskNow','Information Security',
'Unauthorized access to customer support records could expose confidential customer information.',
3,4,12,'High','TPRM Team',
'Review vendor controls and obtain supporting evidence','Open'),

('R006',7,'DocuVault Records','Data Protection',
'Unauthorized access to stored customer documents could expose restricted banking information.',
4,5,20,'Critical','TPRM Team',
'Review vendor controls and obtain supporting evidence','Open');

SELECT * FROM Risk_Register;

SELECT
    risk_rating,
    COUNT(*) AS total_risks
FROM Risk_Register
GROUP BY risk_rating;

SELECT
    vendor_name,
    risk_category,
    likelihood,
    impact,
    risk_score,
    risk_rating
FROM Risk_Register
WHERE risk_rating = 'Critical'
ORDER BY risk_score DESC;