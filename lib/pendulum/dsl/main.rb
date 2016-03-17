module Pendulum::DSL
  class Main < Base
    def schedule(name, &block)
      schedules << dsl_factory.createSchedule(name, &block)
    end

    def schedules
      @schedules ||= []
    end
  end
end
