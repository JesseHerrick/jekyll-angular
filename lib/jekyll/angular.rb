require "jekyll/angular/version"

module Jekyll::Angular::Filter
  def angular(input)
    "{{#{input}}}"
  end
end
