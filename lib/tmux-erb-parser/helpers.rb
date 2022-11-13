# frozen_string_literal: true

require_relative 'helpers/environment_helper'
require_relative 'helpers/format_helper'

module TmuxERBParser
  module Helpers
    extend EnvironmentHelper
    extend FormatHelper

    module_function

    def binding # rubocop:disable Lint/UselessMethodDefinition: super(= Kernel.#binding) is private
      super
    end
  end
end
