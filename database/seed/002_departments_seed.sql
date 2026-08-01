/*
===============================================================================
Project      : Healthcare Revenue Cycle Analytics Platform
Module       : Database Seed Data
File         : 002_departments_seed.sql
Description  : Seed data for hospital departments.
Author       : Vivek Kumar Mishra
===============================================================================
*/

-- ============================================================================
-- Apollo Hospital
-- ============================================================================

INSERT INTO departments (
    hospital_id,
    department_code,
    department_name,
    description,
    floor_number,
    phone_extension,
    created_by,
    updated_by
)
VALUES
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP001'),
    'CARD',
    'Cardiology',
    'Heart and cardiovascular care.',
    2,
    '201',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP001'),
    'NEUR',
    'Neurology',
    'Brain and nervous system treatment.',
    3,
    '301',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP001'),
    'EMER',
    'Emergency',
    '24x7 emergency care.',
    1,
    '101',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP001'),
    'ORTH',
    'Orthopedics',
    'Bone and joint treatment.',
    4,
    '401',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP001'),
    'RADI',
    'Radiology',
    'Diagnostic imaging services.',
    1,
    '102',
    'system',
    'system'
);

-- ============================================================================
-- Fortis Hospital
-- ============================================================================

INSERT INTO departments (
    hospital_id,
    department_code,
    department_name,
    description,
    floor_number,
    phone_extension,
    created_by,
    updated_by
)
VALUES
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP002'),
    'CARD',
    'Cardiology',
    'Heart care services.',
    2,
    '210',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP002'),
    'ONCO',
    'Oncology',
    'Cancer diagnosis and treatment.',
    5,
    '510',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP002'),
    'PED',
    'Pediatrics',
    'Child healthcare services.',
    3,
    '310',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP002'),
    'ICU',
    'Intensive Care Unit',
    'Critical patient care.',
    1,
    '110',
    'system',
    'system'
);

-- ============================================================================
-- Max Super Speciality Hospital
-- ============================================================================

INSERT INTO departments (
    hospital_id,
    department_code,
    department_name,
    description,
    floor_number,
    phone_extension,
    created_by,
    updated_by
)
VALUES
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP003'),
    'EMER',
    'Emergency',
    'Emergency and trauma services.',
    1,
    '120',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP003'),
    'DERM',
    'Dermatology',
    'Skin care and treatment.',
    2,
    '220',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP003'),
    'NEUR',
    'Neurology',
    'Neurological care.',
    3,
    '320',
    'system',
    'system'
),
(
    (SELECT hospital_id FROM hospitals WHERE hospital_code = 'HSP003'),
    'RADI',
    'Radiology',
    'Radiology and imaging.',
    1,
    '121',
    'system',
    'system'
);