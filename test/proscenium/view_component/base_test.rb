# frozen_string_literal: true

require 'test_helper'

# ViewComponent::TestCase
class Proscenium::ViewComponent::BaseTest < ViewComponent::TestCase
  test 'side loads component js and css' do
    render_inline RegularComponent.new

    path = '/node_modules/@rubygems/proscenium-view_component/test/dummy/app/components'
    assert_equal([
                   "#{path}/regular_component.js",
                   "#{path}/regular_component.css"
                 ], Proscenium::Importer.imported.keys)
  end
end
