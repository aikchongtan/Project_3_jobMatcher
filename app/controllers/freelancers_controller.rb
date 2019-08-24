class FreelancersController < ApplicationController

    def index

       @freelancer = Freelancer.all
       @user = current_user

    end

    def show
        @freelancer = Freelancer.find(params[:user_id])
        @category = JobCategory.find(@freelancer.job_category_id)
        @experience = ExperienceLevelHourlyRate.find(@freelancer.experience_level_hourly_rate_id)
        @payment = PaymentType.find(@freelancer.payment_type_id)
        @firstname = User.find(params[:user_id]).first_name
        @lastname = User.find(params[:user_id]).last_name
        @country = User.find(params[:user_id]).country
    end

    def register_expertise
        @freelancer = Freelancer.find(params[:user_id])
        @job_categories = JobCategory.all
        @experience_levels = ExperienceLevelHourlyRate.all
        @payment_type = PaymentType.all
        @expertise_details = ExpertiseDetail.all
    end

    def create_expertise
        #save expertise data
        @freelancer = Freelancer.find(params[:user_id])

        if !@freelancer.nil?
            @freelancer.update(freelancer_params)
        else
            @freelancer = Freelancer.new(freelancer_params)
            @freelancer.user_id = current_user.id
            @freelancer.save
        end

        redirect_to @freelancer
    end

    def register_profile
       p "======="
      p current_user.id
      # @freelancer = Freelancer.find(params[:id])
      #   print("register_profile------------")
      #   print(@freelancer)
      # @freelancer = Freelancer_education.all
    end

    def create_profile
        #save profile data
      # @freelancer = Freelancer.find(params[:user_id])
      # if !@freelancer.nil?
      #     @freelancer.update(freelancer_params)
      # else
          @freelancer = Freelancer.new(freelancer_params)

          @freelancer.user_id = current_user.id
          @freelancer.save

        redirect_to freelancer_register_expertise_path
    end

    def edit

    end

    def create

      @freelancers = JobCategory.new(name: params[:freelancers])
      @freelancers.save
      render plain: params[:freelancers].inspect

    end

    def update

    end

    def destroy

    end

  end

  private
    def freelancer_params
      params.require(:freelancer).permit(:job_category_id, :experience_level_hourly_rate_id, :professional_title, :professional_overview, :start_work_date, :payment_type_id, :expertise_detail_ids)
    end

    def expertise_params
      params.require(:freelancer).permit(:job_category_id, :experience_level_hourly_rate_id, :professional_title, :professional_overview, :start_work_date, :payment_type_id, :expertise_detail_ids)
    end