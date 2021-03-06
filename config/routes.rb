Rails.application.routes.draw do

  root 'restaurants#index'

  resources :categories, only: %i(index show)

  resources :sessions, only: %i(new create destroy)

  resources :users, only: %i(new create)

  resources :restaurants, except: %i(destroy update edit) do
    resources :reservations, except: %i(update edit index ) do
      delete 'destroy', on: :member, as: 'delete'
    end
    resources :reviews, only: %i(show create delete)

  end


  # get 'categories/create'
  #
  # get 'categories/new'
  #n
  # get 'categories/show'
  #
  # get 'categories/index'
  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'
  #
  # get 'reservations/new'
  #
  # get 'reservations/create'
  #
  # get 'reservations/destroy'
  #
  # get 'reservations/show'
  #
  # get 'users/new'
  #
  # get 'users/create'
  # get 'restaurants/index'
  #
  # get 'restaurants/new'
  #
  # get 'restaurants/show'
  #
  # get 'restaurants/create'












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
