# Database Standards

## Project

Healthcare Revenue Cycle Analytics Platform

---

# 1. Naming Convention

## Tables

- Use lowercase.
- Use snake_case.
- Use plural names.

### Examples

```sql
patients
providers
appointments
claims
payments
insurance_companies
```

---

## Columns

- Use lowercase.
- Use snake_case.

### Examples

```sql
patient_id
hospital_name
created_at
updated_at
```

---

# 2. Primary Keys

Every table must contain a primary key.

Format:

```sql
<table_name>_id
```

Examples

```sql
hospital_id
patient_id
provider_id
claim_id
payment_id
```

Data Type

```sql
BIGSERIAL PRIMARY KEY
```

Reason

- Auto increment
- Fast joins
- Easy debugging
- PostgreSQL best practice for this project

---

# 3. Foreign Keys

Foreign keys must reference the parent table.

Examples

```sql
hospital_id
department_id
patient_id
provider_id
claim_id
```

Never use

```sql
id
pid
dept
```

---

# 4. Table Naming

Good

```sql
patients
claims
payments
```

Bad

```sql
Patient
tbl_patient
patient_master
```

---

# 5. Data Types

| Data | Type |
|-------|------|
| ID | BIGSERIAL |
| Name | VARCHAR(150) |
| Code | VARCHAR(20) |
| Description | TEXT |
| Amount | NUMERIC(12,2) |
| Date | DATE |
| Date & Time | TIMESTAMPTZ |
| Boolean | BOOLEAN |

---

# 6. Audit Columns

Every table must contain

```sql
created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP

updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP

created_by VARCHAR(100) NOT NULL

updated_by VARCHAR(100) NOT NULL

is_active BOOLEAN NOT NULL DEFAULT TRUE
```

Reason

- Audit history
- Soft delete
- Reporting
- Security

---

# 7. Soft Delete

Never physically delete business records.

Instead

```sql
UPDATE table_name
SET is_active = FALSE;
```

Avoid

```sql
DELETE FROM table_name;
```

---

# 8. Constraints

Use

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE (only when required)
- CHECK (when applicable)

---

# 9. Index Strategy

Create indexes only for

- WHERE
- JOIN
- ORDER BY
- GROUP BY

Do not create indexes for every column.

---

# 10. SQL Formatting

SQL Keywords

```sql
CREATE TABLE
SELECT
INSERT
UPDATE
DELETE
PRIMARY KEY
NOT NULL
```

Use uppercase.

Identifiers

```sql
hospital_name
patient_id
claim_amount
```

Use lowercase snake_case.

---

# 11. File Naming

Schema

```text
001_hospitals.sql
002_departments.sql
003_providers.sql
```

Seed

```text
001_hospitals_seed.sql
002_departments_seed.sql
```

---

# 12. Git Commit Convention

Feature

```text
feat(database): create hospitals table
```

Fix

```text
fix(database): resolve foreign key issue
```

Documentation

```text
docs(database): add database standards
```

---

# 13. Database Principles

- Normalize data where appropriate (typically up to Third Normal Form unless there is a justified reason not to).
- Avoid duplicate data.
- Prefer foreign keys over repeated text values.
- Keep schema readable.
- Design for scalability.
- Write self-documenting SQL.