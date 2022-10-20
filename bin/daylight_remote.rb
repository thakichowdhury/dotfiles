#!/usr/bin/env ruby

class DaylightRemote
  attr_accessor :operation, :instance
  Environment = Struct.new(:development, :staging, :production)

  def initialize(operation=nil)
    @operation = operation
  end

  def choose_operation
    @operation = get_choice(prompt: "Choose operation:", choices: operations)
  end

  def choose_app
    app_area = get_choice(prompt: "Choose app:", choices: apps)
    app = self.send(app_area.to_sym)

    environment = get_choice(prompt: "Choose environment:", choices: environments)

    app_instance_name = app.send(environment.to_sym)

    @instance = Heroku.new(instance_name: app_instance_name)
  end

  def run
    @instance.send(operation.to_sym)
  end
  
  private
    def apps
      %w(
        daylight_web
        daylight_be
        daylight_v1
      )
    end

    def environments
      %w(
        development
        staging
        production
      )
    end

    def operations
      %w(
        rails
        deploy
      )
    end

    def get_choice(prompt:, choices:)
      p "get_choice", [prompt, choices]
      choices.each.with_index{|v, i| puts "#{i} #{v}"}
      choices[STDIN.gets.chomp.to_i]
    end

    def daylight_v1
      Environment.new("joindaylight-api-development", "joindaylight-api-staging", "joindaylight-api")
    end

    def daylight_web
      Environment.new("daylight-web-dev", "daylight-web-staging", "daylight-web-prod")
    end

    def daylight_be
      Environment.new("daylight-dev", "daylight-stage", "daylight-prod")
    end
end

class Heroku
  attr_accessor :instance_name, :envs

  def initialize(instance_name:, envs: nil)
    @instance_name = instance_name
    @envs = envs
  end

  def deploy
    system("git push https://git.heroku.com/#{instance_name}.git develop:main")
end

  def rails
    system("heroku run  rails c --app #{instance_name}")
  end
end
