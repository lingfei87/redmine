
require 'issue_evaluate/hooks/issue_show_view_hook_listener'
# require 'redmine_issue_checklist/hooks/model_issue_hook'

Rails.configuration.to_prepare do
  require 'issue_evaluate/patches/issue_patch'
  # require 'redmine_issue_checklist/patches/issues_controller_patch'
end

module IssueEvaluate

  def self.settings()
    Setting[:plugin_issue_evaluate].blank? ? {} : Setting[:plugin_issue_evaluate]
  end

end