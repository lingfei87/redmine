# class IssueShowViewHookListener < Redmine::Hook::ViewListener
  #def view_issues_show_description_bottom(context={} )
   # return content_tag("p", "Custom content added to the left")
  #end
    # render_on :view_issues_show_history_bottom, :partial => "evaluate/index"
# end
module IssueEvaluate
  module Hooks
    class ViewsIssuesHook < Redmine::Hook::ViewListener     
      render_on :view_issues_show_history_bottom, :partial => "evaluate/index"  
    end   
  end
end
