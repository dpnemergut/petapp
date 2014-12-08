Knowyourpet::Application.routes.draw do

  get '/yourpet', to: redirect('/yourpet/sign_in')
  #namespace :yourpet do
  root :to => redirect('/yourpet')
  get "yourpet/sign_in" => "authentication#sign_in"
  get "yourpet/forgot_password" => "authentication#forgot_password"
  post "yourpet/forgot_password" => "authentication#forgot_password1"
  get "yourpet/reset_password"=> "authentication#reset_password"
  put "yourpet/reset_password"=> "authentication#validate_answer"
  get "yourpet/new_user" => "authentication#new_user"
  get "yourpet/new_pet"  => "authentication#new_pet"
  post "yourpet/sign_in" => "authentication#login"
  get "yourpet/signed_out" => "authentication#signed_out"
  put "yourpet/new_user" => "authentication#register"
  #get "yourpet/forgot_password" => "resetpassword#forgot_password"
  #post "yourpet/forgot_password" => "resetpassword#forgot_password1"
 # post "yourpet/reset_password" => "resetpassword#reset_password"
  put "yourpet/new_pet"  => "authentication#register_pet"
  post "yourpet/new_user" => "authentication#register"
  post "yourpet/new_pet" => "authentication#register_pet"
  get "yourpet/pet_profile" => "profile#pet_profile"
  get "yourpet/medical_record" => "medicalrecords#show", as: "medical_record"
  get "yourpet/create_complaint" => "profile#create_complaint"
  post "yourpet/create_complaint" => "profile#submit_complaint"
  get "yourpet/admin_view"   =>  "admin#admin_view"
  get "yourpet/view_complaint"   =>  "admin#view_complaint"
  get "yourpet/medical_record" => "medicalrecords#show", as: "medical_record"
  get "yourpet/medical_record/edit" => "medicalrecords#edit", as: "edit_medical_record"
  put "yourpet/medical_record.:id" => "medicalrecords#update", as: "update_medical_record"
  delete "yourpet/medical_record" => "medicalrecords#destroy", as: "delete_medical_record"
  
  #end

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
