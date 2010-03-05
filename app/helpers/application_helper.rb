# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # Renders success and failure flash messages.
  def display_flash_message
    return if flash.empty?

    content_tag :div, :id => 'flash' do
      flash.inject('') do |content, (key, message)|
        content << content_tag(:p, message, :class => "message #{key}") unless message.blank?
        content
      end
    end
  end
  
end
