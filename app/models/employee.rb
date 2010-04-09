class Employee < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :salary, :allow_nil => true
  has_many :roles
  has_and_belongs_to_many :benefits
end
