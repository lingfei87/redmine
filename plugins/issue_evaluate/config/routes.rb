# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

#get 'polls', :to => 'polls#index'
get 'evaluate', :to => 'evaluate#index'
match 'evaluate/create', :to => 'evaluate#create', :via => [:get, :post], :as => 'evaluate_issue_new'
post 'evaluate/:id/index', :to => 'evaluate#index'
post 'evaluate/:id/testajax', :to => 'evaluate#testajax', :as => 'evaluate_issue_testajax'
get 'evaluate/:id/testajax', :to => 'evaluate#testajax'
get 'evaluate_option', :to => 'evaluate_option#index'
resources :evaluate_options