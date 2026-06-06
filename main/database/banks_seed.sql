-- =============================================================
-- BANKS SEED DATA
-- =============================================================
-- Run `php artisan migrate` first to ensure the `country`
-- column exists on the other_banks table.
--
-- form_id is NULL for all entries. Each bank requires a
-- beneficiary configuration form to be set up by an admin
-- before users can add beneficiaries for that bank.
-- Go to Admin > Other Banks > Edit to configure each form.
--
-- All financial limits are placeholder defaults. Update them
-- per bank via the admin panel as needed.
-- =============================================================

INSERT IGNORE INTO `other_banks` (
    `name`, `country`,
    `per_transaction_min_amount`, `per_transaction_max_amount`,
    `daily_transaction_max_amount`, `daily_transaction_limit`,
    `monthly_transaction_max_amount`, `monthly_transaction_limit`,
    `fixed_charge`, `percentage_charge`,
    `processing_time`, `instruction`, `form_id`, `status`,
    `created_at`, `updated_at`
) VALUES

-- =============================================================
-- NIGERIA
-- =============================================================
('Access Bank Nigeria',        'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('First Bank of Nigeria',      'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Zenith Bank Nigeria',        'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Guaranty Trust Bank',        'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('United Bank for Africa',     'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Union Bank Nigeria',         'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Fidelity Bank Nigeria',      'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Stanbic IBTC Bank',          'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Sterling Bank Nigeria',      'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Ecobank Nigeria',            'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('First City Monument Bank',   'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Polaris Bank Nigeria',       'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Keystone Bank Nigeria',      'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Wema Bank Nigeria',          'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Heritage Bank Nigeria',      'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Jaiz Bank Nigeria',          'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Providus Bank Nigeria',      'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('SunTrust Bank Nigeria',      'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Globus Bank Nigeria',        'Nigeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- GHANA
-- =============================================================
('GCB Bank Ghana',                  'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Ecobank Ghana',                   'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Absa Bank Ghana',                 'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered Ghana',        'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Stanbic Bank Ghana',              'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Zenith Bank Ghana',               'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Fidelity Bank Ghana',             'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Access Bank Ghana',               'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CalBank Ghana',                   'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Republic Bank Ghana',             'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Agricultural Dev. Bank Ghana',    'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Universal Merchant Bank Ghana',   'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('National Investment Bank Ghana',  'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Consolidated Bank Ghana',         'Ghana', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- KENYA
-- =============================================================
('Equity Bank Kenya',           'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('KCB Bank Kenya',              'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Co-operative Bank Kenya',     'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered Kenya',    'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Absa Bank Kenya',             'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('DTB Kenya',                   'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('I&M Bank Kenya',              'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Stanbic Bank Kenya',          'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('NCBA Bank Kenya',             'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Family Bank Kenya',           'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Gulf African Bank Kenya',     'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Africa Kenya',        'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Prime Bank Kenya',            'Kenya', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- TANZANIA
-- =============================================================
('CRDB Bank Tanzania',      'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('NMB Bank Tanzania',       'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Stanbic Bank Tanzania',   'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('NBC Bank Tanzania',       'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Equity Bank Tanzania',    'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('I&M Bank Tanzania',       'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('DTB Tanzania',            'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Azania Bank Tanzania',    'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Exim Bank Tanzania',      'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Access Bank Tanzania',    'Tanzania', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- UGANDA
-- =============================================================
('Stanbic Bank Uganda',         'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Centenary Bank Uganda',       'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('DFCU Bank Uganda',            'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Equity Bank Uganda',          'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('KCB Bank Uganda',             'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('DTB Uganda',                  'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered Uganda',   'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Absa Bank Uganda',            'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('PostBank Uganda',             'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Housing Finance Bank Uganda', 'Uganda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- ETHIOPIA
-- =============================================================
('Commercial Bank Ethiopia',    'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Awash Bank Ethiopia',         'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Dashen Bank Ethiopia',        'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Abyssinia Bank Ethiopia',     'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Nib International Bank',      'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('United Bank Ethiopia',        'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Oromia Bank Ethiopia',        'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Berhan Bank Ethiopia',        'Ethiopia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- RWANDA
-- =============================================================
('Bank of Kigali Rwanda',   'Rwanda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('I&M Bank Rwanda',         'Rwanda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Equity Bank Rwanda',      'Rwanda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('KCB Bank Rwanda',         'Rwanda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BPR Bank Rwanda',         'Rwanda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Cogebanque Rwanda',       'Rwanda', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- ZAMBIA
-- =============================================================
('Zanaco Bank Zambia',          'Zambia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Stanbic Bank Zambia',         'Zambia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered Zambia',   'Zambia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('FNB Zambia',                  'Zambia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Absa Bank Zambia',            'Zambia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Ecobank Zambia',              'Zambia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Access Bank Zambia',          'Zambia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- ZIMBABWE
-- =============================================================
('CBZ Bank Zimbabwe',               'Zimbabwe', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered Zimbabwe',     'Zimbabwe', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Stanbic Bank Zimbabwe',           'Zimbabwe', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('FBC Bank Zimbabwe',               'Zimbabwe', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ZB Bank Zimbabwe',                'Zimbabwe', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('NMB Bank Zimbabwe',               'Zimbabwe', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Cabs Zimbabwe',                   'Zimbabwe', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SOUTH AFRICA
-- =============================================================
('Standard Bank South Africa',  'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Absa Bank South Africa',      'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('FNB South Africa',            'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Nedbank South Africa',        'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Capitec Bank South Africa',   'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Investec Bank South Africa',  'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('African Bank South Africa',   'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bidvest Bank South Africa',   'South Africa', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- CAMEROON
-- =============================================================
('Afriland First Bank',         'Cameroon', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('UBA Cameroon',                'Cameroon', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Ecobank Cameroon',            'Cameroon', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Societe Generale Cameroon',   'Cameroon', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('SCB Cameroon',                'Cameroon', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SENEGAL
-- =============================================================
('Ecobank Senegal',             'Senegal', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CBAO Senegal',                'Senegal', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Africa Senegal',      'Senegal', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Societe Generale Senegal',    'Senegal', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BIS Senegal',                 'Senegal', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- EGYPT
-- =============================================================
('National Bank of Egypt',      'Egypt', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Banque Misr Egypt',           'Egypt', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CIB Egypt',                   'Egypt', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HSBC Egypt',                  'Egypt', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('QNB Alahli Egypt',            'Egypt', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Arab Bank Egypt',             'Egypt', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Faisal Islamic Bank Egypt',   'Egypt', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- MOROCCO
-- =============================================================
('Attijariwafa Bank Morocco',   'Morocco', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BMCE Bank Morocco',           'Morocco', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BCP Morocco',                 'Morocco', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BMCI Morocco',                'Morocco', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CIH Bank Morocco',            'Morocco', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- ALGERIA
-- =============================================================
('CPA Algeria',     'Algeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BNA Algeria',     'Algeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BEA Algeria',     'Algeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BADR Algeria',    'Algeria', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- TUNISIA
-- =============================================================
('STB Tunisia',                 'Tunisia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BNA Tunisia',                 'Tunisia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Amen Bank Tunisia',           'Tunisia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BIAT Tunisia',                'Tunisia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Banque de l Habitat Tunisia', 'Tunisia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- UNITED STATES
-- =============================================================
('JPMorgan Chase Bank',     'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of America',         'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Wells Fargo Bank',        'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Citibank USA',            'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('US Bancorp',              'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Truist Bank',             'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('PNC Bank',                'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Goldman Sachs Bank USA',  'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('TD Bank USA',             'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Capital One Bank',        'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Fifth Third Bank',        'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Ally Bank USA',           'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Regions Bank',            'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('KeyBank USA',             'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Huntington Bank',         'United States', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- UNITED KINGDOM
-- =============================================================
('Barclays Bank UK',            'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HSBC UK',                     'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Lloyds Bank UK',              'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('NatWest Bank',                'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Santander UK',                'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered UK',       'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Halifax Bank',                'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Nationwide Building Society', 'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Metro Bank UK',               'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Monzo Bank UK',               'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Revolut Bank UK',             'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Virgin Money UK',             'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('TSB Bank UK',                 'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Clydesdale Bank UK',          'United Kingdom', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- CANADA
-- =============================================================
('Royal Bank of Canada',        'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('TD Canada Trust',             'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Nova Scotia',         'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BMO Bank of Montreal',        'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CIBC Canada',                 'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('National Bank of Canada',     'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HSBC Canada',                 'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Laurentian Bank Canada',      'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ATB Financial Canada',        'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Desjardins Group',            'Canada', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- AUSTRALIA
-- =============================================================
('Commonwealth Bank Australia', 'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Westpac Bank Australia',      'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ANZ Bank Australia',          'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('NAB Australia',               'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Macquarie Bank Australia',    'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bendigo Bank Australia',      'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Queensland',          'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Suncorp Bank Australia',      'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ING Australia',               'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bankwest Australia',          'Australia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- NEW ZEALAND
-- =============================================================
('ANZ Bank New Zealand',        'New Zealand', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BNZ New Zealand',             'New Zealand', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ASB Bank New Zealand',        'New Zealand', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Westpac New Zealand',         'New Zealand', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Kiwibank New Zealand',        'New Zealand', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- GERMANY
-- =============================================================
('Deutsche Bank Germany',   'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Commerzbank Germany',     'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('DZ Bank Germany',         'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('KfW Bank Germany',        'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('UniCredit Bank Germany',  'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Postbank Germany',        'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ING-DiBa Germany',        'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('N26 Bank Germany',        'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Sparkasse Germany',       'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Volksbank Germany',       'Germany', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- FRANCE
-- =============================================================
('BNP Paribas France',          'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Credit Agricole France',      'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Societe Generale France',     'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Banque Populaire France',     'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Credit Mutuel France',        'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Caisse d Epargne France',     'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('La Banque Postale France',    'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('LCL France',                  'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HSBC France',                 'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Natixis France',              'France', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- NETHERLANDS
-- =============================================================
('ABN AMRO Netherlands',    'Netherlands', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ING Bank Netherlands',    'Netherlands', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Rabobank Netherlands',    'Netherlands', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('SNS Bank Netherlands',    'Netherlands', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SWEDEN
-- =============================================================
('Swedbank Sweden',         'Sweden', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('SEB Bank Sweden',         'Sweden', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Handelsbanken Sweden',    'Sweden', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Nordea Sweden',           'Sweden', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Danske Bank Sweden',      'Sweden', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SWITZERLAND
-- =============================================================
('UBS Switzerland',             'Switzerland', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Credit Suisse Switzerland',   'Switzerland', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Raiffeisen Switzerland',      'Switzerland', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Zurich Cantonal Bank',        'Switzerland', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('PostFinance Switzerland',     'Switzerland', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SPAIN
-- =============================================================
('Santander Spain',     'Spain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BBVA Spain',          'Spain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CaixaBank Spain',     'Spain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Sabadell Spain',      'Spain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bankinter Spain',     'Spain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- ITALY
-- =============================================================
('UniCredit Italy',          'Italy', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Intesa Sanpaolo Italy',    'Italy', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Mediobanca Italy',         'Italy', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Monte dei Paschi Siena',   'Italy', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- RUSSIA
-- =============================================================
('Sberbank Russia',         'Russia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('VTB Bank Russia',         'Russia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Gazprombank Russia',      'Russia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Alfa Bank Russia',        'Russia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Raiffeisenbank Russia',   'Russia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- TURKEY
-- =============================================================
('Ziraat Bankasi Turkey',   'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Is Bankasi Turkey',       'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Garanti BBVA Turkey',     'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Halkbank Turkey',         'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Vakifbank Turkey',        'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Akbank Turkey',           'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Yapi Kredi Turkey',       'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Denizbank Turkey',        'Turkey', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- INDIA
-- =============================================================
('State Bank of India',         'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HDFC Bank India',             'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ICICI Bank India',            'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Axis Bank India',             'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Punjab National Bank India',  'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Baroda India',        'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Canara Bank India',           'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('IDBI Bank India',             'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Kotak Mahindra Bank',         'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Yes Bank India',              'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('IndusInd Bank India',         'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('IDFC First Bank India',       'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Union Bank of India',         'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of India',               'India', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- PAKISTAN
-- =============================================================
('HBL Pakistan',                    'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('MCB Bank Pakistan',               'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('UBL Pakistan',                    'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('National Bank of Pakistan',       'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Allied Bank Pakistan',            'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank Alfalah Pakistan',           'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered Pakistan',     'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Meezan Bank Pakistan',            'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Faysal Bank Pakistan',            'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank Al-Habib Pakistan',          'Pakistan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- BANGLADESH
-- =============================================================
('Sonali Bank Bangladesh',      'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Dutch-Bangla Bank',           'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Islami Bank Bangladesh',      'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BRAC Bank Bangladesh',        'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Eastern Bank Bangladesh',     'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Prime Bank Bangladesh',       'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('National Bank Bangladesh',    'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('City Bank Bangladesh',        'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('AB Bank Bangladesh',          'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Southeast Bank Bangladesh',   'Bangladesh', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SRI LANKA
-- =============================================================
('Bank of Ceylon',              'Sri Lanka', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Peoples Bank Sri Lanka',      'Sri Lanka', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Commercial Bank Sri Lanka',   'Sri Lanka', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Hatton National Bank',        'Sri Lanka', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Sampath Bank Sri Lanka',      'Sri Lanka', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Seylan Bank Sri Lanka',       'Sri Lanka', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- CHINA
-- =============================================================
('ICBC China',                  'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('China Construction Bank',     'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Agricultural Bank of China',  'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of China',               'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Communications China','China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('China Merchants Bank',        'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Postal Savings Bank China',   'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('China CITIC Bank',            'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Ping An Bank China',          'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Minsheng Bank China',         'China', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- JAPAN
-- =============================================================
('Mitsubishi UFJ Bank',     'Japan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Mizuho Bank Japan',       'Japan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Sumitomo Mitsui Bank',    'Japan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Resona Bank Japan',       'Japan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Japan Post Bank',         'Japan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Shinsei Bank Japan',      'Japan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SOUTH KOREA
-- =============================================================
('KB Kookmin Bank Korea',   'South Korea', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Shinhan Bank Korea',      'South Korea', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Woori Bank Korea',        'South Korea', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Hana Bank Korea',         'South Korea', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('IBK Korea',               'South Korea', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Nonghyup Bank Korea',     'South Korea', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Busan Bank Korea',        'South Korea', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- MALAYSIA
-- =============================================================
('Maybank Malaysia',            'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CIMB Bank Malaysia',          'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Public Bank Malaysia',        'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('RHB Bank Malaysia',           'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('AmBank Malaysia',             'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Hong Leong Bank Malaysia',    'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank Islam Malaysia',         'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Alliance Bank Malaysia',      'Malaysia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- INDONESIA
-- =============================================================
('Bank Mandiri Indonesia',      'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BRI Indonesia',               'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BCA Indonesia',               'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BNI Indonesia',               'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CIMB Niaga Indonesia',        'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank Danamon Indonesia',      'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank Permata Indonesia',      'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Maybank Indonesia',           'Indonesia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SINGAPORE
-- =============================================================
('DBS Bank Singapore',              'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('OCBC Bank Singapore',             'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('UOB Singapore',                   'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Standard Chartered Singapore',    'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Citibank Singapore',              'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HSBC Singapore',                  'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Maybank Singapore',               'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('CIMB Singapore',                  'Singapore', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- PHILIPPINES
-- =============================================================
('BDO Unibank Philippines',     'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BPI Philippines',             'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Metrobank Philippines',       'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Land Bank Philippines',       'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('PNB Philippines',             'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('RCBC Philippines',            'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Security Bank Philippines',   'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('UnionBank Philippines',       'Philippines', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- UNITED ARAB EMIRATES
-- =============================================================
('Emirates NBD',                'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Abu Dhabi Commercial Bank',   'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('First Abu Dhabi Bank',        'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Dubai Islamic Bank',          'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Mashreq Bank UAE',            'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('ADIB UAE',                    'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('RAK Bank UAE',                'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Commercial Bank of Dubai',    'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('National Bank of Fujairah',   'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Ajman Bank UAE',              'United Arab Emirates', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- SAUDI ARABIA
-- =============================================================
('Saudi National Bank',         'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Al Rajhi Bank Saudi Arabia',  'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Riyad Bank Saudi Arabia',     'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Saudi British Bank',          'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Arab National Bank',          'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Banque Saudi Fransi',         'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Alinma Bank Saudi Arabia',    'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank Albilad Saudi Arabia',   'Saudi Arabia', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- QATAR
-- =============================================================
('Qatar National Bank',         'Qatar', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Commercial Bank Qatar',       'Qatar', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Doha Bank Qatar',             'Qatar', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Qatar Islamic Bank',          'Qatar', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Masraf Al Rayan Qatar',       'Qatar', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- KUWAIT
-- =============================================================
('National Bank Kuwait',    'Kuwait', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Gulf Bank Kuwait',        'Kuwait', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Burgan Bank Kuwait',      'Kuwait', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Kuwait Finance House',    'Kuwait', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- BAHRAIN
-- =============================================================
('Ahli United Bank Bahrain',    'Bahrain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('National Bank Bahrain',       'Bahrain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Al Baraka Bank Bahrain',      'Bahrain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Bahrain & Kuwait',    'Bahrain', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- OMAN
-- =============================================================
('Bank Muscat Oman',        'Oman', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('National Bank Oman',      'Oman', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HSBC Bank Oman',          'Oman', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Oman Arab Bank',          'Oman', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BankDhofar Oman',         'Oman', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- JORDAN
-- =============================================================
('Arab Bank Jordan',            'Jordan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Housing Bank Jordan',         'Jordan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bank of Jordan',              'Jordan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Cairo Amman Bank Jordan',     'Jordan', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- BRAZIL
-- =============================================================
('Banco do Brasil',             'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Itau Unibanco Brazil',        'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Bradesco Brazil',             'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Caixa Economica Federal',     'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Santander Brasil',            'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BTG Pactual Brazil',          'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Nubank Brazil',               'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Banco Safra Brazil',          'Brazil', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),

-- =============================================================
-- MEXICO
-- =============================================================
('BBVA Mexico',             'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Banorte Mexico',          'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Citibanamex',             'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('HSBC Mexico',             'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Santander Mexico',        'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Scotiabank Mexico',       'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('Inbursa Mexico',          'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW()),
('BanBajio Mexico',         'Mexico', 1, 10000, 50000, 10, 200000, 100, 0, 0, '1-3 Business Days', NULL, NULL, 1, NOW(), NOW());
-- =============================================================
-- END OF SEED
-- =============================================================
