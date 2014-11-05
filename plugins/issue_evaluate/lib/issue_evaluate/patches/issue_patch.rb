require_dependency 'issue'

module IssueEvaluate
  module Patches

    module IssuePatch

      def self.included(base) # :nodoc:
        base.send(:include, InstanceMethods)
        base.class_eval do
          unloadable # Send unloadable so it will not be unloaded in development

          # alias_method_chain :copy_from, :checklist
          has_many :evaluates, :class_name => "IssueEvaluates", :foreign_key => 'issue_id'
        end

      end

      module InstanceMethods
        # def copy_from_with_checklist(arg, options={})
          # copy_from_without_checklist(arg, options)
          # issue = arg.is_a?(Issue) ? arg : Issue.visible.find(arg)
          # self.checklist = issue.checklist.map{|cl| cl.dup }
          # self.checklist.each do |object|
            # object.is_done = nil
          # end
          # self
        # end

        # def update_checklist_items(checklist_items, create_journal = false)
          # checklist_items ||= []
# 
          # old_checklist = checklist.collect(&:info).join(', ')
# 
          # checklist.destroy_all
          # checklist << checklist_items.uniq.collect { |cli| IssueChecklist.new(:is_done => cli[:is_done],
                                                                               # :subject => cli[:subject]) }
# 
          # new_checklist = checklist.collect(&:info).join(', ')
# 
          # if current_journal && create_journal && (new_checklist != old_checklist)
            # current_journal.details << JournalDetail.new(:property => 'attr',
                                                         # :prop_key => 'checklist',
                                                         # :old_value => old_checklist,
                                                         # :value => new_checklist)
          # end
        # end

      end

    end

  end
end


unless Issue.included_modules.include?(IssueEvaluate::Patches::IssuePatch)
  Issue.send(:include, IssueEvaluate::Patches::IssuePatch)
end
