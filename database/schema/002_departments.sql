/*
===============================================================================
Project      : Healthcare Revenue Cycle Analytics Platform
Module       : Database Schema
File         : 002_departments.sql
Description  : Creates the departments master table.
Author       : Vivek Kumar Mishra
===============================================================================
*/

-- ============================================================================
-- Create Departments Table
-- ============================================================================

CREATE TABLE IF NOT EXISTS departments (

    department_id BIGSERIAL PRIMARY KEY,

    hospital_id BIGINT NOT NULL,

    department_code VARCHAR(20) NOT NULL,

    department_name VARCHAR(100) NOT NULL,

    description TEXT,

    floor_number INTEGER,

    phone_extension VARCHAR(10),

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by VARCHAR(100) NOT NULL,

    updated_by VARCHAR(100) NOT NULL,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    CONSTRAINT fk_departments_hospital
        FOREIGN KEY (hospital_id)
        REFERENCES hospitals(hospital_id),

    CONSTRAINT uq_departments_code
        UNIQUE (hospital_id, department_code),

    CONSTRAINT uq_departments_name
        UNIQUE (hospital_id, department_name)
);

-- ============================================================================
-- Table Comments
-- ============================================================================

COMMENT ON TABLE departments IS
'Stores department master data for each hospital.';

COMMENT ON COLUMN departments.department_code IS
'Unique department code within a hospital.';

COMMENT ON COLUMN departments.department_name IS
'Department display name.';

COMMENT ON COLUMN departments.is_active IS
'Soft delete flag.';

-- ============================================================================
-- Indexes
-- ============================================================================

CREATE INDEX idx_departments_hospital
ON departments(hospital_id);

CREATE INDEX idx_departments_name
ON departments(department_name);

CREATE INDEX idx_departments_active
ON departments(is_active);