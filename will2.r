library(RPostgreSQL);

USERNAME = Sys.getenv('REDSHIFT_USERNAME')
PASSWORD = Sys.getenv('REDSHIFT_PASSWORD')
HOST = Sys.getenv('REDSHIFT_HOST')
print(USERNAME)
print(PASSWORD)
print(HOST)

con <- dbConnect(dbDriver("PostgreSQL"),
                  dbname = "diwali",
                  host = HOST,
                  port = 5439,
                  user = USERNAME,
                  password = PASSWORD
)
dbGetQuery(con,"INSERT INTO publish.sample (name, email) VALUES('sxcdf', 'vfrtg@grfds.com');")

# test1
# test2
# test3
