class Benefit < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :value
end
