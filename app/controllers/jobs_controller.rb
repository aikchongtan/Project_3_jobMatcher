class JobsController < ApplicationController

before_action :authenticate_user!, :except => [ :show ]

  def index
        #Index of all job postings
        @job_posting = JobPosting.all
  end

  def show
        #Find job posting by ID.
        @job_posting = JobPosting.find(params[:id])
  end

  def new

        @job_categories = JobCategory.all
        @project_types = ProjectType.all
        @post_visibilities = PostVisibility.all
        @no_of_freelancers = NoOfFreelancer.all
        @expertises =  Expertise.all
        @expertise_details = ExpertiseDetail.all
        @payment_types = PaymentType.all
        @project_timelines = ProjectTimeline.all
        @experience_level_hourly_rates = ExperienceLevelHourlyRate.all

  end

  def create
        #Create a new job posting.
        # @job_posting = JobPosting.find_by(current_user.id)

            @job_posting = JobPosting.new(job_posting_params)

            @job_posting.user_id = current_user.id
            @job_posting.save
            # render plain: params[:job].inspect

            redirect_to jobs_path(@jobs)

  end

  def edit

            if !@job_posting.nil?
            @job_posting.update(job_posting_params)

            else
            @job_posting = JobPosting.find(params[:id])
        end

  end

  def update

  @job_posting = JobPosting.find(params[:id])
  @job_posting.update(job_posting_params)
  redirect_to jobs_path(@jobs)

  end

  def destroy

      @job_posting = JobPosting.find(params[:id])
      @job_posting.destroy

      redirect_to jobs_path(@jobs)
  end

  private
  def job_posting_params
      params.require(:job).permit(:job_post_title, :job_category_id,:job_description, :project_type_id, :post_visibility_id, :no_of_freelancer_id, :payment_type_id, :project_timeline_id, :experience_level_hourly_rate_id)
  end

end