# Experience_level_hourly_rate.destroy_all
# Experience_level_hourly_rate.create(name: "Entry", hourly_rates:"20")
# Experience_level_hourly_rate.create(name: "Intermediate", hourly_rates:"30")
# Experience_level_hourly_rate.create(name: "Expert", hourly_rates:"40")

# Expertise.destroy_all
# Expertise.create(name: "Platform")
# Expertise.create(name: "Programming Langugae")

Expertise_detail.destroy_all
Expertise_detail.create(name: "Windows", expertise_id:13 )
Expertise_detail.create(name: "iOS", expertise_id:13 )
Expertise_detail.create(name: "Android", expertise_id:13 )
Expertise_detail.create(name: "Ruby", expertise_id:14 )
Expertise_detail.create(name: "Python", expertise_id:14 )
Expertise_detail.create(name: "Java", expertise_id:14 )

# Payment_type.destroy_all
# Payment_type.create(name: "Pay per hour")
# Payment_type.create(name: "Pay per project")

# Project_timeline.destroy_all
# Project_timeline.create(name: "Less than one month")
# Project_timeline.create(name: "1-3 months")
# Project_timeline.create(name: "3-6 months")
# Project_timeline.create(name: "More than 6 months")

# Project_type.destroy_all
# Project_type.create(name: "One Time Project")
# Project_type.create(name: "Ongoing Project")

# Country.destroy_all
# Country.create(name: "Singapore")
# Country.create(name: "Malaysia")
# Country.create(name: "Indonesia")

# No_of_freelancer.destroy_all
# No_of_freelancer.create(name: "One freelancer")
# No_of_freelancer.create(name: "More than one freelancer")

# Job_category.destroy_all
# Job_category.create(name: "Mobile App Development")
# Job_category.create(name: "Web Design")
# Job_category.create(name: "Mobile Game Development")

# Freelancer_education.destroy_all
# Freelancer_education.create(freelancer_id: "1", tietiary:"Specialist Diploma in Python Programming")
# Freelancer_education.create(freelancer_id: "1", tietiary:"NUS Master Degree")

# Freelancer_expertise.destroy_all
# Freelancer_expertise.create(expertise_detail_id: "7", freelancer_id:"1")
# Freelancer_expertise.create(expertise_detail_id: "14", freelancer_id:"1")


# Job_match.destroy_all
# Job_match.create(
#     job_posting_id: "1",
#     requester_type: "Hirer",
#     approval_status: "0")



# Job_match_freelancer.destroy_all
# Job_match_freelancer.create(
#     job_match_id: "1",
#     freelancer_id: "1",
#     gross_amount: "300",
#     service_fee: "60",
#     net_amount: "240")


# Job_posting_expertise.destroy_all
# Job_posting_expertise.create(expertise_detail_id: "7", job_posting_id: "1")
# Job_posting_expertise.create(expertise_detail_id: "13", job_posting_id: "1")