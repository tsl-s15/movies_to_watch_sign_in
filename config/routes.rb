Rails.application.routes.draw do

  get '/users/:id', :controller => "users", :action => 'show', :as => 'user'

  # Routes for the To_watch resource:
  # CREATE
  get '/to_watches/new',      :controller => 'to_watches', :action => 'new',    :as => 'new_to_watch'
  post '/to_watches',         :controller => 'to_watches', :action => 'create', :as => 'to_watches'

  # READ
  get '/to_watches',          :controller => 'to_watches', :action => 'index'
  get '/to_watches/:id',      :controller => 'to_watches', :action => 'show',   :as => 'to_watch'

  # UPDATE
  get '/to_watches/:id/edit', :controller => 'to_watches', :action => 'edit',   :as => 'edit_to_watch'
  patch '/to_watches/:id',    :controller => 'to_watches', :action => 'update'

  # DELETE
  delete '/to_watches/:id',   :controller => 'to_watches', :action => 'destroy'
  #------------------------------

  devise_for :users
  root to: "movies#index"
  # Routes for the Role resource:
  # CREATE
  get '/roles/new',      :controller => 'roles', :action => 'new',    :as => 'new_role'
  post '/roles',         :controller => 'roles', :action => 'create', :as => 'roles'

  # READ
  get '/roles',          :controller => 'roles', :action => 'index'
  get '/roles/:id',      :controller => 'roles', :action => 'show',   :as => 'role'

  # UPDATE
  get '/roles/:id/edit', :controller => 'roles', :action => 'edit',   :as => 'edit_role'
  patch '/roles/:id',    :controller => 'roles', :action => 'update'

  # DELETE
  delete '/roles/:id',   :controller => 'roles', :action => 'destroy'
  #------------------------------

  get '/',          :controller => 'movies', :action => 'index'
  # Routes for the Director resource:
  # CREATE
  get '/directors/new',      :controller => 'directors', :action => 'new',    :as => 'new_director'
  post '/directors',         :controller => 'directors', :action => 'create', :as => 'directors'

  # READ
  get '/directors',          :controller => 'directors', :action => 'index'
  get '/directors/:id',      :controller => 'directors', :action => 'show',   :as => 'director'

  # UPDATE
  get '/directors/:id/edit', :controller => 'directors', :action => 'edit',   :as => 'edit_director'
  patch '/directors/:id',    :controller => 'directors', :action => 'update'

  # DELETE
  delete '/directors/:id',   :controller => 'directors', :action => 'destroy'
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get '/actors/new',      :controller => 'actors', :action => 'new',    :as => 'new_actor'
  post '/actors',         :controller => 'actors', :action => 'create', :as => 'actors'

  # READ
  get '/actors',          :controller => 'actors', :action => 'index'
  get '/actors/:id',      :controller => 'actors', :action => 'show',   :as => 'actor'

  # UPDATE
  get '/actors/:id/edit', :controller => 'actors', :action => 'edit',   :as => 'edit_actor'
  patch '/actors/:id',    :controller => 'actors', :action => 'update'

  # DELETE
  delete '/actors/:id',   :controller => 'actors', :action => 'destroy'
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get '/movies/new',      :controller => 'movies', :action => 'new',    :as => 'new_movie'
  post '/movies',         :controller => 'movies', :action => 'create', :as => 'movies'

  # READ
  get '/movies',          :controller => 'movies', :action => 'index'
  get '/movies/:id',      :controller => 'movies', :action => 'show',   :as => 'movie'

  # UPDATE
  get '/movies/:id/edit', :controller => 'movies', :action => 'edit',   :as => 'edit_movie'
  patch '/movies/:id',    :controller => 'movies', :action => 'update'

  # DELETE
  delete '/movies/:id',   :controller => 'movies', :action => 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
