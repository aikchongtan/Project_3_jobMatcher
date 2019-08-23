Rails.application.routes.draw do

  devise_for :users
  #root page
  root 'homes#index'

  get '/freelancers/:user_id/register_expertise' => 'freelancers#register_expertise', as: 'freelancer_register_expertise'
  post '/freelancers/:user_id/freelancer_create_expertise' => 'freelancers#create_expertise', as: 'freelancer_create_expertise'
  #get '/freelancers/register_profile/:id' => 'freelancers#register_profile', as: 'freelancer_register_profile'
  get '/freelancers/:user_id/register_profile' => 'freelancers#register_profile', as: 'freelancer_register_profile'
  post '/freelancers/:user_id/register_profile' => 'freelancers#create_profile', as: 'freelancer_create_profile'
  get '/freelancers/:user_id' => 'freelancers#show' , as: 'freelancer'

  get '/jobs' => 'jobs#index', as: 'jobs'
  get '/jobs/new' => 'jobs#new', as: 'jobs_post'
  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show' , as: 'job'
  get '/jobs/:id/edit' => 'jobs#edit', as: 'edit_job'
  patch '/jobs/:id' => 'jobs#update'
  delete '/jobs/:id' => 'jobs#destroy'

end