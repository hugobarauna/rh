class EmployeesController < InheritedResources::Base
  respond_to :html
  respond_to :xml, :json, :only => [:index]
  
  before_filter :load_associations, :only => [:new, :edit]
  
  has_scope :by_role, :only => [:index]

  def index
    index! do |format|
      format.html
      format.xml { render :xml => @employees.to_xml(serialization_options) }
      format.json { render :json => @employees.to_json(serialization_options) }
    end
  end

  def create
    create! do |success, failure|
      success.html { redirect_to employees_path }
      failure.html { load_associations and render :new }
    end
  end
  
  def update
    update! do |success, failure|
      success.html { redirect_to employees_path }
      failure.html { load_associations and render :edit }
    end
  end
  
  private
    def load_associations
      @benefits = Benefit.all
      @roles = Role.all
    end
  
    def serialization_options
      { :methods => [:role_name], :except => [:role_id], :include => :benefits }
    end
  
end
