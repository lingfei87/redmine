# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

#get 'polls', :to => 'polls#index'
get 'evaluate', :to => 'evaluate#index'
post 'evaluate/:id/create', :to => 'evaluate#create', :as => 'evaluate_issue_new'
post 'evaluate/:id/index', :to => 'evaluate#index'
