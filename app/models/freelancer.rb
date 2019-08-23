class Freelancer < ActiveRecord::Base
    has_many :job_category
    has_many :experience_level_hourly_rate
    has_many :payment_type
    has_many :country
end