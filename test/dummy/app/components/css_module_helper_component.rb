# frozen_string_literal: true

class CssModuleHelperComponent < Proscenium::ViewComponent::Base
  def call
    tag.h1 'Hello', class: css_module(:header)
  end
end
