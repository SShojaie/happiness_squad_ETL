# Happiness Squad does ETL
#### An UoT Data Analytic Bootcamp ETL project
<img src="/03 Images/HappinessBanner.png" width="1080">

## Team members: 
- Eben Haezer 
- Momotaz Mahin Khan
- Sheri Shojaie
- Vivi Santosa 

## Project description / online:
The goal of this ETL (Extract - Transform - Load) project is to extract information, transform, and then load them. We use data related to our project 1 “The Pursuit of Happiness” from various disparate sources. Unlike the global scope of our first project, the focus of this ETL exercise will be on Canadian data. Once acquired, source information will undergo transformation to obtain data that is clean, disambiguous, and ready-to-consume. Transformed datasets will be loaded into a final production database to be used for analysis or display. 
<br>
## Data sources:
- API: StatCan Life Satisfaction <br>
  https://www.statcan.gc.ca/eng/developers/wds/user-guide<br>
- API: World Bank, GDP by Country <br>
  https://datahelpdesk.worldbank.org/knowledgebase/articles/898590-country-api-queries <br>
- Web scraping: StatCan Life Satisfaction<br>
  https://www150.statcan.gc.ca/n1/pub/11-626-x/2015046/t/tbl01-eng.htm<br>
- Web scraping: UWaterloo Canadian Index of Wellbeing<br>
  https://uwaterloo.ca/canadian-index-wellbeing/reports/2016-canadian-index-wellbeing-national-report/trends-and-statistical-highlights<br>
  
<img align="center" src="/03 Images/etl_project.PNG" width="540"> <br>
## EXTRACT: <br>
### StatCan Life Satisfaction – API
1. The first step is to look for the desired data on the StatCan site. We pasted the URL  'https://www150.statcan.gc.ca/t1/wds/rest/getAllCubesListLite' to chrome and did a search function.<br>
2. The desired table was identified as "Average satisfaction with life and with selected domains of life by age group and sex". The Product ID forthis table was used to request the information from the StatCan API. <br>
3. Using get and product ID, a url was returned that allowed for download of the data.
4.A request for download was created to download all data as a zip file. Python was used to unzip and extract the data (csv format), and pandas library was used to read the data. <br>
 
### Global News, web scrape
1. Create path for chrome driver. Using Browser from the splinter library, visited the Global new web page including the tag for “happiness”. Thiswill return news articles that are related to happiness. <br>
2. Scrape page into beautifulsoup and using find_all and specific tag, get desired data from news articles: title, an excerpt, and the publication date. <br>
3. A for loop was used to retrieve the top 5 most relevant articles, stored in a dictionary. <br>

### UWaterloo Canadian Wellbeing Index <br>
1. Create path for chrome driver. Using Browser from the splinter library, visited the University of Waterloo website for the Canadian Wellbeing Index study reports. <br>
2. The time library was used to delay execution. <br> 
3. From the main page (‘url1’), data from two tables were scraped and pandas was used to read the tables. <br> 
4. Data from eight additional “feature tables” were also scraped. Feature tables were stored in a similar format on the UWaterloo webpage, therefore to streamline scrape (and some of the data transformation steps), a function was created called “table_maker_function”. <br>
5. This function was used to scrape the table data from each of the feature table web pages and used pandas to read the tables. See the transformation steps taken in the below section.<br>

## TRANSFORM <br>

### StatCan Life Satisfaction (API) transformation steps included: <br>
  - Select only columns of interest <br>
  - Drop na values <br>
  - Rename columns to match desired schemata in database<br>
  - Default index column used for index and primary key<br>
### Global News (web scrape) transformation steps included:<br>
  - Only desired fields were scraped during the extraction step. Otherwise data was clean and placed into a dataframe prior to loading into database <br>
  - Default index column used for index and primary key<br>
### UWaterloo Canadian Wellbeing Index (web scrape) transformation steps included: <br>
  - String data was split to retrieve desired data from table for certain fields exracted <br>
  - Data type was updated to integer or float <br>
  - Index was set to year (common to all tables from this data source)<br>
  - The two main tables were joined on ‘year’<br>
  - Unwanted fields were dropped <br>
  - Column names were updated. Especially in the eight feature tables, very long column names were updated to short and intuitive column names to match table schemata in database<br>

## LOAD <br>
After the extract and transformation phase, we load the data to PostgreSQL.
The image below shows the expected result. 

<img src="/03 Images/Screenshot (156).png" width="720"> <br>

We also create a small flask file to take the file from PostgresSQL and load it to an HTML file. Below is the screenshoot of the HTML display.

<img src="/03 Images/Screenshot (158).png" width="720"> <br>




