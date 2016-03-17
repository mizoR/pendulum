module Pendulum
  class Context
    attr_reader :settings

    def initialize(options={})
      @settings ||= Pendulum::Settings.load(options[:env])

      if file = options[:file]
        main = dsl_factory.createMain
        main.instance_eval(File.read(file), file)
      end
    end

    def schedule(name, &block)
      schedules << dsl_factory.createSchedule(name, &block)
    end

    def schedules
      @schedules ||= []
    end

    def dsl_factory
      @dsl_factory ||= DSLFactory.new(self)
    end
  end
end
