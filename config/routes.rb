ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'public', :action => 'home'
  map.resources :dads
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
