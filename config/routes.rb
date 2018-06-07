Rails.application.routes.draw do
  
  devise_for :user,  :path_prefix =>'auth'
  root 'home#index'
  get '/user/sign_out', to: 'devise/sessions#destroy'
  get '/user/sign_in', to: 'devise/sessions#create'
  get 'load_kontrahenci/show'
  get 'load_kontrahenci/upload'
  post 'load_kontrahenci/upload'
  get 'load_kontrahenci/create'
  get 'load_obroty/show'
  get 'load_obroty/upload'
  post 'load_obroty/upload'
  get 'load_obroty/create'
  get 'load_faktury/show'
  get 'load_faktury/upload'
  post 'load_faktury/upload'
  get 'load_faktury/create'
   get 'status/edit', to: 'status#edit', as: 'status_edit'
  get 'kontrahenci/:id/lista', to: 'kontrahenci#lista', as: 'kontrahenci_lista'
  get 'adres_osoba/:id/lista', to: 'adres_osoba#lista', as: 'adres_osoba_lista'
  get 'zlecenie/:id/realizacja', to: 'zlecenie#realizacja', as: 'zlecenie_realizacja'
  get 'zlecenie/lista', to: 'zlecenie#lista'
  resources :odmowa_mark
  resources :kontrahenci
  resources :adres_kontr
  resources :status
  resources :inf_dodatka_kontr
  resources :osoba_kont
  resources :adres_osoba
  resources :numer_osoba
  resources :kont_klient
  resources :dost_marketingowe
  resources :opiekun
  resources :kierownik
  resources :odmowa
  resources :zlecenie
  resources :faktury
  resources :obroty
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
