# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  # Add an LI with class active if controller name is equal given name.
  #
  def li_active_by_controller(name, content)
    if controller_name == name
      content_tag(:li, content, :class => "active")
    else
      content_tag(:li, content)
    end
  end

end
