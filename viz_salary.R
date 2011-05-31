dd <- read.csv("~/Dropbox/R/data/2011_may_clean.csv")
setwd("/home/nastya/Dropbox/R/Graphs")
getwd()
library(lattice)

# all
png("histallsalaries.png")
histogram(~salary| clas, data= dd, breaks = 20)
dev.off()

png("histagesbyclas.png")
histogram(~Age| clas, data= dd,  xlim=((16):max(dd$Age)), breaks = 50) 
dev.off

png("histEnglishlevel.png")
histogram(~English.level| clas, data= dd, xlab = "English level" )
dev.off()

png("histEnglshlevelsalaries.png")
histogram(~salary |English.level, data = dd )
dev.off()

png("histlocationsalaris.png")
histogram(~salary |loc, data = dd, breaks = 20 )
dev.off()

png("histIndustrysalaries.png")
histogram(~salary |Industry, data = dd, breaks = 20 )
dev.off()

png("Subjectareasalaries.png")
histogram(~salary |Subject.area, data = dd, breaks = 20 )
dev.off()

# Developers
#### доробити розподіл по мовах програмування

png("histDevLocsalaries.png")
histogram(~salary[dd$cls=="DEV"]| loc[dd$cls=="DEV"], data= dd, xlab = "Developers salaries")
dev.off()

png("histDevsalaries.png")
histogram(~salary[dd$cls=="DEV"]| title[dd$cls=="DEV"], data= dd, breaks = 20, xlab = "Developer salary")
dev.off()

#by location
	png("histDevSysArchLocsalaries.png")  
	histogram(~salary[dd$cls=="DEV" & dd$title == "System Architect"]| loc[dd$cls=="DEV" & dd$title == "System Architect"], data= dd,  xlab = "System Architect salaries")
  	dev.off()

	png("histDevTechLeadLocsalaries.png")  	
	histogram(~salary[dd$cls=="DEV" & dd$title == "Technical Lead"]| loc[dd$cls=="DEV" & dd$title == "Technical Lead"], data= dd, xlab = "Technical Lead salaries")
	dev.off()
  
	png("histDevJuniorLocsalaries.png")  
  	histogram(~salary[dd$cls=="DEV" & dd$title == "Junior Software Engi"]| loc[dd$cls=="DEV" & dd$title == "Junior Software Engi"], data= dd, xlab = "Junior Software Engineer salaries")
 	 dev.off()
  
	png("histDevEngiLocsalaries.png")
 	histogram(~salary[dd$cls=="DEV" & dd$title == "Software Engineer"]| loc[dd$cls=="DEV" & dd$title == "Software Engineer"], data= dd, xlab = "Software Engineer salaries" )
  	dev.off()
  
	png("histSeniorLocsalaries.png")	
	histogram(~salary[dd$cls=="DEV" & dd$title == "Senior Software Engi"]| loc[dd$cls=="DEV" & dd$title == "Senior Software Engi"], data= dd, xlab = "Senior Software Engineer salaries" )
 	 dev.off()

#by language
	png("histDevSysArchLangsalaries.png")  
	histogram(~salary[dd$cls=="DEV" & dd$title == "System Architect"]| Programming.language[dd$cls=="DEV" & dd$title == "System Architect"], breaks = 10 , data= dd,  xlab = "System Architect salaries")	
	dev.off()

	png("histDevTechLeadLangsalaries.png")  	
	histogram(~salary[dd$cls=="DEV" & dd$title == "Technical Lead"]| Programming.language[dd$cls=="DEV" & dd$title == "Technical Lead"], data= dd, xlab = "Technical Lead salaries")
	dev.off()
  
	png("histDevJuniorLangsalaries.png")  
  	histogram(~salary[dd$cls=="DEV" & dd$title == "Junior Software Engi"]| Programming.language[dd$cls=="DEV" & dd$title == "Junior Software Engi"], data= dd, xlab = "Junior Software Engineer salaries")
 	 dev.off()
  
	png("histDevEngiLangsalaries.png")
 	histogram(~salary[dd$cls=="DEV" & dd$title == "Software Engineer"]| Programming.language[dd$cls=="DEV" & dd$title == "Software Engineer"], data= dd, xlab = "Software Engineer salaries" )
  	dev.off()
  
	png("histSeniorLangsalaries.png")	
	histogram(~salary[dd$cls=="DEV" & dd$title == "Senior Software Engi"]| Programming.language[dd$cls=="DEV" & dd$title == "Senior Software Engi"], data= dd, xlab = "Senior Software Engineer salaries" )
 	 dev.off()
	

