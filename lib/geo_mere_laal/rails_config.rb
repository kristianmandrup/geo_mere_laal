module ActionView
  module Helpers
    module FormOptionsHelper
      include GeoMereLaal::Helper

        # Return select and option tags for the given object and method, using +localized_language_options_for_select+ 
        # to generate the list of option tags. Uses <b>language code</b>, not name as option +value+.
        # Language codes listed as an array of symbols in +priority_languages+ argument will be listed first
        # TODO : Implement pseudo-named args with a hash, not the "somebody said PHP?" multiple args sillines
        # def geo_city(object, method, priority_languages = nil, options = {}, html_options = {})
        #   InstanceTag.new(object, method, self, options.delete(:object)).to_geo_city_tags(options, html_options)
        # end

        # Return "named" select and option tags according to given arguments.
        # Use +selected_value+ for setting initial value
        # It behaves likes older object-binded brother +localized_language_select+ otherwise
        # TODO : Implement pseudo-named args with a hash, not the "somebody said PHP?" multiple args sillines
        def geo_city_tag(name, value = nil, priority_languages = nil, html_options = {})
          content_tag :input, value, { "name" => name, "id" => name }.update(html_options.stringify_keys)
        end
      end

      class InstanceTag
        def to_geo_city_tag( options, html_options)
          html_options = html_options.stringify_keys
          add_default_name_and_id(html_options)
          value = value(object)
          content_tag("input", value, options, html_options)
        end
      end
            
      class FormBuilder
        def geo_city(method, options = {}, html_options = {})
          @template.city_field(@object, method, options)
        end

        def geo_street(method, options = {}, html_options = {})
          @template.street_field(@object, method, options)
        end

        def geo_postal_code(method, options = {}, html_options = {})
          @template.postal_code_field(@object, method, options)
        end                
      end
    end
  end
end