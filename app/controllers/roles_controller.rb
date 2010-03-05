class RolesController < InheritedResources::Base
  
  def create
    create! { roles_path }
  end
end
