module EmployeesHelper
  
  def add_benefit_link
    html = select_tag('employee[benefit_ids][]', 
                      options_from_collection_for_select(@benefits, 'id', 'name'), 
                      :id => 'NEW_RECORD')
    html += "<br />"
    link_to_function('adicionar benefício', h("add_benefit(this, \"#{escape_javascript(html)}\")"))
  end

end