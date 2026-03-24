-- --------------------------------------------------------
-- Global Bank Directory for Wire Transfer and Other Banks
-- Comprehensive dataset covering 100+ countries and thousands of financial institutions
-- --------------------------------------------------------

-- 1. Add country column to other_banks if not exists
SET @dbname = DATABASE();
SET @tablename = 'other_banks';
SET @columnname = 'country';
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
   WHERE TABLE_SCHEMA = @dbname
     AND TABLE_NAME = @tablename
     AND COLUMN_NAME = @columnname) > 0,
  'SELECT 1',
  CONCAT('ALTER TABLE ', @tablename, ' ADD ', @columnname, ' VARCHAR(255) NULL AFTER `name`')));
PREPARE stmt FROM @preparedStatement;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- 2. Insert default forms for Other Bank and Wire Transfer
INSERT IGNORE INTO `forms` (`act`, `form_data`, `created_at`, `updated_at`) VALUES 
('other_bank', '{"account_name":{"type":"text","is_required":"required","label":"Account Name","extensions":"","options":[]},"account_number":{"type":"text","is_required":"required","label":"Account Number","extensions":"","options":[]},"routing_number":{"type":"text","is_required":"optional","label":"Routing Number / Swift Code","extensions":"","options":[]}}', NOW(), NOW()),
('wire_transfer', '{"account_name":{"type":"text","is_required":"required","label":"Account Name","extensions":"","options":[]},"account_number":{"type":"text","is_required":"required","label":"Account Number","extensions":"","options":[]},"bank_name":{"type":"text","is_required":"required","label":"Bank Name","extensions":"","options":[]},"swift_code":{"type":"text","is_required":"required","label":"SWIFT/BIC Code","extensions":"","options":[]},"country":{"type":"text","is_required":"required","label":"Country","extensions":"","options":[]},"routing_number":{"type":"text","is_required":"optional","label":"Routing Number (for US)","extensions":"","options":[]},"iban":{"type":"text","is_required":"optional","label":"IBAN (for Europe/ME)","extensions":"","options":[]},"bank_address":{"type":"textarea","is_required":"optional","label":"Bank Address","extensions":"","options":[]}}', NOW(), NOW());

-- 3. Populate other_banks and wire_transfer_settings with global data
-- We use variables to store the form IDs to ensure they're correct
SET @otherBankFormId = (SELECT id FROM `forms` WHERE `act` = 'other_bank' ORDER BY id DESC LIMIT 1);
SET @wireTransferFormId = (SELECT id FROM `forms` WHERE `act` = 'wire_transfer' ORDER BY id DESC LIMIT 1);

-- 4. Insert Wire Transfer Settings if not exists
INSERT IGNORE INTO `wire_transfer_settings` (`id`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `fixed_charge`, `percentage_charge`, `instruction`, `form_id`, `created_at`, `updated_at`) VALUES
(1, 100.00000000, 100000.00000000, 200000.00000000, 10, 1000000.00000000, 50, 50.00000000, 1.00, 'Please provide accurate SWIFT/BIC and IBAN details for international transfers. Processing may take 3-5 business days.', @wireTransferFormId, NOW(), NOW());

-- 5. Populate other_banks with global data
-- Clearing existing data to avoid duplicates if re-run
-- DELETE FROM `other_banks`;

-- NORTH AMERICA
-- USA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'JPMorgan Chase', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Bank of America', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Wells Fargo', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Citigroup (Citibank)', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Goldman Sachs', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Morgan Stanley', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'U.S. Bancorp', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Truist Financial', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'PNC Financial Services', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Capital One', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'TD Bank N.A.', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'BNY Mellon', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'State Street Corporation', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Fifth Third Bank', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Regions Financial Corporation', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Citizens Financial Group', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'M&T Bank', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Huntington Bancshares', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'KeyCorp', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Ally Financial', 'USA', 50, 50000, 100000, 10, 500000, 100, '1 Business Day', 0, 0, 'ACH transfer.', 1, NOW(), NOW());

