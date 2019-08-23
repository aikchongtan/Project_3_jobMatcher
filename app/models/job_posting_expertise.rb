class JobPostingExpertise < ActiveRecord::Base
    has_and_belongs_to_many :expertise_detail
    has_and_belongs_to_many :job_posting
end