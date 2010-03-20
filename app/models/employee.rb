class Employee < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :salary, :allow_nil => true
  has_many :timetable
  has_and_belongs_to_many :benefits
  
  accepts_nested_attributes_for :benefits
end
