class IssueOptionRelation < ActiveRecord::Base
  unloadable
  
  belongs_to :issue_evaluates
  belongs_to :evaluate_options
end
