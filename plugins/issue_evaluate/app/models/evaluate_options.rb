class EvaluateOptions < ActiveRecord::Base
  unloadable
  has_many :issue_option_relation, :class_name => "IssueOptionRelation", :foreign_key => 'evaluate_option_id'
end
