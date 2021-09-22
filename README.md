# Mysterious Sightings

  <p float="center">
  <img src="https://user-images.githubusercontent.com/82002107/133905938-3165e93a-8ec9-4274-8990-7fc0411c6c7c.png" alt="Where's Bigfoot?" width="400" height="300">
  <img src="https://user-images.githubusercontent.com/82002107/133905796-7797e10a-851f-40f0-bb3c-4f0c69ab3e67.png" alt="UFO" width="400" height="300"
</p>

# Case Study
  
Our client, Mr. Henderson, is building a website for his fellow squatchers and UFO theorists to analyze reports of mysterious sightings in the U.S. He has hired our company, <b>Cryptic Developers INC.</b> to find some data and load it into a database that he and his team can start using. They are initially interested in Bigfoot and UFO sightings. There are talks that they may expand sightings to others to include werewolves and the like but would first like to get the website up and running.
  
The initial data points of interest are the <b>dates, locations, and summaries of these sightings</b>.
  
# Data Cleanup and Analysis
  
We used two data sources, one for UFO sightings and one for Bigfoot sightings (data.world).
  
## Bigfoot Sightings (data.world)
  
From data.world, Tim Renner posted data files pertaining to Bigfoot Sightings that he gathered from The Bigfoot Field Researchers Organization (BFRO), an organization    dedicated to investigating the bigfoot/sasquatch mystery. The dataset was last refreshed on 6/2/21 and covers a timeframe going back to xxx. This dataset included exactly what we needed and then some to get a dataset for the database in the short term.
    
We kept the following columns from the dataset: Number (ID), Date, County, State, Latitude, Longitue, Observed
  
Other data points that were provided but not specifically requested at this time were the season and weather data such as precipitation, pressure, UV index, dew point, temperature, visibility, cloud coverage, humidity, and wind speed.

We cleaned the following columns:
  
   - [x] Removed the decimal from the ID since it was added automatically by python
   - [x] Inserted zeroes in the place of null values
   - [x] Formatted the dates without dashes
   - [x] Updated the state's full name to abbreviation to match the UFO dataset

## UFO Sightings
  
From xxx, xx posted UFO sighting information gathered from xxx, an organization that xxx. The dataset was last refreshed on xxx and covers a timeframe going back to xxx. 
  
We kept the following columns from the dataset: DateTime, City, State, Country, Latitude, Longitude, Comments
 
Other data points that were provided but not specifically requested at this time include: UFO shape, duration in seconds and in hours/minutes, and date posted

We cleaned the following columns:
  
   - [x] Separated the DateTime column into two columns
   - [x] Formatted the date without dashes to match the Bigfoot dates (for consistency and easier analysis by our client)
   - [x] Reduced the dataset to sightings in the United States only per our client's request


# The Database

  At the client's request, our data was loaded into a SQL database. We used postgres to accomplish this task.
  
  1. We used http://www.quickdatabasediagrams.com/ to create our ERD which created our schema.sql.
  2. We created the database in PGAdmin and imported the schema.sql to create our two tables.
  2. Then, we added onto our Jupyter Notebook to connect to our postgres database and used the pandas "to-sql" function to load each dataframe into postgres as tables.
  
  ## ERD
  
https://files.slack.com/files-pri/T024E16FTEX-F02FLAY4T2M/quickdbd-cryptid_db.png
  
# Our Team
  
<img src="https://user-images.githubusercontent.com/82002107/133907178-73250178-1465-426a-8d5f-9ccf9c62f0f1.png" align="left" width="200px" padding="10px">Our talented group of developers at Cryptic Developers INC. </br></br>
  <b>
&emsp;  - Celenia Chapa
&emsp;  - Tyler Cutrer
&emsp;  - Taylor Lyons
&emsp;  - Samantha Perez
  </b>
<br clear="left"/>


UTSA Data Analytics Bootcamp Project
  
 


  
