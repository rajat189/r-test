library(RPostgreSQL);

USERNAME = Sys.getenv('REDSHIFT_USERNAME')
PASSWORD = Sys.getenv('REDSHIFT_PASSWORD')
HOST = Sys.getenv('REDSHIFT_HOST')
print(USERNAME)
print(PASSWORD)
print(HOST)

con <- dbConnect(dbDriver("PostgreSQL"),
                  dbname = "imtesting",
                  host = HOST,
                  port = 5439,
                  user = USERNAME,
                  password = PASSWORD
)
dbGetQuery(con,"INSERT INTO publish.sample (id, name) VALUES(123, 'vishnu');")

# test1
# test2
# test3