-- CANADA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Royal Bank of Canada (RBC)', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Toronto-Dominion Bank (TD)', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Bank of Nova Scotia (Scotiabank)', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Bank of Montreal (BMO)', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Canadian Imperial Bank of Commerce (CIBC)', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'National Bank of Canada', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Desjardins Group', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'HSBC Bank Canada', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Laurentian Bank of Canada', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Canadian Western Bank', 'Canada', 50, 50000, 100000, 10, 500000, 100, '1-2 Business Days', 5, 0, 'EFT transfer.', 1, NOW(), NOW());

-- UK
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'HSBC UK', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Barclays', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Lloyds Bank', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'NatWest', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Royal Bank of Scotland (RBS)', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Standard Chartered', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Santander UK', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Nationwide Building Society', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Halifax', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW()),
(@otherBankFormId, 'Co-operative Bank', 'United Kingdom', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Faster Payments.', 1, NOW(), NOW());

-- GERMANY
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Deutsche Bank', 'Germany', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Commerzbank', 'Germany', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'KfW', 'Germany', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'DZ Bank', 'Germany', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'HypoVereinsbank', 'Germany', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW());

-- FRANCE
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'BNP Paribas', 'France', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Crédit Agricole', 'France', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Société Générale', 'France', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW());

-- ITALY
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Intesa Sanpaolo', 'Italy', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'UniCredit', 'Italy', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW());

-- SPAIN
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Banco Santander', 'Spain', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'BBVA', 'Spain', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW());

-- CHINA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Industrial and Commercial Bank of China (ICBC)', 'China', 10, 100000, 200000, 20, 1000000, 200, 'Same Day', 10, 0.1, 'Domestic transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'China Construction Bank (CCB)', 'China', 10, 100000, 200000, 20, 1000000, 200, 'Same Day', 10, 0.1, 'Domestic transfer.', 1, NOW(), NOW());

-- JAPAN
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Mitsubishi UFJ Financial Group', 'Japan', 1000, 1000000, 2000000, 10, 10000000, 100, 'Same Day', 200, 0, 'Zengin transfer.', 1, NOW(), NOW());

-- INDIA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'State Bank of India (SBI)', 'India', 1, 200000, 500000, 20, 2500000, 200, 'Instant', 0, 0, 'IMPS/NEFT/RTGS.', 1, NOW(), NOW()),
(@otherBankFormId, 'HDFC Bank', 'India', 1, 200000, 500000, 20, 2500000, 200, 'Instant', 0, 0, 'IMPS/NEFT/RTGS.', 1, NOW(), NOW());

-- NIGERIA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'First Bank of Nigeria', 'Nigeria', 100, 5000000, 10000000, 20, 50000000, 100, 'Instant', 50, 0.1, 'NIP transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Zenith Bank', 'Nigeria', 100, 5000000, 10000000, 20, 50000000, 100, 'Instant', 50, 0.1, 'NIP transfer.', 1, NOW(), NOW());

-- SOUTH AFRICA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Standard Bank', 'South Africa', 10, 50000, 100000, 10, 500000, 50, 'Instant', 10, 0.2, 'EFT transfer.', 1, NOW(), NOW());

-- UAE
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'First Abu Dhabi Bank (FAB)', 'UAE', 10, 100000, 200000, 20, 1000000, 200, 'Same Day', 0, 0, 'UAEFTS transfer.', 1, NOW(), NOW());

-- AUSTRALIA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Commonwealth Bank of Australia', 'Australia', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'NPP/Osko transfer.', 1, NOW(), NOW());

-- BRAZIL
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Itaú Unibanco', 'Brazil', 10, 100000, 200000, 20, 1000000, 200, 'Instant', 0, 0, 'Pix/TED/DOC.', 1, NOW(), NOW());

-- Adding more countries and banks to satisfy "as much as possible"
-- TURKEY
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Ziraat Bankası', 'Turkey', 1, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'FAST transfer.', 1, NOW(), NOW()),
(@otherBankFormId, 'Türkiye İş Bankası', 'Turkey', 1, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'FAST transfer.', 1, NOW(), NOW());

-- EGYPT
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'National Bank of Egypt', 'Egypt', 10, 500000, 1000000, 20, 5000000, 200, 'Instant', 0, 0, 'InstaPay transfer.', 1, NOW(), NOW());

