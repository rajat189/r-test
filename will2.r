library(RPostgreSQL);
library(dplyr);

USERNAME = Sys.getenv('REDSHIFT_USERNAME')
PASSWORD = Sys.getenv('REDSHIFT_PASSWORD')
HOST = Sys.getenv('REDSHIFT_HOST')
print(USERNAME)
print(PASSWORD)
print(HOST)

con <- dbConnect(dbDriver("PostgreSQL"),
                  dbname = "ewantest",
                  host = HOST,
                  port = 5439,
                  user = USERNAME,
                  password = PASSWORD
)
dbGetQuery(con,"SELECT * FROM publish.checkout;")
