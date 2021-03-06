Mytest::Application.routes.draw do

  resources :toriaezus

  resources :douro_fusetsus

  resources :douros

  match '/imp2_ramen/add_row' => 'imp2_ramen#add_row'
  match '/imp2_ramen/update_all' => 'imp2_ramen#update_all'
  match '/imp2_ramen/confirm_all' => 'imp2_ramen#confirm_all'
  match '/imp2_ramen/edit_all' => 'imp2_ramen#edit_all', as: 'edit_all_imp2_raman', :via => :get
  resources :imp2_ramen

  match '/imp_ramen/update_all' => 'imp_ramen#update_all'
  match '/imp_ramen/confirm_all' => 'imp_ramen#confirm_all'
  match '/imp_ramen/edit_all' => 'imp_ramen#edit_all', as: 'edit_all_imp_raman', :via => :get
  resources :imp_ramen

  match '/ramen/update_all' => 'ramen#update_all'
  match '/ramen/confirm_all' => 'ramen#confirm_all'
  match '/ramen/edit_all' => 'ramen#edit_all', as: 'edit_all_raman', :via => :get
  resources :ramen

  resources :bestlineups

  resources :bestgames

  resources :betterlineups

  resources :bettergames

  resources :lineups

  resources :games

  resources :players

  resources :startingmembers

  resources :people

  resources :foods

  match '/jushos/todoufuken_select'
  resources :jushos

  resources :shichosons

  resources :todofukens

  resources :rleagues

  resources :rmembers

  resources :rteams

  resources :onecolumnmodels

#  resources :parents, :has_many=>children
  resources :parents

# map.connect ':controller/:action/:id'
# map.connect ':controller/:action/:id.:format'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
