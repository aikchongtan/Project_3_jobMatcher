Rails.application.routes.draw do
  #root page
  root 'freelancers#register_expertise'

  #http://localhost:3000/freelancers/register_expertise
  get '/freelancers/register_expertise' => 'freelancers#register_expertise', as: 'freelancer_register_expertise'

  #http://localhost:3000/create_expertise
  post '/freelancer_create_expertise' => 'freelancers#create_expertise'

  get '/freelancers/register_profile' => 'freelancers#register_profile', as: 'freelancer_register_profile'
  post '/freelancer_create_profile' => 'freelancers#create_profile'
  

    # Show - Freelancer
    get '/freelancers/:id' => 'freelancers#show' , as: 'freelancer'

end
