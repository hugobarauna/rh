class AddBankAccountNumberToEmployees < ActiveRecord::Migration
  def self.up
    add_column :employees, :bank_account_number, :integer
  end

  def self.down
    remove_columb :employees, :bank_account_number
  end
end
