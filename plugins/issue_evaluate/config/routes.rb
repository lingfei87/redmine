# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get 'evaluate', :to => 'evaluate#index'
match 'evaluate/create', :to => 'evaluate#create', :via => [:get, :post], :as => 'evaluate_issue_new'
match 'evaluate/edit/:id' => 'evaluate#edit', :via => :get, :as => 'edit_evaluate_issue'
post 'evaluate/:id/index', :to => 'evaluate#index'

get 'person_score', :to => 'person_score#index'
get 'person_score/show', :to => 'person_score#show'

resources :evaluate_options