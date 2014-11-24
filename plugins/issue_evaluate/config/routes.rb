# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

#get 'polls', :to => 'polls#index'
get 'evaluate', :to => 'evaluate#index'
match 'evaluate/create', :to => 'evaluate#create', :via => [:get, :post], :as => 'evaluate_issue_new'
match 'evaluate/edit/:id' => 'evaluate#edit', :via => :get, :as => 'edit_evaluate_issue'
# post 'evaluate/:id', :to => 'evaluate#update',:as => 'evaluate'
post 'evaluate/:id/index', :to => 'evaluate#index'
post 'evaluate/:id/testajax', :to => 'evaluate#testajax', :as => 'evaluate_issue_testajax'
get 'evaluate/:id/testajax', :to => 'evaluate#testajax'

get 'person_score', :to => 'person_score#index'

# get 'evaluate_options', :to => 'evaluate_options#index'
# match 'evaluate_options/new', :to => 'evaluate_options#new'
# match 'evaluate_options/create', :to => 'evaluate_options#create', :via => [:get, :post] , :as =>'evaluate_options_path'
# get 'evaluate_options/:id', :to => 'evaluate_options#show', :as => 'evaluate_option'

resources :evaluate_options