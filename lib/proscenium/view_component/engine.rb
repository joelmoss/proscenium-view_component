# frozen_string_literal: true

module Proscenium
  module ViewComponent
    class Engine < ::Rails::Engine
      isolate_namespace Proscenium::ViewComponent
    end
  end
end
