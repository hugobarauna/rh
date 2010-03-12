require 'spec_helper'

describe "/benefits/edit.html.erb" do
  include BenefitsHelper

  before(:each) do
    assigns[:benefit] = @benefit = stub_model(Benefit,
      :new_record? => false
    )
  end

  it "renders the edit benefit form" do
    render

    response.should have_tag("form[action=#{benefit_path(@benefit)}][method=post]") do
    end
  end
end
