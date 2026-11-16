# GRC Risk Register and Dashboard – Cybersecurity Risk Assessment

## 1. Project Overview

This project demonstrates the development of an Excel-based Governance, Risk, and Compliance (GRC) risk management tool for a fictional IT organization, **Averix Technologies Pvt. Ltd.**

The workbook is designed to identify, assess, prioritize, and monitor cybersecurity risks through a structured risk register, a 5×5 risk matrix, and an interactive dashboard.

The project demonstrates practical skills in cybersecurity risk assessment, risk scoring, risk tracking, and data visualization using Microsoft Excel.

## 2. Project Objectives

- Identify and document cybersecurity risks affecting organizational assets.
- Assess risks using likelihood and impact ratings.
- Calculate risk scores and classify risks by severity.
- Document risk owners and proposed treatment actions.
- Track risk treatment status.
- Present risk information through a visual dashboard.

## 3. Organizational Scenario

**Organization:** Averix Technologies Pvt. Ltd.  
**Industry:** Information Technology  
**Business:** SaaS-based Human Resource Management System (HRMS)

The organization handles sensitive employee information, payroll records, user accounts, application data, and source code. These assets may be exposed to cybersecurity threats such as unauthorized access, phishing, ransomware, and data loss.

This scenario is used to demonstrate a structured approach to cybersecurity risk management.

## 4. Workbook Structure

The Excel workbook contains three worksheets.

### Sheet 1: Risk Register

The Risk Register documents seven identified cybersecurity risks.

Each risk record includes:

- Risk ID
- Asset
- Threat
- Vulnerability
- Risk Description
- Likelihood
- Impact
- Risk Score
- Risk Level
- Risk Owner
- Treatment Action
- Status

**Identified risks:**

| Risk ID | Risk Description | Risk Score | Risk Level |
|---|---|---:|---|
| R01 | Unauthorized access to employee database | 20 | Critical |
| R02 | Phishing targeting user accounts | 16 | High |
| R03 | Payroll data manipulation | 15 | High |
| R04 | Ransomware affecting HRMS | 15 | High |
| R05 | Data loss due to backup failure | 12 | High |
| R06 | Source code compromise | 15 | High |
| R07 | Email phishing and account compromise | 16 | High |

### Sheet 2: Risk Matrix

A 5×5 risk matrix is used to calculate and classify cybersecurity risks.

**Risk Score Formula:**

Risk Score = Likelihood × Impact

Both likelihood and impact are rated on a scale of 1 to 5.

**Risk Classification:**

| Risk Score | Risk Level |
|---|---|
| 1–4 | Low |
| 5–9 | Medium |
| 10–16 | High |
| 17–25 | Critical |

The matrix provides a visual reference for understanding risk severity and prioritization.

### Sheet 3: Risk Dashboard

The dashboard presents a summary of the identified risks using Excel formulas and charts.

**Key Performance Indicators (KPIs):**

- Total Risks: 7
- Critical Risks: 1
- High Risks: 6
- Open Risks: 7

**Dashboard Components:**

- Risk distribution by severity
- Risk status overview
- Automated risk counts using COUNTIF and COUNTA formulas
- Column chart for risk distribution
- Doughnut chart for risk status

## 5. Risk Treatment Approach

Each identified risk has an assigned risk owner and a proposed treatment action.

Examples include:

- Implementing role-based access control.
- Conducting phishing awareness training.
- Enabling multi-factor authentication.
- Restricting payroll and source code access.
- Applying security updates and anti-malware protection.
- Performing regular backups and restoration testing.
- Maintaining audit logs and access reviews.

All seven risks are currently marked **Open**, as the treatment actions are proposed recommendations and have not been represented as implemented.

## 6. Tools and Technologies

- Microsoft Excel
- Excel formulas: `COUNTIF`, `COUNTA`, and multiplication formulas
- Excel charts and data visualization
- Conditional risk scoring methodology
- 5×5 Risk Assessment Matrix

## 7. Skills Demonstrated

- Cybersecurity Risk Identification
- Risk Assessment and Scoring
- Risk Classification and Prioritization
- Risk Register Development
- Risk Treatment Planning
- Risk Ownership and Tracking
- Excel Data Analysis
- Dashboard Development and Visualization
- GRC Documentation

## 8. Project Outcome

The project demonstrates how a structured Excel workbook can support cybersecurity risk identification, assessment, prioritization, and monitoring.

It provides a practical example of translating cybersecurity risk information into an organized risk register and management dashboard.

## 9. Project Disclaimer

This is a self-directed portfolio project based on a fictional organization and hypothetical cybersecurity risks. The assessment and treatment actions are illustrative and do not represent an actual organizational audit, implemented security controls, or formal compliance certification.
