class EmployeesController < InheritedResources::Base
  respond_to :html, :xml, :json
  
  before_filter :load_associations, :only => [:new, :edit]

  def index
    @employees = Employee.all
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @employees.to_xml(:methods => [:role_name], :except => [:role_id], :include => :benefits) }
      format.json { render :json => @employees.to_json(:methods => [:role_name], :except => [:role_id], :include => :benefits) }
    end
  end

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
  def load_associations
    @benefits = Benefit.all
    @roles = Role.all
  end
  
end
