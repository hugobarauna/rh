class Employee < ActiveRecord::Base
  validates_presence_of :name, :salary
  validates_numericality_of :salary, :allow_nil => true

  belongs_to :role
  has_and_belongs_to_many :benefits
  
  delegate :name, :to => :role, :prefix => true

  named_scope :by_role, lambda { |role|
    { 
      :joins => :role,
      :conditions => { :roles => { :name => role } }
    }
  }
end
