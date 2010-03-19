require 'spec_helper'

describe Role do

  it { should validate_presence_of(:name) }
  
  # describe 'uniqueness of name' do
  #   before(:each) { Factory(:role) }
  #   should_validate_uniqueness_of :name, :allow_blank => true
  # end

end
