class FreelancersController < ApplicationController


    def show
      @freelancer = Freelancer.find_by(params[:id])

    end

    def register_expertise
        @freelancer = Freelancer.find_by(params[:id])
        @job_categories = Job_category.all
        @experience_levels = Experience_level_hourly_rate.all
        @payment_type = Payment_type.all
        @expertise_details = Expertise_detail.all

      end

    def create_expertise
        #save expertise data
        @freelancer = Freelancer.find_by(params[:id])

        if !@freelancer.nil?
            @freelancer.update(freelancer_params)
        else
            @freelancer = Freelancer.new(freelancer_params)
            @freelancer.save
        end

        redirect_to freelancer_register_profile_path
    end

    def register_profile
      # @freelancer = Freelancer.find(params[:id])
      #   print("register_profile------------")
      #   print(@freelancer)
      # @freelancer = Freelancer_education.all
    end

    def create_profile
        #save profile data
      @freelancer = Freelancer.find(params[:id])
      if !@freelancer.nil?
          @freelancer.update(freelancer_params)
      else
          @freelancer = Freelancer.new(freelancer_params)
          @freelancer.save
      end

        redirect_to freelancer_path(@freelancer)
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
    def freelancer_params
      params.require(:freelancer).permit(:job_category_id, :experience_level_hourly_rate_id, :professional_title, :professional_overview, :start_work_date, :payment_type_id, :country_id, :expertise_detail_id)
    end