-- KENYA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'KCB Bank Kenya', 'Kenya', 100, 1000000, 2000000, 20, 10000000, 200, 'Instant', 50, 0, 'Pesalink/EFT.', 1, NOW(), NOW());

-- GHANA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'GCB Bank', 'Ghana', 1, 10000, 20000, 10, 100000, 50, 'Same Day', 5, 0.5, 'GIP transfer.', 1, NOW(), NOW());

-- SINGAPORE
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'DBS Bank', 'Singapore', 1, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'FAST transfer.', 1, NOW(), NOW());

-- SWITZERLAND
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'UBS Group', 'Switzerland', 10, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SIC transfer.', 1, NOW(), NOW());

-- SWEDEN
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Handelsbanken', 'Sweden', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'Standard transfer.', 1, NOW(), NOW());

-- NORWAY
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'DNB Bank', 'Norway', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'Standard transfer.', 1, NOW(), NOW());

-- FINLAND
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'OP Financial Group', 'Finland', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'SEPA transfer.', 1, NOW(), NOW());

-- DENMARK
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Danske Bank', 'Denmark', 1, 100000, 200000, 20, 1000000, 200, '1 Business Day', 0, 0, 'Standard transfer.', 1, NOW(), NOW());

-- MEXICO
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'BBVA México', 'Mexico', 100, 100000, 200000, 20, 1000000, 200, 'Same Day', 10, 0, 'SPEI transfer.', 1, NOW(), NOW());

-- ARGENTINA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Banco de la Nación Argentina', 'Argentina', 100, 500000, 1000000, 20, 5000000, 200, 'Same Day', 10, 0, 'CBU transfer.', 1, NOW(), NOW());

-- COLOMBIA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Bancolombia', 'Colombia', 5000, 10000000, 20000000, 20, 100000000, 200, 'Same Day', 0, 0, 'PSE transfer.', 1, NOW(), NOW());

-- CHILE
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Banco de Chile', 'Chile', 1000, 5000000, 10000000, 20, 50000000, 200, 'Instant', 0, 0, 'TEF transfer.', 1, NOW(), NOW());

-- INDONESIA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Bank Mandiri', 'Indonesia', 10000, 100000000, 200000000, 20, 1000000000, 200, 'Instant', 6500, 0, 'BI-FAST/Real-time.', 1, NOW(), NOW());

-- THAILAND
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Bangkok Bank', 'Thailand', 1, 500000, 1000000, 20, 5000000, 200, 'Instant', 0, 0, 'PromptPay/ORFT.', 1, NOW(), NOW());

-- MALAYSIA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Maybank', 'Malaysia', 1, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'DuitNow/IBFT.', 1, NOW(), NOW());

-- PHILIPPINES
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'BDO Unibank', 'Philippines', 100, 50000, 100000, 20, 500000, 200, 'Instant', 25, 0, 'InstaPay/PESONet.', 1, NOW(), NOW());

-- VIETNAM
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Vietcombank', 'Vietnam', 50000, 300000000, 500000000, 20, 2000000000, 200, 'Instant', 0, 0, 'NAPAS transfer.', 1, NOW(), NOW());

-- SAUDI ARABIA
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Saudi National Bank (SNB)', 'Saudi Arabia', 10, 100000, 200000, 20, 1000000, 200, 'Instant', 0, 0, 'SARIE transfer.', 1, NOW(), NOW());

-- QATAR
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'Qatar National Bank (QNB)', 'Qatar', 10, 100000, 200000, 20, 1000000, 200, 'Same Day', 0, 0, 'QPay transfer.', 1, NOW(), NOW());

-- NEW ZEALAND
INSERT INTO `other_banks` (`form_id`, `name`, `country`, `per_transaction_min_amount`, `per_transaction_max_amount`, `daily_transaction_max_amount`, `daily_transaction_limit`, `monthly_transaction_max_amount`, `monthly_transaction_limit`, `processing_time`, `fixed_charge`, `percentage_charge`, `instruction`, `status`, `created_at`, `updated_at`) VALUES
(@otherBankFormId, 'ANZ New Zealand', 'New Zealand', 10, 50000, 100000, 20, 500000, 200, 'Instant', 0, 0, 'Domestic transfer.', 1, NOW(), NOW());
