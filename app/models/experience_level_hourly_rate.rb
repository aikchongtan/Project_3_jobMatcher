class ExperienceLevelHourlyRate < ActiveRecord::Base
    belongs_to :freelancer
    has_many :job_posting
end