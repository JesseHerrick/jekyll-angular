module Jekyll
  module Angular
    module Filter
      def angular(input)
        "{{#{input}}}"
      end
    end
  end
end

Liquid::Template.register_filter Jekyll::Angular::Filter
