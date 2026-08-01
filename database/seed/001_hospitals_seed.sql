INSERT INTO hospitals (
    hospital_code,
    hospital_name,
    address_line_1,
    address_line_2,
    city,
    state,
    postal_code,
    country,
    phone,
    email,
    created_by,
    updated_by
)
VALUES
(
    'HSP001',
    'Apollo Hospital',
    'Sector 62',
    NULL,
    'Noida',
    'Uttar Pradesh',
    '201301',
    'India',
    '0120-1234567',
    'info@apollo.com',
    'system',
    'system'
),
(
    'HSP002',
    'Fortis Hospital',
    'Bannerghatta Road',
    NULL,
    'Bengaluru',
    'Karnataka',
    '560076',
    'India',
    '080-2345678',
    'info@fortis.com',
    'system',
    'system'
),
(
    'HSP003',
    'Max Super Speciality Hospital',
    'Saket',
    NULL,
    'New Delhi',
    'Delhi',
    '110017',
    'India',
    '011-3456789',
    'contact@maxhealthcare.com',
    'system',
    'system'
);