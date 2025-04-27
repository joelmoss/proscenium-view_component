# frozen_string_literal: true

require 'test_helper'

# ViewComponent::TestCase
class Proscenium::ViewComponent::BaseTest < ViewComponent::TestCase
  test 'side loads component js and css' do
    render_inline RegularComponent.new

    assert_equal({
                   '/app/components/regular.js' => {},
                   '/app/components/regular.css' => {}
                 }, Proscenium::Importer.imported)
  end
end
