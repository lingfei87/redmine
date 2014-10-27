class IssueEvaluates < ActiveRecord::Base
  include Redmine::SafeAttributes
  include Redmine::Utils::DateCalculation
  include Redmine::I18n
  
  belongs_to :issue
end
