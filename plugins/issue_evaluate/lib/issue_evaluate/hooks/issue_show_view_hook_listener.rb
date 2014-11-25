module IssueEvaluate
  module Hooks
    class ViewsIssuesHook < Redmine::Hook::ViewListener     
      render_on :view_issues_show_history_bottom, :partial => "evaluate/index"  
    end   
  end
end
