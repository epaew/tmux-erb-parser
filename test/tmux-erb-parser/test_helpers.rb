# frozen_string_literal: true

require 'test_helper'

module TmuxERBParser
  class TestHelpers < MyTestCase
    def test_binding
      assert_instance_of(Binding, TmuxERBParser::Helpers.binding)
    end
  end
end
