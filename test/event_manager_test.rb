require 'minitest'
require 'minitest/autorun'
require './lib/event_manager'

class EventManagerTest < MiniTest::Test
	def test_it_exists
		# ASSIGN & ACTIONS
		em = EventManager.new
		# ASSERTIONS
		assert_kind_of EventManager, em
	end
end