class JobsController < ApplicationController

before_action :authenticate_user!, :except => [ :show ]

  def index
        #Index of all job postings
        @job_posting = JobPosting.all
  end

  def show
        #Find job posting by ID.
        @job_posting = JobPosting.find_by(:id)
  end

  def new

        @job_categories = JobCategory.all
        @project_types = ProjectType.all
        @post_visibilities = PostVisibility.all
        @no_of_freelancers = NoOfFreelancer.all
        @expertise_details = ExpertiseDetail.all
        @expertises =  Expertise.all
        @payment_types = PaymentType.all
        @project_timelines = ProjectTimeline.all
        @countrys = Country.all

  end




  def create
        #Create a new job posting.
        @job_posting = JobPosting.find_by(:id)

        if !@job_posting.nil?
            @job_posting.update(job_posting_params)
        else
            @job_posting = JobPosting.new(job_posting_params)
            @job_posting.save
        end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def job_posting_params
      params.require(:job_posting).permit(:job_posting_title, :job_category_id,:job_description, :project_type_id, :post_visibility_id, :no_of_freelancer_id, :experience, :expertise_id,:payment_type_id, :project_timeline_id => [])
  end

end