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
  
From data.world, Tim Renner posted data files pertaining to Bigfoot Sightings that he gathered from The Bigfoot Field Researchers Organization (BFRO), an organization    dedicated to investigating the bigfoot/sasquatch mystery. 

The dataset was downloaded into a CSV.  It was last refreshed on 6/2/21 and covers a timeframe going back to 1921 with nearly 5,000 rows. This dataset included exactly what we needed and then some to get a dataset for the database in the short term.
    
We kept the following columns from the dataset: Number (ID), Date, County, State, Latitude, Longitue, Observed
  
Other data points that were provided but not specifically requested at this time were: season and weather data such as precipitation, pressure, UV index, dew point, temperature, visibility, cloud coverage, humidity, and wind speed.

We read the csv file into Jupyter Notebook and cleaned the following columns:
  
   - [x] Inserted zeroes in the place of NaN values for the date, latitude, and longitude columns
   - [x] Transformed the date column from a string to date
   - [x] Filtered out rows where dates were entered in the latitude column so that we could transform it into a float
   - [x] Updated the state's full name to abbreviation to match the UFO dataset
            - To accomplish this task, we downloaded a CSV of state names and abbreviations; read the CSV file into Jupyter Notebook and merged in the abbreviation using the state name. Then we dropped the state's full name and kept only the abbreviation.
  
 Data sources: https://data.world/timothyrenner/bfro-sightings-data , https://worldpopulationreview.com/states/state-abbreviations

## UFO Sightings (Kaggle)
  
From Kaggle, UFO sightings were gathered from the National UFO Reporting Center (NUFORC) and we were able to download it to a CSV. The dataset was last refreshed in 2014 and covers a timeframe going back to the 1940's with 88,000 rows. 
  
We kept the following columns from the dataset: DateTime, City, State, Country, Latitude, Longitude, Comments
 
Other data points that were provided but not specifically requested at this time include: UFO shape, duration in seconds and in hours/minutes, and date posted.

We read the csv file into Jupyter Notebook and cleaned the following columns:
  
   - [x] Reformatted the datetime column to include only the date and transformed it from a string to a date
   - [x] Reformatted the state abbreviation column to capital letters to match the bigfoot data
   - [x] Reduced the dataset to sightings in the United States only per our client's request

Data source: https://www.kaggle.com/NUFORC/ufo-sightings
  
# The Database

  At our client's request, our data was loaded into a postgres database. 
  
  1. We used http://www.quickdatabasediagrams.com/ to create the ERD which created our schema.sql.
  2. We created the database in PGAdmin and imported the schema.sql to create our two tables.
  2. Then, we added code onto our Jupyter Notebook to connect to our postgres database and used the pandas "to-sql" function to load each dataframe into postgres as tables.
  
  ## ERD
  
![image](https://user-images.githubusercontent.com/82002107/134277955-915d619f-730d-44ab-a60d-cf23305b4a2b.png)
  
# Our Team
  
<img src="https://user-images.githubusercontent.com/82002107/133907178-73250178-1465-426a-8d5f-9ccf9c62f0f1.png" align="left" width="200px" padding="10px">Our talented group of developers at <b>Cryptic Developers INC.</b> </br></br>
  <b>
&emsp;  - Celenia Chapa
&emsp;  - Tyler Cutrer
&emsp;  - Taylor Lyons
&emsp;  - Samantha Perez
  </b>
<br clear="left"/>


UTSA Data Analytics Bootcamp Project
  
 


  
