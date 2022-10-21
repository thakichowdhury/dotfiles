#!/usr/bin/env ruby

class DaylightRemote
  attr_reader :operation, :app, :environment
  Environment = Struct.new(:development, :staging, :production)

  def initialize(operation=nil)
    @operation = operation
  end

  def operation=(input)
    raise "'#{input}' is not a valid input for an operation. Valid inputs include: #{operations}" unless operations.include? input
    @operation = input
  end

  def app=(input)
    raise "'#{input}' is not a valid input for an app. Valid inputs include: #{app_areas}" unless app_areas.include? input
    @app = input
  end

  def environment=(input)
    raise "'#{input}' is not a valid input for an environment. Valid inputs include: #{environments}" unless environments.include? input
    @environment = input
  end

  def choose_operation
    operation = get_choice(prompt: "Choose operation:", choices: operations)
  end

  def choose_app
    app = get_choice(prompt: "Choose app:", choices: app_areas)
  end

  def choose_environment
    environment = get_choice(prompt: "Choose environment:", choices: environments)
  end

  def run
    app_environments = self.send(app.to_sym)
    app_instance_name = app_environments.send(environment.to_sym)
    instance = Heroku.new(instance_name: app_instance_name)
    instance.send(operation.to_sym)
  end
  
  private
    def app_areas
      %w(
        daylight_web
        daylight_be
        daylight_v1
      ).freeze
    end

    def environments
      %w(
        development
        staging
        production
      ).freeze
    end

    def operations
      %w(
        rails_console
        deploy
      ).freeze
    end

    def get_choice(prompt:, choices:)
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

  def rails_console
    system("heroku run rails c --app #{instance_name}")
  end
end
