ActionView::Helpers::TagHelper.module_eval do
  private

  def tag_options(options, escape = true)
    unless options.blank?
      attrs = []
      options.each_pair do |key, value|
        if key.to_s == 'data' && value.is_a?(Hash)
          value.each_pair do |k, v|
            if !v.is_a?(String) && !v.is_a?(Symbol)
              v = v.to_json
            end
            v = html_escape(v) if escape
            attrs << %(data-#{k.to_s.dasherize}="#{v}")
          end
        elsif BOOLEAN_ATTRIBUTES.include?(key)
          attrs << %(#{key}="#{key}") if value
        elsif !value.nil?
          final_value = value.is_a?(Array) ? value.join(" ") : value
          final_value = html_escape(final_value) if escape
          attrs << %(#{key}="#{final_value}")
        end
      end
      " #{attrs.sort * ' '}".html_safe unless attrs.empty?
    end
  end
end
