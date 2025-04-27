# frozen_string_literal: true

module Proscenium::ViewComponent
  module Sideload
    def before_render
      Proscenium::SideLoad.sideload_inheritance_chain self, controller.sideload_assets_options

      super
    end
  end
end
