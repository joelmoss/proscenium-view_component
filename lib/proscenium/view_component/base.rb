# frozen_string_literal: true

module Proscenium::ViewComponent
  class Base < ::ViewComponent::Base
    include Proscenium::SourcePath

    class_attribute :sideload_assets_options

    class << self
      attr_accessor :abstract_class

      def inherited(child)
        child.prepend Sideload

        super
      end

      def sideload_assets(value)
        self.sideload_assets_options = value
      end
    end
  end
end
