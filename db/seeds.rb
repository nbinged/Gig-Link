ExperienceLevelHourlyRate.destroy_all
ExperienceLevelHourlyRate.create(name: "Entry", hourly_rates:"20")
ExperienceLevelHourlyRate.create(name: "Intermediate", hourly_rates:"30")
ExperienceLevelHourlyRate.create(name: "Expert", hourly_rates:"40")

Expertise.destroy_all
Expertise.create(name: "Platform")
Expertise.create(name: "Programming Language")

ExpertiseDetail.destroy_all
ExpertiseDetail.create(name: "Windows", expertise_id:1 )
ExpertiseDetail.create(name: "iOS", expertise_id:1 )
ExpertiseDetail.create(name: "Android", expertise_id:2 )
ExpertiseDetail.create(name: "Ruby", expertise_id:2 )
ExpertiseDetail.create(name: "Python", expertise_id:2 )
ExpertiseDetail.create(name: "Java", expertise_id:2 )

JobCategory.destroy_all
JobCategory.create(name: "Mobile App Development")
JobCategory.create(name: "Web Design")
JobCategory.create(name: "Mobile Game Development")
JobCategory.create(name: "VR & AR Design")
JobCategory.create(name: "Web Application Development")

PaymentType.destroy_all
PaymentType.create(name: "Pay per hour")
PaymentType.create(name: "Pay per project")

PostVisibility.destroy_all
PostVisibility.create(name: "Anyone")
PostVisibility.create(name: "Only Registered User")

ProjectTimeline.destroy_all
ProjectTimeline.create(name: "Less than one month")
ProjectTimeline.create(name: "1-3 months")
ProjectTimeline.create(name: "3-6 months")
ProjectTimeline.create(name: "More than 6 months")

ProjectType.destroy_all
ProjectType.create(name: "One Time Project")
ProjectType.create(name: "Ongoing Project")

NoOfFreelancer.destroy_all
NoOfFreelancer.create(name: "One freelancer")
NoOfFreelancer.create(name: "More than one freelancer")



