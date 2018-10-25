#install.packages("BBmisc")

library(BBmisc)
# Open dataset
kdd <- read.csv("/home/schick/Workspace/DataStream_DataSets/KDD99Cup/KDD99Cup.csv")
# Remove discrete (boolean not included)
kdd$X2 <- NULL
kdd$X3 <- NULL
kdd$X4 <- NULL
kdd$X7 <- NULL
kdd$X12 <- NULL
kdd$X21 <- NULL
kdd$X22 <- NULL
# Scale
kdd_scaled <- normalize(kdd, method = "range", margin = 2)

write.csv(kdd_scaled, file = "/home/schick/Workspace/DataStream_DataSets/KDD99Cup/KDD99Cup_Scaled.csv", row.names = FALSE, quote = FALSE)

covertype <- read.csv("/home/schick/Workspace/DataStream_DataSets/Covertype/Covertype.csv")

covertype_scaled <- normalize(covertype[ , 1:54], method = "range", margin = 2)
covertype_scaled$class <- covertype$class

write.csv(covertype_scaled, file = "/home/schick/Workspace/DataStream_DataSets/Covertype/Covertype_Scaled.csv", row.names = FALSE, quote = FALSE)
