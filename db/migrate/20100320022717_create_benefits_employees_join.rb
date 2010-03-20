class CreateBenefitsEmployeesJoin < ActiveRecord::Migration
  def self.up
    create_table 'benefits_employees', :id => false do |t|
    t.column :benefit_id, :integer
    t.column :employee_id, :integer
  end

  end

  def self.down
	drop_table :benefits_employees
  end
end
