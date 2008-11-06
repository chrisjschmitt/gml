module ApplicationHelper
  
  def format_head_title(title)
    return SITE_NAME if title.to_s.length < 1
    h(title)+" - "+SITE_NAME
  end
  
  def format_date(datetime,datetime_hover=false,hover_prefix=nil)
    return "" if datetime.nil?
    code = (Time.now.year == datetime.year) ? "%b %d" : "%y/%m/%d"
    date = datetime.strftime(code)
    return date unless datetime_hover
    hover_prefix_s = hover_prefix.nil? ? "" : hover_prefix+" "
    '<span title="'+hover_prefix_s+format_datetime(datetime)+'">'+date+'</span>'
  end
  
  def format_datetime(datetime)
    return "" if datetime.nil?
    code  = "%b %d"
    code += " %Y" unless (Time.now.year == datetime.year)
    code += " at %I:%M:%S %p"
    datetime.strftime(code)
  end
  
  # Accessible Form Helper - provides accessible styling for all input forms
  # Requires matching css and modifications to scaffolded forms
  # Based on "Rails Recipes" - Visit http://www.pragmaticprogrammer.com/titles/fr_rr for more book information.
  # Methods added to this helper will be available to all templates in the application.
  class AccessibleFormBuilder < ActionView::Helpers::FormBuilder
    (field_helpers - %w(check_box radio_button hidden_field)).each do |selector|
      src = <<-END_SRC
        def #{selector}(field, options = {})
          @template.content_tag("ol", 
            @template.content_tag("label", field.to_s.humanize + ":") + 
              @template.content_tag("li", super))
        end
      END_SRC
      class_eval src, __FILE__, __LINE__
    end
  end

  def accessible_form_for(name, object = nil, options = nil, &proc)
      concat("<fieldset><legend>New #{name.class}</legend>", proc.binding)
      form_for(name, 
               object, 
               (options||{}).merge(:builder => AccessibleFormBuilder), 
               &proc)
      concat("</fieldset>", proc.binding)               
  end
  # End Accessible Form Helper - provides accessible styling for all input forms
  
end
