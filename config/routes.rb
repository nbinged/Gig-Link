Rails.application.routes.draw do
  devise_for :freelancers
  devise_for :hirers
  devise_for :users


  resources :public
  root 'home#index'

  get '/job_matches' => 'job_matches#index', as: 'job_matches' 
  get '/job_matches/propose_job' => 'job_matches#propose_job', as: 'propose_job'
  get '/job_matches/save_job' => 'job_matches#save_job', as: 'save_job'
  get '/job_matches/status_update' => 'job_matches#status_update', as: 'status_update'
 
  get '/freelancers' => 'freelancers#index', as: 'freelancers'
  get '/freelancers/register' => 'freelancers#register', as: 'freelancers_register'
  get '/freelancers/register_expertise' => 'freelancers#register_expertise', as: 'register_expertise'
  get '/freelancers/register_profile' => 'freelancers#register_profile', as: 'register_profile'
  get '/freelancers/register_budget' => 'freelancers#register_budget', as: 'register_budget'
  post '/freelancer/create_profile' => 'freelancers#create_profile', as: 'create_profile'
  post '/freelancer/create_expertise' => 'freelancers#create_expertise', as: 'create_expertise'
  post '/freelancer/create_budget' => 'freelancers#create_budget', as: 'create_budget'
  get '/freelancer/matched_job' => 'freelancers#matched_job', as: 'matched_job'
  get '/freelancer/:id' => 'freelancers#show' , as: 'freelancer'
  get '/freelancers/saved_candidates' => 'freelancers#saved_candidates' , as: 'saved_candidates'
  get '/freelancer/:id/edit' => 'freelancers#edit', as: 'edit_freelancer'
  patch '/freelancer/:id' => 'freelancers#update'

  get '/job_postings' => 'job_postings#index', as: 'job_postings'
  get '/job_postings/list' => 'job_postings#list', as: 'job_postings_list'
  get '/job_postings/new' => 'job_postings#new', as: 'job_postings_new'
  post '/job_postings/create' => 'job_postings#create', as: 'job_postings_create'
  get '/job_posting/:id' => 'job_postings#show' , as: 'job_posting'
  get '/job_postings/:id/edit' => 'job_postings#edit', as: 'edit_job_posting'
  patch '/job_postings/:id' => 'job_postings#update'
  delete '/job_postings/:id' => 'job_postings#destroy'
  get '/job_postings/saved_jobs' => 'job_postings#saved_jobs' , as: 'saved_jobs'
    
end
