Proj2::Application.routes.draw do
   
  get "suggestions/edit"
  get "suggestions/update"
  
  match "pages/login", :via => [:get,:post]
  get "pages/logout"
  root :to => "pages#login"
  match "pages/continue" => "pages#continue"
  match "pages/welcome" => "pages#welcome"
  match "pages/login" => "pages#login"
  match 'pages/loggedInID' => 'pages#loggedInID'
  match 'pages/loggedIn' => 'pages#loggedIn'
  
  
  get "users/new"
  match 'users/create' => 'users#create' 
  get "users/edit"
  match "users/edit" => "users#edit"
  match "users/update" => "users#update"
  match "users/chooseUser" => "users#chooseUser"
  get "users/index"
  match "users" => "users#index"
  match 'users/resetPass' => 'users#resetPass'
  match 'users/updatePass' => 'users#updatePass'
  match 'users/resetPassResult' => 'users#resetPassResult'
  match 'users/chart' => 'users#chart'
  match 'users/index/:viewBy' => 'users#index'
  
  
  match 'suggestions/update' => 'suggestions#update'
  match 'user_suggestions' => 'user_suggestions#index'
  match 'user_suggestions/new' => 'user_suggestions#new'
  match 'user_suggestions/create' => 'user_suggestions#create'
  match 'user_suggestions/chooseSuggestion' => 'user_suggestions#chooseSuggestion'
  match 'user_suggestions/edit' => 'user_suggestions#edit'
  match 'user_suggestions/divChairView/' => 'user_suggestions#divChairView'
  match 'user_suggestions/depView/' => 'user_suggestions#depView'
  match 'user_suggestions/divSuggestions' => 'user_suggestions#divSuggestions'
  match 'user_suggestions/chooseSuggSurvey' => 'user_suggestions#chooseSuggSurvey'
  match 'user_suggestions/chooseSuggestion/:editOwnOrDiv' => 'user_suggestions#chooseSuggestion'
  match 'user_suggestions/allSuggestions' => 'user_suggestions#allSuggestions'
  match 'user_suggestions/test_pdf' => 'user_suggestions#test_pdf'
  match 'user_suggestions/pdfTest' => 'user_suggestions#pdfTest'
  match 'user_suggestions/numSuggsByDiv' => 'user_suggestions#numSuggsByDiv'
  
  match 'sugg_surveys/chooseSurvey' => 'sugg_surveys#chooseSurvey'
  match 'sugg_surveys/createSurvey' => 'sugg_surveys#createSurvey'
  match 'sugg_surveys/index' => 'sugg_surveys#index'  
  match 'sugg_surveys/takeSurvey/:survid' => 'sugg_surveys#takeSurvey'
  match 'sugg_surveys/takeSurvey', :via => [:get,:post]
  match 'sugg_surveys/surveyResult' => 'sugg_surveys#surveyResult'
  match 'sugg_surveys/test' => 'sugg_surveys#test'
  match 'sugg_surveys/takeSurveyDisplay' => 'sugg_surveys#takeSurveyDisplay'
  match 'sugg_surveys/chartData' => 'sugg_surveys#chartData'
  match 'sugg_surveys/chartData/:surveyid' => 'sugg_surveys#chartData'
  match 'sugg_surveys/allSurveys' => 'sugg_surveys#allSurveys'
       
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
