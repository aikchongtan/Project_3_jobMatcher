class JobPosting  < ActiveRecord::Base
    belongs_to :post_visibility
    belongs_to :payment_type
    belongs_to :project_timeline
    belongs_to :project_type
    belongs_to :job_category
    belongs_to :no_of_freelancer
    belongs_to :experience_level_hourly_rate
    belongs_to :job_match
end
