library(RPostgreSQL);

USERNAME = Sys.getenv('REDSHIFT_USERNAME')
PASSWORD = Sys.getenv('REDSHIFT_PASSWORD')
HOST = Sys.getenv('REDSHIFT_HOST')
print(USERNAME)
print(PASSWORD)
print(HOST)

con <- dbConnect(dbDriver("PostgreSQL"),
                  dbname = "bhola",
                  host = HOST,
                  port = 5439,
                  user = USERNAME,
                  password = PASSWORD
)
dbGetQuery(con,"INSERT INTO publish.checkout (twitterhandle, tenantregion, sourceid, registrationdate, primarytenantstore, primaryemail, primarydeliverypostcode, primarydeliverycounty, primarydeliverycountryiso3, primarydeliverycountry, primarydeliverycity, primarycontactnumber, name, longitude, latitude, isurban, isstudent, isrural, isinternational, iscurrent, iscontactablebytext, iscontactablebyphone, iscontactablebyemail, instahandle, id, gender, facebookhandle, dobdateid, billingpostcode, billingdeliverycounty, billingdeliverycountryiso3, billingdeliverycountry, billingdeliverycity, audversion, audstartdateid, audmodifieddatetime, audenddateid, audcreateddatetime, agerange, acquisitionpromotion, acquisitionchannel, acquisitioncampaign, peakauditcreatedat, peakauditupdatedat, peakauditupdatecounter) VALUES('Twitter4','Region2','68788-9019','2017-10-07','Store3','ainns9@google.fr','64153','Missouri','United States','United States','Kansas City','816-492-8038','Payton Maben','-94.697','39.2627','1','0','0','1','1','0','0','0','Insta3','78516','M','FB2','2018-06-10','76210','Texas','United States','United States','Denton','Version2','2018-01-21','2018-07-25','2018-06-17','2018-01-21','45','Promotion5','Channel3','Campaign3','2018-09-10 15:50:15.0','2018-09-10 15:50:15.0','0');")
