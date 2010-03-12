require 'spec_helper'

describe "/benefits/new.html.erb" do
  include BenefitsHelper

  before(:each) do
    assigns[:benefit] = stub_model(Benefit,
      :new_record? => true
    )
  end

  it "renders new benefit form" do
    render

    response.should have_tag("form[action=?][method=post]", benefits_path) do
    end
  end
end
