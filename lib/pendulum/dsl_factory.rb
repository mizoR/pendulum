module Pendulum
  class DSLFactory
    def initialize(context)
      @context = context
    end

    def createMain
      DSL::Main.new(@context)
    end

    def createSchedule(name, &block)
      DSL::Schedule.new(@context, name, &block)
    end
  end
end
