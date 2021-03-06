# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def display_flashes
		return if flash.blank?
		flash_type = flash.keys.first.to_sym
			
		return content_tag(:div, :id => "flash_box", :class => "flash-wrapper") do
			content_tag(:div, "<p class=\"#{flash_type}\">#{flash[flash_type]}</p>", :class => "grid-12")
		end
	end
	
  def remove_child_link(name, f)
    f.hidden_field(:_destroy) + link_to(name, "javascript:void(0)", :class => "remove_child")
  end
  
  def add_child_link(name, association)
    link_to(name, "javascript:void(0)", :class => "add_child", :"data-association" => association)
  end
  
  def new_child_fields_template(form_builder, association, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(association).klass.new
    options[:partial] ||= association.to_s.singularize
    options[:form_builder_local] ||= :f
    
    content_tag(:div, :id => "#{association}_fields_template", :style => "display: none") do
      form_builder.fields_for(association, options[:object], :child_index => "new_#{association}") do |f|
        render(:partial => options[:partial], :locals => {options[:form_builder_local] => f})
      end
    end
  end
end
