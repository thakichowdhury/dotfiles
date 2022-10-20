#!/usr/bin/env ruby

require_relative './daylight_remote.rb'

def call_daylight_remote
  daylight_remote = DaylightRemote.new()

  daylight_remote.operation = ARGV[0] || daylight_remote.choose_operation
  daylight_remote.choose_app
  daylight_remote.run
end

call_daylight_remote
