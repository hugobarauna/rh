class BenefitsController < InheritedResources::Base

  def create
    create! { benefits_path }
  end
  
  def update
    update! { benefits_path }
  end

end
