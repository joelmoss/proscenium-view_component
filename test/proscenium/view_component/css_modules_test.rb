# frozen_string_literal: true

require 'test_helper'

class Proscenium::ViewComponent::CssModulesTest < ViewComponent::TestCase
  include ViewComponent::TestHelpers

  context 'css_module helper' do
    it 'replaces with CSS module name' do
      render_inline CssModuleHelperComponent.new

      assert page.has_css?('h1.header-8601bfe7', text: 'Hello')
    end

    it 'side loads css module' do
      render_inline CssModuleHelperComponent.new

      path = '/node_modules/@rubygems/proscenium-view_component/test/dummy/app/components'
      assert_equal({
                     "#{path}/css_module_helper_component.module.css" => {
                       digest: '8601bfe7'
                     }
                   }, Proscenium::Importer.imported)
    end
  end
end
