/*
===============================================================================
Project      : Healthcare Revenue Cycle Analytics Platform
Module       : Database Schema
File         : 001_hospitals.sql
Description  : Creates the hospitals master table.
Author       : Vivek Kumar Mishra
===============================================================================
*/

-- ============================================================================
-- Create hospitals table
-- ============================================================================

CREATE TABLE hospitals (
    hospital_id BIGSERIAL PRIMARY KEY,

    hospital_code VARCHAR(20) NOT NULL UNIQUE,

    hospital_name VARCHAR(150) NOT NULL,

    address_line_1 VARCHAR(255) NOT NULL,
    address_line_2 VARCHAR(255),

    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    country VARCHAR(100) NOT NULL DEFAULT 'India',

    phone VARCHAR(20),
    email VARCHAR(254),

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by VARCHAR(100) NOT NULL,
    updated_by VARCHAR(100) NOT NULL,

    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

-- ============================================================================
-- Table Comments
-- ============================================================================

COMMENT ON TABLE hospitals IS
'Stores master information for hospitals.';

COMMENT ON COLUMN hospitals.hospital_code IS
'Unique business identifier for a hospital.';

COMMENT ON COLUMN hospitals.is_active IS
'Soft delete flag. TRUE = Active, FALSE = Inactive.';

-- ============================================================================
-- Indexes
-- ============================================================================

CREATE INDEX idx_hospitals_city
ON hospitals(city);

CREATE INDEX idx_hospitals_state
ON hospitals(state);

CREATE INDEX idx_hospitals_is_active
ON hospitals(is_active);