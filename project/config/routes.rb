Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
  get '/index'   => "home#index"
  get '/about_institute' => "home#about_institute"
  get '/special_session' => 'home#special_session'
  get '/about_irdindia' => "home#about_irdindia"
  get '/about_universal_innovators' => "home#about_universal_innovators"
  get '/call_for_papers' => "home#call_for_papers"
  get '/registration' => "home#registration"
  get '/steeringcommittee' => "home#steeringcommittee"
  get '/technicalprogramcommittee' => "home#technicalprogramcommittee"
  get '/advisorycommittee' => "home#advisorycommittee"
  get '/sponsorship' => "home#sponsorship"
  get '/publication' => "home#publication"
  get '/contact_us' => "home#contact_us"
  post 'home/contact_us/post' => 'home#contact_us_post'
  get '/special_submission' => "home#special_submission"
  post 'home/special_submission/post' => 'home#special_submission_post'
  get '/paper_submission' => "home#paper_submission"
  get '/download_paper_template' => "home#download_paper_template"
  get '/ss1' => 'home#ss1'
  get '/ss2' => 'home#ss2'
  get '/ss3' => 'home#ss3'
  get '/ss4' => 'home#ss4'
  get '/ss5' => 'home#ss5'
  get '/ss6' => 'home#ss6'
  get '/ss7' => 'home#ss7'
  get '/ss8' => 'home#ss8'
  get '/ss9' => 'home#ss9'
  get '/ss10' => 'home#ss10'
  get '/ss11' => 'home#ss11'
  get '/ss12' => 'home#ss12'
  get '/ss13' => 'home#ss13'
  get '/ss14' => 'home#ss14'
  get '/ss15' => 'home#ss15'
  get '/abstract' => "home#abstract"
  post 'home/abstract/abstract_post' => 'home#abstract_post'

  get '/conference_venue' => "home#conference_venue"
  get '/important_dates' => "home#important_dates"




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

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
