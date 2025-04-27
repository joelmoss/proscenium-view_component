# frozen_string_literal: true

module Proscenium
  module ViewComponent::CssModules
    include Proscenium::CssModule

    def self.included(base)
      base.extend Proscenium::CssModule::Path
    end
  end
end
