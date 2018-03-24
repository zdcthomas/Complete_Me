require_relative "../lib/node"
require 'pry'
require "Minitest/autorun"
require "Minitest/pride"

class NodeTest < MiniTest::Test
  def setup
  end

  def test_it_exists
    node = Node.new
    assert_instance_of Node, node
  end#test exist

  def test_it_can_insert
    node = Node.new

    node.insert("A")
    # binding.pry
    actual = node.children[0].character
    assert_equal "A", actual
    node.insert("B")
    actual = node.children[1].character
    assert_equal "B", actual
    actual = node.children.count
    assert_equal 2, actual

  end


end
