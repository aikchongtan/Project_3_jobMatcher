class JobMatch < ActiveRecord::Base
    belongs_to :freelancer
    belongs_to :hirer
    belongs_to :job_posting

end