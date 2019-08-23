Rails.application.routes.draw do

  devise_for :users
  #root page
  root 'freelancers#register_expertise'
  #http://localhost:3000/freelancers/register_expertise
  get '/freelancers/register_expertise' => 'freelancers#register_expertise', as: 'freelancer_register_expertise'
  #http://localhost:3000/create_expertise
  post '/freelancer_create_expertise' => 'freelancers#create_expertise'
  get '/freelancers/register_profile' => 'freelancers#register_profile', as: 'freelancer_register_profile'
  post '/freelancer_create_profile' => 'freelancers#create_profile'
  get '/freelancers/:id' => 'freelancers#show' , as: 'freelancer'

  get '/jobs' => 'jobs#index', as: 'jobs'
  get '/jobs/new' => 'jobs#new', as: 'jobs_post'
  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show' , as: 'job'
  get '/jobs/:id/edit' => 'jobs#edit', as: 'edit_job'
  patch '/jobs/:id' => 'jobs#update'
  delete '/jobs/:id' => 'jobs#destroy'

end
