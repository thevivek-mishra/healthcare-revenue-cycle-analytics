/*
===============================================================================
Project      : Healthcare Revenue Cycle Analytics Platform
Module       : Database Seed Data
File         : 003_specialties_seed.sql
Description  : Seed data for the specialties master table.
Author       : Vivek Kumar Mishra
===============================================================================
*/

-- ============================================================================
-- Insert Specialties Master Data
-- ============================================================================

INSERT INTO specialties (
    specialty_code,
    specialty_name,
    description,
    created_by,
    updated_by
)
VALUES
('CARD', 'Cardiology', 'Diagnosis and treatment of heart and cardiovascular diseases.', 'system', 'system'),
('NEUR', 'Neurology', 'Diagnosis and treatment of disorders of the nervous system.', 'system', 'system'),
('ONCO', 'Oncology', 'Diagnosis and treatment of cancer.', 'system', 'system'),
('ORTH', 'Orthopedics', 'Treatment of bones, joints, muscles and ligaments.', 'system', 'system'),
('PED',  'Pediatrics', 'Medical care for infants, children and adolescents.', 'system', 'system'),
('DERM', 'Dermatology', 'Diagnosis and treatment of skin conditions.', 'system', 'system'),
('GAST', 'Gastroenterology', 'Treatment of digestive system disorders.', 'system', 'system'),
('UROL', 'Urology', 'Treatment of urinary tract and male reproductive disorders.', 'system', 'system'),
('ENT',  'Ear, Nose and Throat', 'Treatment of ear, nose and throat disorders.', 'system', 'system'),
('PSYC', 'Psychiatry', 'Diagnosis and treatment of mental health disorders.', 'system', 'system'),
('PULM', 'Pulmonology', 'Diagnosis and treatment of respiratory diseases.', 'system', 'system'),
('ENDO', 'Endocrinology', 'Treatment of hormone and endocrine disorders.', 'system', 'system'),
('NEPH', 'Nephrology', 'Diagnosis and treatment of kidney diseases.', 'system', 'system'),
('RADI', 'Radiology', 'Medical imaging for diagnosis and treatment.', 'system', 'system'),
('PATH', 'Pathology', 'Study and diagnosis of diseases through laboratory analysis.', 'system', 'system'),
('ANES', 'Anesthesiology', 'Administration of anesthesia and perioperative care.', 'system', 'system'),
('OBGY', 'Obstetrics and Gynecology', 'Healthcare related to pregnancy and the female reproductive system.', 'system', 'system'),
('OPHT', 'Ophthalmology', 'Diagnosis and treatment of eye disorders.', 'system', 'system'),
('EMED', 'Emergency Medicine', 'Immediate medical care for acute illnesses and injuries.', 'system', 'system'),
('SURG', 'General Surgery', 'Surgical treatment for a wide range of medical conditions.', 'system', 'system');