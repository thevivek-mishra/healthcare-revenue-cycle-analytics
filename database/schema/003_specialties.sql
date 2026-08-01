/*
===============================================================================
Project      : Healthcare Revenue Cycle Analytics Platform
Module       : Database Schema
File         : 003_specialties.sql
Description  : Creates the specialties master table.
Author       : Vivek Kumar Mishra
===============================================================================
*/

-- ============================================================================
-- Create Specialties Table
-- ============================================================================

CREATE TABLE specialties (

    specialty_id BIGSERIAL PRIMARY KEY,

    specialty_code VARCHAR(20) NOT NULL,

    specialty_name VARCHAR(100) NOT NULL,

    description TEXT,

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by VARCHAR(100) NOT NULL,

    updated_by VARCHAR(100) NOT NULL,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    CONSTRAINT uq_specialties_code
        UNIQUE (specialty_code),

    CONSTRAINT uq_specialties_name
        UNIQUE (specialty_name)
);

-- ============================================================================
-- Table Comments
-- ============================================================================

COMMENT ON TABLE specialties IS
'Stores the master list of medical specialties.';

COMMENT ON COLUMN specialties.specialty_code IS
'Unique business code for the specialty.';

COMMENT ON COLUMN specialties.specialty_name IS
'Medical specialty name.';

COMMENT ON COLUMN specialties.is_active IS
'Soft delete flag. TRUE = Active, FALSE = Inactive.';

-- ============================================================================
-- Indexes
-- ============================================================================

CREATE INDEX idx_specialties_is_active
ON specialties(is_active);