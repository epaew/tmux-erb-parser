# frozen_string_literal: true

Dir[File.expand_path('tmux-erb-parser/*.rb', __dir__)].sort.each(&method(:require))
