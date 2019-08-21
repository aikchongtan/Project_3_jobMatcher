class Country < ActiveRecord::Base
    has_many :job_posting
    belongs_to :freelancer
end