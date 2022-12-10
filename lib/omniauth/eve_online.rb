# frozen_string_literal: true

require_relative 'eve_online/version'

require 'omniauth/strategies/eve_online'

module OmniAuth
  module EVEOnline
    class Error < StandardError; end
  end
end
