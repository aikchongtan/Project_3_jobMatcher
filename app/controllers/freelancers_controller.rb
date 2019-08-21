
class FreelancersController < ApplicationController

  def index

  end

  def show
    @freelancers = Freelancer.find(params[:id])
  end

  def new
    @freelancers = Freelancer.all

  end

  def edit

  end

  def create


    @freelancers = Job_category.new(name: params[:freelancers])
    @freelancers.save
    render plain: params[:freelancers].inspect

  end

  def update

  end

  def destroy

  end

end

private
  def Freelancers_params
    params.require(:freelancer).permit(:name, :_id, :roast_id)
  end