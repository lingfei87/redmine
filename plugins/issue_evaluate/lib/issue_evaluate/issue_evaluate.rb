require 'issue_evaluate/hooks/issue_show_view_hook_listener'

Rails.configuration.to_prepare do
  require 'issue_evaluate/patches/issue_patch'
end

module IssueEvaluate
  def self.settings()
    Setting[:plugin_issue_evaluate].blank? ? {} : Setting[:plugin_issue_evaluate]
  end
end