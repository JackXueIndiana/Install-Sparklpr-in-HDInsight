options(repos = "https://mran.microsoft.com/snapshot/2017-05-01")

install.packages("sparklyr")

packageVersion("sparklyr")

[1] ‘0.5.4’

library(sparklyr)

library(DBI)

sc <- spark_connect(master = "local")

mydata <- dbGetQuery(sc, "SELECT * FROM hivesampletable LIMIT 10")

print(mydata)
