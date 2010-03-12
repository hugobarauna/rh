require 'spec_helper'

describe "/benefits/index.html.erb" do
  include BenefitsHelper

  before(:each) do
    assigns[:benefits] = [
      stub_model(Benefit),
      stub_model(Benefit)
    ]
  end

  it "renders a list of benefits" do
    render
  end
end
