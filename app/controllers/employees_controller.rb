class EmployeesController < InheritedResources::Base
  
  def create
    create! { employees_path }
  end
  
  def update
    update! { employees_path }
  end
  
end
