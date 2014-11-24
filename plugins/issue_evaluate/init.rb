#require 'redmine '
# require_dependency 'issue_show_view_hook_listener'
# require_dependency 'issue_show_controller_hook_listener'
require 'redmine'

require 'issue_evaluate/issue_evaluate'

Redmine::Plugin.register :issue_evaluate do
  name 'Issue Evaluate plugin'
  author 'LingFei'
  description 'IssueEvaluate plugin'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  
  permission :evaluate_options, { :evaluate_options => [:index] }
  menu :project_menu, :evaluate_options, { :controller => 'evaluate_options', :action => 'index' }, :caption => 'Evaluate Options', :after => :activity, :param => :project_id
end
