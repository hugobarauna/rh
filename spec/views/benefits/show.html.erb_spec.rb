require 'spec_helper'

describe "/benefits/show.html.erb" do
  include BenefitsHelper
  before(:each) do
    assigns[:benefit] = @benefit = stub_model(Benefit)
  end

  it "renders attributes in <p>" do
    render
  end
end
