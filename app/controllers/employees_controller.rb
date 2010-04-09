class EmployeesController < InheritedResources::Base
  respond_to :html, :xml, :json
  
  before_filter :load_benefits, :only => [:new, :edit]

  def create
    create! do |success, failure|
      success.html { redirect_to employees_path }
      failure.html { load_benefits and render :new }
    end
  end
  
  def update
    update! do |success, failure|
      success.html { redirect_to employees_path }
      failure.html { load_benefits and render :edit }
    end
  end
  
  private
  def load_benefits
    @benefits = Benefit.all
  end
  
end