# PM


png("histPMLocsalaries.png")
histogram(~salary[dd$cls=="PM"]| loc[dd$cls=="PM"], data= dd, breaks = 10, xlab = "PM salaries")
dev.off()

png("histPMsalaries.png")
histogram(~salary[dd$cls == "PM"]| title[dd$cls=="PM"], data= dd, breaks = 20, xlab = "PM salaries" )
dev.off()

  	png("histSeniorPMLocsalaries.png")
	histogram(~salary[dd$cls=="PM" & dd$title == "Senior Project Manag"]| loc[dd$cls=="PM"  & dd$title == "Senior Project Manag"], data= dd, xlab = "Senior Project Manager salaries")
	dev.off()
  
	png("histPMTeamleadLocsalaries.png")	
	histogram(~salary[dd$cls=="PM" & dd$title == "Team lead"]| loc[dd$cls=="PM"  & dd$title == "Team lead"], data= dd, xlab = "Team lead salaries")
  dev.off()
  
	png("histDirLocsalaries.png")
	histogram(~salary[dd$cls=="PM" & dd$title == "Director of Engineer"]| loc[dd$cls=="PM"  & dd$title == "Director of Engineer"], data= dd, breaks = 10, xlab ="Director of Engineer salaries")
	dev.off()
  
	png("histPMLocsalaries.png")	
	histogram(~salary[dd$cls=="PM" & dd$title == "Project manager"]| loc[dd$cls=="PM"  & dd$title == "Project manager"], data= dd, breaks = 10, xlab= "Project manager salaries")
  dev.off()
#QA

png("histQAsalaries.png")
histogram(~salary[dd$cls=="QA"]| title[dd$cls=="QA"], data= dd, breaks = 10, xlab = "QA salaries")
dev.off()

png("histQALocsalaries.png")
histogram(~salary[dd$cls=="QA"]| loc[dd$cls=="QA"], data= dd, breaks =10, xlab = "QA salaries")
dev.off()

	png("histQATechLeadLocsalaries.png")  
	histogram(~salary[dd$cls=="QA" & dd$title == "QA Tech Lead"]| loc[dd$cls=="QA"  & dd$title == "QA Tech Lead"], data= dd, xlab = "QA Tech Lead salaries")
  dev.off()
  
	png("histSeniorQALocsalaries.png")
	histogram(~salary[dd$cls=="QA" & dd$title == "Senior QA engineer"]| loc[dd$cls=="QA"  & dd$title == "Senior QA engineer"], data= dd, xlab = "Senior QA engineer salaries")
	dev.off()
  
	png("histQALocsalaries.png")
	histogram(~salary[dd$cls=="QA" & dd$title == "QA engineer"]| loc[dd$cls=="QA"  & dd$title == "QA engineer"], data= dd, xlab = "QA engineer salaries")
  dev.off()
  
	png("histJuniorQAsalaries.png")
	histogram(~salary[dd$cls=="QA" & dd$title == "Junior QA engineer"]| loc[dd$cls=="QA"  & dd$title == "Junior QA engineer"], data= dd, xlab = "Junior QA engineer salaries")
  dev.off()
  
#Other
png("histOtherspecsalaries")
histogram(~salary[dd$cls=="OTHER"]| title[dd$cls=="OTHER"], data= dd,breaks=10,  xlab = "Other salaries")
 dev.off()
#Female






