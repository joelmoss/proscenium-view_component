# frozen_string_literal: true

require 'active_support'
require 'proscenium'
require 'view_component'

module Proscenium
  module ViewComponent
    class Error < StandardError; end

    extend ActiveSupport::Autoload

    autoload :Base
    autoload :Sideload
    autoload :ReactComponent
    autoload :CssModules
  end
end
