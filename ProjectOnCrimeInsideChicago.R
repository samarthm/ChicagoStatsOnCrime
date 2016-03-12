Crimes_._2001_to_present <- read.csv("~/Desktop/Crimes_-_2001_to_present.csv")

attach(Crimes_._2001_to_present)

#Summary of crimes committed in Chicago with Date/Place/District/Type
summary(Crimes_._2001_to_present)

#Location of Crimes
table(Location.Description)

#This line gives us the perecntage of each crime
namesofloc <- names(sort(table(Location.Description),decreasing=TRUE)[1:6])
amtplaces <- (table(Location.Description)/nrow(Crimes_._2001_to_present))*100
n <- length(amtplaces)
top6_1 <- c(sort(amtplaces,partial=n-1)[n-1], sort(amtplaces,partial=n-2)[n-2], sort(amtplaces,partial=n-3)[n-3], sort(amtplaces,partial=n-4)[n-4], sort(amtplaces,partial=n-5)[n-5], sort(amtplaces,partial=n-6)[n-6])
barplot(top6_1, main="Locations of crimes in Chicago (2001-2015)", horiz=TRUE,  xlim=c(0, 20), names.arg=namesofloc)