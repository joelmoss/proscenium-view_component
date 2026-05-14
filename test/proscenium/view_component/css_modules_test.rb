# frozen_string_literal: true

require 'test_helper'

class Proscenium::ViewComponent::CssModulesTest < ViewComponent::TestCase
  include ViewComponent::TestHelpers

  context 'css_module helper' do
    it 'replaces with CSS module name' do
      render_inline CssModuleHelperComponent.new

      hsh = Proscenium::Utils.css_module_digest(
        Rails.root.join('app/components/css_module_helper_component.module.css')
      )
      assert page.has_css?("h1.header_#{hsh}", text: 'Hello')
    end

    it 'side loads css module' do
      render_inline CssModuleHelperComponent.new

      path = '/node_modules/@rubygems/proscenium-view_component/test/dummy/app/components'
      assert_equal([
                     "#{path}/css_module_helper_component.module.css"
                   ], Proscenium::Importer.imported.keys)
    end
  end
end
