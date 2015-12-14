################################################################################
# code.R
#
#                 Data Science Specialization via Coursera
#
#                        Prepoducable research
#                           Course project II
#                    NOAA storm event data research
#
#                       Author: Vincenc Podobnik
#
################################################################################
rm(list = ls())

library(dplyr)

# Load the data
data <- read.csv(
    bzfile( "repdata_data_StormData.csv.bz2" ),
    colClasses = c(
        'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL',
        'character', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL',
        'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL',
        'numeric', 'numeric', 'numeric', 'character', 'numeric', 'character',
        'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'
    ),
    na.strings = 'NA'
)




# Just browsing the data
# colnames(data)
# str(data)
# head(data)
# tail(data)

unique( data$EVTYPE )
data[grepl('Summary', data$EVTYPE ), ]


unique( data$PROPDMGEXP )

data[data$PROPDMGEXP == '?', ]

# 1. Which events are most harmful with respect to population health? ##########
#

