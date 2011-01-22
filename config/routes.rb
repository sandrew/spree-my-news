Rails.application.routes.draw do
  # Add your extension routes here
  
  namespace :admin do
    resources :news, :as => :newsitems, :controller => 'newsitems'
  end
  
  resources :news, :as => :newsitems, :controller => 'newsitems', :only => [:index, :show]
end
