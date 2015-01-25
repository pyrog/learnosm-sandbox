module Jekyll
  module Filters
    def email(input)
      @context.registers[:site].config['email']
    end
    
    def content_pages(input)
      @context.registers[:site].pages
    end
  end
end
Liquid::Template.register_filter(Jekyll::Filters)
