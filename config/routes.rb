Jobzzie::Application.routes.draw do
  
  # Employer routes
  get "employer_profile" => "employer#index", as: :employer_profile
  get "search_for_students" => "employer#search", as: :search_for_students
  
  # Student routes
  get "student_profile" => "student#index", as: :student_profile
  get "search_for_openings" => "student#search", as: :search_for_openings
  
  # Openings (CRUD)
  resources :openings
  
  # Register with site after email validation
  get  "register/:code" => "registration#new", as: :register
  post "register/:code" => "registration#create"
  
  # Log in or out (login form is on home page)
  post   "login"  => "session#create"
  get    "logout" => "session#destroy"
  delete "logout" => "session#destroy"
  
  # Reset password after email validation
  get   "reset/:code" => "password#edit", as: :reset
  put   "reset/:code" => "password#update"
  patch "reset/:code" => "password#update"
  
  # Site routes
  get "privacy" => "site#privacy"
  get "terms" => "site#terms"
  
  root 'site#index' # Login/signup/reset form
end
