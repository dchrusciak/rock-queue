require 'active_record'

module RockQueue
  module ActiveRecordHelper
    def self.included(base) 
      base.extend ClassMethods 
      base.send(:include, InstanceMethods) 
    end
    
    module ClassMethods 
    end 
    module InstanceMethods 
      def async(method, *args)
        RockQueue.push self, method, *args
      end
    end 
    
  end
end
