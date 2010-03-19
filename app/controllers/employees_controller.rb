class EmployeesController < InheritedResources::Base
  
  def create
    #create! { employees_path }
	#@employee = Employee.find(params[:employee_id])
	#@benefit = Benefit.new
	#@benefit.name = 'blabla'
	#@benefit.value = 10
	
	#@benefit.save
	#@employee.benefit = benefit
	debugger
	
	@employee.save
	
	redirect_to @benefit
  end
  
  def update
    update! { employees_path }
  end
  
end
