# centos7-mssql-tools
## This is an install of mssql-tools (msodbcsql17) into a docker image of CentOS7 latest

This Docker image contains the following utilities from mssql-tools (*msodbcsql17*):
* **Sqlcmd** - Microsoft (R) SQL Server Command Line Tool (Version 17.1.0000.1 Linux)
* **BCP**    - Bulk Copy Program for Microsoft SQL Server (Version: 17.1.0000.1)
> Copyright (c) 2012 Microsoft. All rights reserved.

## RUN

    docker run -it centos7-mssql-tools sqlcmd -?


Command Usage
------------
```
     $ sqlcmd -?
     usage: sqlcmd            [-U login id]          [-P password]
  [-S server or Dsn if -D is provided]
  [-H hostname]          [-E trusted connection]
  [-N Encrypt Connection][-C Trust Server Certificate]
  [-d use database name] [-l login timeout]     [-t query timeout]
  [-h headers]           [-s colseparator]      [-w screen width]
  [-a packetsize]        [-e echo input]        [-I Enable Quoted Identifiers]
  [-c cmdend]
  [-q "cmdline query"]   [-Q "cmdline query" and exit]
  [-m errorlevel]        [-V severitylevel]     [-W remove trailing spaces]
  [-u unicode output]    [-r[0|1] msgs to stderr]
  [-i inputfile]         [-o outputfile]
  [-k[1|2] remove[replace] control characters]
  [-y variable length type display width]
  [-Y fixed length type display width]
  [-p[1] print statistics[colon format]]
  [-R use client regional setting]
  [-K application intent]
  [-M multisubnet failover]
  [-b On error batch abort]
  [-D Dsn flag, indicate -S is Dsn]
  [-X[1] disable commands, startup script, environment variables [and exit]]
  [-x disable variable substitution]
  [-? show syntax summary``` |
  
  
     $ bcp -?
usage: bcp {dbtable | query} {in | out | queryout | format} datafile
  [-m maxerrors]            [-f formatfile]          [-e errfile]
  [-F firstrow]             [-L lastrow]             [-b batchsize]
  [-n native type]          [-c character type]      [-w wide character type]
  [-N keep non-text native] [-q quoted identifier]
  [-t field terminator]     [-r row terminator]
  [-a packetsize]           [-K application intent]
  [-S server name or DSN if -D provided]             [-D treat -S as DSN]
  [-U username]             [-P password]
  [-T trusted connection]   [-v version]             [-R regional enable]
  [-k keep null values]     [-E keep identity values]
  [-h "load hints"]         [-d database name]
```
### License
###### By using this Docker image, I confirm that I agree to the SQL Server Command Line Utilities license terms located [here](https://docs.microsoft.com/en-us/Legal/sql/sql-server-data-tools-license-terms?view=sql-server-2017).

