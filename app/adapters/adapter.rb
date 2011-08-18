module Adapter
  class << self
    def all
      self.constants.collect {|c| "Adapter::#{c}".constantize }
    end
  end
end