module Pendulum::DSL
  class Base
    def initialize(context)
      @context = context
    end

    def dsl_factory
      @context.dsl_factory
    end

    def settings
      @context.settings
    end
  end
end

