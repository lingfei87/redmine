class IssueEvaluates < ActiveRecord::Base
  unloadable
  include Redmine::SafeAttributes
  include Redmine::Utils::DateCalculation
  include Redmine::I18n
  
  belongs_to :issue
  belongs_to :user
  has_many :evaluate_options, :class_name => "IssueEvaluates", :foreign_key => 'issue_evaluate_id'
end
