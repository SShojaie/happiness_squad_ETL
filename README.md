# happiness_squad_ETL
ETL project<br> 

## Project description / online:
The goal of this project is to extract data related to our project 1 “The Pursuit of Happiness” from various disparate sources. Unlike the global scope of our first project, the focus of this ETL exercise will be on Canadian data. Once acquired, source information will undergo transformation to obtain data that is clean, disambiguous, and ready-to-consume. Transformed datasets will be loaded into afinal production database. 
<br>
## Data sources:
- API: StatCan Life Satisfactionhttps://www.statcan.gc.ca/eng/developers/wds/user-guide
- API: World Bank, GDP by Country https://datahelpdesk.worldbank.org/knowledgebase/articles/898590-country-api-queriesWeb scraping: 
- StatCan Life Satisfactionhttps://www150.statcan.gc.ca/n1/pub/11-626-x/2015046/t/tbl01-eng.htmWeb scraping: 
- UWaterloo Canadian Index of Wellbeinghttps://uwaterloo.ca/canadian-index-wellbeing/reports/2016-canadian-index-wellbeing-national-report/trends-and-statistical-highlights
<br> 
## Final production database: 
Relational database, postgreSQLPostgreSQL was selected as our production database for the following reasons: 
(1) SQL prioritises data integrity and outlining the relationships between the different variables obtained. As this is a continuation of our previous project, we have familiarity with the different data sources and the transformation steps thatwill be taken in order to prepare the data for loading into defined table schemata
(2) Data sources are static and we do not expect the format of the data to change over time
(3) SQL will allow us to map the data relationships between the different sources to obtain optimal table schemata for future data refreshes, analysis and consumption 
<br> 
## Draft of tasks<br> 
### Obtain data: API [Eben, Sheri]<br> 
Identify product ID to navigate to the desired data table via API (StatCan & World Bank) Obtain data by calling API (via Python in Jupyter notebook), referencing the correct product ID (ie table) in json format. oNote, StatCan API provides a link to obtain desired data for download in csv format <br> 

### Web scrape [Vivi, Momotaz]<br> 
Navigate to pages with desired tables, this includes for example on the UWaterloo Wellbeing Index web page: (1) Healthy Populations, (2)Leisure & Culture, and (3) Living Standards. Scrape all information for all years of data provided: 1994-2014Scrape information from select tables (via Python, Beautifulsoup library) and continue into transformation steps <br> 

### Transform data [Sheri, Vivi] <br> 
Using Pandas library make all necessary transformations, includingChange format to dataframe Collect desired columns, and rename into desired table schemata (in line with table in our database); set index Remove duplicates and NAN values as necessary Clean up values in select columns where needed (eg removing spaces, or additional unwanted characters)<br> 

### Load data <br> 
#### PostgreSQL<br>
       -  Create entity relationship diagram to organize table logic and relationships [Eben, Sheri]
       -  In PostgreSQL create table schemata for all required tables. 
       -  Set necessary primary and foreign keys [Momotaz]
<br> 
#### Python [Momotaz / with support from group]<br>
       -  Create database connection (connection string and engine) 
       -  Confirm tables in database 
       -         -  Load data into database via specified table names


