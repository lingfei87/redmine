class EvaluateOptions < ActiveRecord::Base
  unloadable
  belongs_to :issue_evaluates
end
