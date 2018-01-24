# Install-Sparklpr-in-HDInsight
This article show you how to install package Sparklpr and then run a Hive query.

I created a small HDI/R cluster: R Server on Linux (HDI 3.6).
The sparklyr seems working for me in R Studio:

options(repos = "https://mran.microsoft.com/snapshot/2017-05-01")
install.packages("sparklyr")
packageVersion("sparklyr")
[1] ‘0.5.4’

library(sparklyr)
library(DBI)
sc <- spark_connect(master = "local")
mydata <- dbGetQuery(sc, "SELECT * FROM hivesampletable LIMIT 10")
print(mydata)

You should see:

> print(mydata)
   clientid querytime market deviceplatform devicemake devicemodel        state       country querydwelltime sessionid sessionpagevieworder
1         8  18:54:20  en-US        Android    Samsung    SCH-i500   California United States      13.920401         0                    0
2        23  19:19:44  en-US        Android        HTC  Incredible Pennsylvania United States            NaN         0                    0
3        23  19:19:46  en-US        Android        HTC  Incredible Pennsylvania United States       1.475742         0                    1
4        23  19:19:47  en-US        Android        HTC  Incredible Pennsylvania United States       0.245968         0                    2
5        28  01:37:50  en-US        Android   Motorola     Droid X     Colorado United States      20.309534         1                    1
6        28  00:53:31  en-US        Android   Motorola     Droid X     Colorado United States      16.298167         0                    0
7        28  00:53:50  en-US        Android   Motorola     Droid X     Colorado United States       1.771523         0                    1
8        28  16:44:21  en-US        Android   Motorola     Droid X         Utah United States      11.675599         2                    1
9        28  16:43:41  en-US        Android   Motorola     Droid X         Utah United States      36.944689         2                    0
10       28  01:37:19  en-US        Android   Motorola     Droid X     Colorado United States      28.981142         1                    
