require 'test/unit'
require 'action_view'
require './actionview-data'

class ActionViewDataTest < ActionView::TestCase
  tests ActionView::Helpers::TagHelper

  def test_data_attributes
    assert_equal '<a data-array="[1,2,3]" data-hash="{&quot;key&quot;:&quot;value&quot;}" data-number="1" data-string="hello" />',
      tag('a', { :data => { :number => 1, :string => 'hello', :array => [1, 2, 3], :hash => { :key => 'value'} } })
  end
end
