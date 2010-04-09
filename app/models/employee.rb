class Employee < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :salary, :allow_nil => true
  belongs_to :role
  has_and_belongs_to_many :benefits
  
  delegate :name, :to => :role, :prefix => true
  
  # def to_xml
  #   super(:methods => [:role_name])
  # end
  
  # def to_json
  #   super(serialization_options)
  # end
  # 
  # 
  # private
  # def serialization_options
  #   { :methods => [:role_name], :except => [:role_id], :include => :benefits }
  # end
end
