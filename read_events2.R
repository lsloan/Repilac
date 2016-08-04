# @author: zqian
library("RJSONIO") # import package

caliper <- fromJSON('/path/to/caliper_events.json') # read in JSON file

length(caliper) # print number of Caliper records
length(caliper[[1]]) # print number of fields in first Caliper record
summary(caliper[[1]]) # print summary of all fields

# get actor "column" from each record that has one
cNames<-sapply(caliper, function(x) x['actor'])
