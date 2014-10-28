class IssueEvaluates < ActiveRecord::Base
  unloadable
  include Redmine::SafeAttributes
  include Redmine::Utils::DateCalculation
  include Redmine::I18n
  
  belongs_to :issue
end
