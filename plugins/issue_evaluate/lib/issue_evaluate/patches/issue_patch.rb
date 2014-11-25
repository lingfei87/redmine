require_dependency 'issue'

module IssueEvaluate
  module Patches

    module IssuePatch

      def self.included(base) 
        base.send(:include, InstanceMethods)
        base.class_eval do
          unloadable 

          has_many :evaluates, :class_name => "IssueEvaluates", :foreign_key => 'issue_id'
        end

      end

      module InstanceMethods
      end

    end

  end
end


unless Issue.included_modules.include?(IssueEvaluate::Patches::IssuePatch)
  Issue.send(:include, IssueEvaluate::Patches::IssuePatch)
end
