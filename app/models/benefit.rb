class Benefit < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :value
  validates_numericality_of :value, :allow_nil => true
  has_and_belongs_to_many :employees
end
