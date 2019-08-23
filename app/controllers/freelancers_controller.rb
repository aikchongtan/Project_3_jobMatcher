class FreelancersController < ApplicationController

    @id = 3
    def index

    end

    def show
      @freelancer = Freelancer.find_by(id: 4)
    end

    def register_expertise
        @freelancer = Freelancer.find_by(id: 4)
        @job_categories = JobCategory.all
        @experience_levels = ExperienceLevelHourlyRate.all
      end

    def create_expertise
        #save expertise data
        @freelancer = Freelancer.find_by(id: 4)

        if !@freelancer.nil?
            @freelancer.update(freelancer_params)
        else
            @freelancer = Freelancer.new(freelancer_params)
            @freelancer.save
        end

        redirect_to freelancerRegisterProfile_path
    end

    def register_profile
      @freelancer = Freelancer.find_by(id: 4)
        print("register_profile------------")
        print(@freelancer)
    end

    def create_profile
        #save profile data
      @freelancer = Freelancer.find_by(id: 4)
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
      params.require(:freelancer).permit(:job_category_id, :experience_level_hourly_rate_id, :professional_title, :professional_overview)
    end
