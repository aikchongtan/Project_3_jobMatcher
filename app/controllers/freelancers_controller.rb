class FreelancersController < ApplicationController


    def show
      @freelancer = Freelancer.find_by(params[:user_id])

    end

    def register_expertise
        @freelancer = Freelancer.find_by(params[:id])
        @job_categories = JobCategory.all
        @experience_levels = ExperienceLevelHourlyRate.all
        @payment_type = PaymentType.all
        @expertise_details = ExpertiseDetail.all


      end

    def create_expertise
        #save expertise data
        @freelancer = Freelancer.find_by(params[:user_id])

        if !@freelancer.nil?
            @freelancer.update(freelancer_params)
        else
            @freelancer = Freelancer.new(freelancer_params)
            @freelancer.user_id = current_user.id
            @freelancer.save
        end

        redirect_to freelancer_register_profile_path
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


        redirect_to @freelancer
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
      params.require(:freelancer).permit(:job_category_id, :experience_level_hourly_rate_id, :professional_title, :professional_overview, :start_work_date, :payment_type_id, :expertise_detail_id)
    end