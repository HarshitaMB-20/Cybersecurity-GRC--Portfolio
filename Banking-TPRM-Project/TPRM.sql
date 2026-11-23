CREATE DATABASE TPRM_Banking;
USE TPRM_Banking;
SHOW DATABASES;
USE TPRM_Banking;

CREATE TABLE Vendors (
    vendor_id INT PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    service_category VARCHAR(100),
    business_service VARCHAR(200),
    processes_bank_data VARCHAR(5),
    data_classification VARCHAR(30),
    access_type VARCHAR(100),
    business_criticality VARCHAR(20),
    operating_region VARCHAR(50),
    contract_renewal_date DATE,
    security_assessment_required VARCHAR(5),
    soc2_report_available VARCHAR(5),
    iso27001_certified VARCHAR(5),
    incident_notification_clause VARCHAR(5),
    subcontractors_used VARCHAR(5)
);
SHOW TABLES;
DESCRIBE Vendors;

USE TPRM_Banking;

INSERT INTO Vendors VALUES
(1,'Apex Cloud Services','Cloud Hosting','Core banking hosting','Yes','Restricted','Privileged admin','Critical','India','2026-03-31','Yes','Yes','Yes','Yes','Yes'),
(2,'PayBridge Technologies','Payment Processing','UPI and card processing','Yes','Restricted','API access','Critical','India','2026-06-30','Yes','Yes','Yes','Yes','Yes'),
(3,'SecureStack Systems','Managed Security','SOC monitoring','Yes','Confidential','Privileged VPN','High','India','2026-02-28','Yes','Yes','Yes','Yes','Yes'),
(4,'PeopleFirst Payroll','Payroll Processing','Employee payroll','Yes','Confidential','SFTP access','High','India','2026-01-31','Yes','Yes','Yes','Yes','No'),
(5,'HelpDeskNow','Customer Support','Customer query handling','Yes','Confidential','CRM access','High','India','2026-04-30','Yes','Yes','No','Yes','No'),
(6,'BranchNet Telecom','Telecommunications','Branch connectivity','No','Internal','Network access','High','India','2026-09-30','Yes','No','No','Yes','No'),
(7,'DocuVault Records','Document Management','Customer document storage','Yes','Restricted','Storage API','High','India','2026-05-31','Yes','Yes','Yes','Yes','No'),
(8,'FinAnalytics Co','Analytics Services','Portfolio analytics','Yes','Confidential','File transfer','Medium','India','2026-08-31','Yes','Yes','Yes','No','No'),
(9,'SwiftCourier Logistics','Logistics','Card delivery','No','Internal','Vendor portal','Medium','India','2026-07-31','No','No','No','No','No'),
(10,'OfficeSphere Facilities','Facilities','Office maintenance','No','Public','No access','Low','India','2026-12-31','No','No','No','No','No');

SELECT * FROM Vendors;

SELECT
    vendor_name,
    business_criticality,
    data_classification,
    access_type
FROM Vendors
WHERE business_criticality = 'Critical';


SELECT
    vendor_name,
    business_criticality,
    soc2_report_available,
    iso27001_certified,
    incident_notification_clause
FROM Vendors
WHERE business_criticality IN ('Critical', 'High')
AND (
    soc2_report_available = 'No'
    OR iso27001_certified = 'No'
    OR incident_notification_clause = 'No'
);


SELECT
    vendor_name,
    business_criticality,
    data_classification,
    soc2_report_available,
    iso27001_certified
FROM Vendors
WHERE business_criticality IN ('Critical', 'High')
AND data_classification = 'Restricted';


SELECT
    vendor_name,
    business_criticality,
    data_classification,
    incident_notification_clause,
    subcontractors_used
FROM Vendors
WHERE business_criticality IN ('Critical', 'High')
AND data_classification = 'Restricted'
AND incident_notification_clause = 'No';

SELECT
    vendor_name,
    business_criticality,
    data_classification,
    subcontractors_used
FROM Vendors
WHERE business_criticality IN ('Critical', 'High')
AND data_classification = 'Restricted'
AND subcontractors_used = 'Yes';


SELECT
    vendor_name,
    business_criticality,
    data_classification,
    subcontractors_used
FROM Vendors
WHERE business_criticality IN ('Critical', 'High')
AND data_classification = 'Restricted'
AND subcontractors_used = 'Yes';


