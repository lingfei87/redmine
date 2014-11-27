require 'redmine'

require 'issue_evaluate/issue_evaluate'

Redmine::Plugin.register :issue_evaluate do
  name 'Issue Evaluate plugin'
  author 'LingFei'
  description 'IssueEvaluate plugin'
  version '1.1.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  
  permission :evaluate_options, { :evaluate_options => [:index] }
  menu :project_menu, :evaluate_options, { :controller => 'evaluate_options', :action => 'index' }, :caption => 'Evaluate Options', :after => :activity, :param => :project_id
  
  permission :person_score, { :person_score => [:index] }
  menu :project_menu, :person_score, { :controller => 'person_score', :action => 'index' }, :caption => 'Person Score', :after => :evaluate_options, :param => :project_id
end
