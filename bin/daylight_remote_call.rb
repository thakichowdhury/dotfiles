#!/usr/bin/env ruby

require_relative './daylight_remote.rb'

def call_daylight_remote(operation:, app:, environment:, params:)
  daylight_remote = DaylightRemote.new(client: Heroku.new)

  daylight_remote.operation = operation || daylight_remote.choose_operation
  daylight_remote.app = app || daylight_remote.choose_app
  daylight_remote.environment = environment || daylight_remote.choose_environment
  daylight_remote.run(params: params)
end

call_daylight_remote(operation: ARGV[0], app: ARGV[1], environment: ARGV[2], params: ARGV[3])
