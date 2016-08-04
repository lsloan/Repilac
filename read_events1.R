# @author Lance E Sloan <lsloan at umich dot edu>
library(RJSONIO)

# R doesn't provide a function to get the path to the current program
# in a way that works in every environment.  (Insert fantasies here
# about PHP's __FILE__ magic variable.)  This path will probably need
# to be adjusted before this program will run.
pathToCaliperEventJSONFile <- './sample_caliper_events.json'
allEvents <- fromJSON(pathToCaliperEventJSONFile)

event <- allEvents[7] # get the whole seventh event, all contents
event # print event object's attributes
event$actor # print actor (the user) sub-object's attributes
event$actor$name # print user's full name or username
event$actor$`@id` # eg: https://example.edu/#profile:user_name

summary(event)

# set actors to list of generic objects containing actor data:
actors<-sapply(allEvents, function(x) x[['actor']])

# alternate method: set actors to list of actor objects:
#actors<-sapply(allEvents, function(x) x['actor'])

actors # prints all actors (CAUTION: May be MANY LINES!)
