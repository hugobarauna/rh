class RolesController < InheritedResources::Base
  
  def create
    create! { roles_path }
  end
  
  def update
    update! { roles_path }
  end

end
