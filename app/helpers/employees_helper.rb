module EmployeesHelper
  
  def add_benefit_link(form_builder)
    link_to_function 'add a benefit' do |page|
      form_builder.fields_for :benefits, Benefit.new, :child_index => 'NEW_RECORD' do |f|
        html = render(:partial => 'benefit', :locals => { :form => f })
        page << "$('benefits').insert({ bottom: '#{escape_javascript(html)}'.replace(/NEW_RECORD/g, new Date().getTime()) });"
      end
    end
  end

end