class Benefit < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :value
  validates_numericality_of :value, :allow_nil => true
  belongs_to:employee
end
