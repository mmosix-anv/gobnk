# Admin Transaction Management with Backdating

This feature allows administrators to manually add and edit transactions with the ability to backdate them.

## Features

### 1. Add New Transaction
- Admins can create transactions for any active user
- Select transaction type: Credit (+) or Debit (-)
- Specify amount, remark, and details
- **Backdate transactions** by selecting a past date (optional)
- If no date is selected, current date/time is used

### 2. Edit Existing Transaction
- Admins can edit transaction remark and details
- **Update transaction date** to backdate or correct the date
- Amount, type, and user cannot be changed (for audit integrity)

### 3. Transaction Listing
- View all transactions with filters
- Edit button added to each transaction row
- "Add Transaction" button in the header

## Files Modified/Created

### Controllers
- `main/app/Http/Controllers/Admin/AdminController.php`
  - Added `transactionCreate()` - Display add transaction form
  - Added `transactionStore()` - Process new transaction with backdating
  - Added `transactionEdit()` - Display edit transaction form
  - Added `transactionUpdate()` - Update transaction with backdating

### Routes
- `main/routes/admin.php`
  - `GET /admin/transaction/create` - Add transaction form
  - `POST /admin/transaction/store` - Store new transaction
  - `GET /admin/transaction/{id}/edit` - Edit transaction form
  - `POST /admin/transaction/{id}/update` - Update transaction

### Views
- `main/resources/views/admin/page/transaction_form.blade.php` (NEW)
  - Form for adding/editing transactions
  - Date picker with max date validation (cannot select future dates)
  
- `main/resources/views/admin/page/transaction.blade.php` (MODIFIED)
  - Added "Add Transaction" button
  - Added "Edit" action column

### Policies
- `main/app/Policies/AdminPolicy.php`
  - Added `manageTransactions()` method for authorization

### Database
- Uses existing `created_at` column for backdating (no migration needed)
- SQL file provided for adding permission: `main/database/sql/add_manage_transactions_permission.sql`

## Installation Steps

1. **Run the SQL to add permission:**
   ```sql
   -- Execute the SQL file or run manually:
   INSERT INTO `permissions` (`name`, `guard_name`, `created_at`, `updated_at`) 
   VALUES ('manage transactions', 'admin', NOW(), NOW());
   ```

2. **Grant permission to admin roles:**
   - Go to Admin Panel → Roles & Permissions
   - Edit the desired role (e.g., Super Admin)
   - Check "manage transactions" permission
   - Save

3. **Clear cache (if needed):**
   ```bash
   php artisan cache:clear
   php artisan config:clear
   ```

## Usage

### Adding a Transaction

1. Navigate to Admin → Transactions
2. Click "Add Transaction" button
3. Fill in the form:
   - Select user
   - Choose transaction type (Credit/Debit)
   - Enter amount
   - Enter remark (max 40 characters)
   - Enter details (max 255 characters)
   - **Optional:** Select a past date to backdate the transaction
4. Click "Save Transaction"

### Editing a Transaction

1. Navigate to Admin → Transactions
2. Click "Edit" button on any transaction
3. Modify:
   - Remark
   - Details
   - **Transaction date** (to backdate or correct)
4. Click "Save Transaction"

## Permissions

- **view all transactions** - Required to view transaction list
- **manage transactions** - Required to add/edit transactions

## Security Notes

- Only admins with "manage transactions" permission can add/edit
- Cannot select future dates (validation enforced)
- User balance is updated automatically when adding transactions
- Debit transactions validate sufficient balance
- Transaction amount and type cannot be changed after creation (audit trail)

## Validation Rules

### Add Transaction
- `user_id`: Required, must exist in users table
- `amount`: Required, numeric, greater than 0
- `trx_type`: Required, must be '+' or '-'
- `remark`: Required, string, max 40 characters
- `details`: Required, string, max 255 characters
- `created_at`: Optional, date, must be today or earlier

### Edit Transaction
- `remark`: Required, string, max 40 characters
- `details`: Required, string, max 255 characters
- `created_at`: Optional, date, must be today or earlier
