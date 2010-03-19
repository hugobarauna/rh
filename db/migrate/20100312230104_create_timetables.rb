class CreateTimetables < ActiveRecord::Migration
  def self.up
    create_table :timetables do |t|
      t.integer :employees_id
      t.datetime :entryHour
      t.datetime :departureHour

      t.timestamps
    end
  end

  def self.down
    drop_table :timetables
  end
end
