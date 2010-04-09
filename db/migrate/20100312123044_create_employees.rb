class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string  :name
      t.date    :hired_on
      t.date    :fired_on
      t.decimal :salary, :precision => 8, :scale => 2
	  t.timestamps
	  t.references :role
    end
  end

  def self.down
    drop_table :employees
  end
end
