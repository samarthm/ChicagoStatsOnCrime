Crimes_._2001_to_present <- read.csv("~/Desktop/Crimes_-_2001_to_present.csv")

attach(Crimes_._2001_to_present)

#Summary of crimes committed in Chicago with Date/Place/District/Type
summary(Crimes_._2001_to_present)

##########Location of Crimes##########
table(Location.Description)
#This line gives us the perecntage of each crime
namesofloc <- names(sort(table(Location.Description),decreasing=TRUE)[1:4])
amtplaces <- (table(Location.Description)/nrow(Crimes_._2001_to_present))*100
n <- length(amtplaces)
top4_1 <- c(sort(amtplaces,partial=n-1)[n-1], sort(amtplaces,partial=n-2)[n-2], sort(amtplaces,partial=n-3)[n-3], sort(amtplaces,partial=n-4)[n-4])
barplot(top4_1, main="Locations of crimes in Chicago (2001-2015)", horiz=TRUE,  xlim=c(0, 20), names.arg=namesofloc, cex.names=.6, xlab = "Percentage of Crimes")

##########Description of Crimes##########
table(Description)
#This line gives us the perecntage of each crime
namesofdesc <- names(sort(table(Description),decreasing=TRUE)[1:4])
amtdescs <- (table(Description)/nrow(Crimes_._2001_to_present))*100
n <- length(amtplaces)
top4_2 <- c(sort(amtdescs,partial=n-1)[n-1], sort(amtdescs,partial=n-2)[n-2], sort(amtdescs,partial=n-3)[n-3], sort(amtdescs,partial=n-4)[n-4])
barplot(top4_2, main="Most Common Descriptions of Crimes in Chicago (2001-2015)", horiz=TRUE,  xlim=c(0, .03), names.arg=namesofdesc, cex.names=.6, xlab = "Percentage of Crimes")
