import requests
import pprint

#1 The first step is to look for relevant table. In this case it is actually faster to paste the URL to chrome and do search function.
#URL is 'https://www150.statcan.gc.ca/t1/wds/rest/getAllCubesListLite'
#2. We found that the table we want is "Average satisfaction with life and with selected domains of life by age group and sex"
#3. What's important is the productId, which is be used for downloading the CSV.
#4. Product id is 13100106
#5. The next thing to do is to call the download method.
#https://www150.statcan.gc.ca/t1/wds/rest/getFullTableDownloadCSV/{product_id}/en

#Apply the GetFullTable Method
product_id = 13100106
download_path = f"https://www150.statcan.gc.ca/t1/wds/rest/getFullTableDownloadCSV/{product_id}/en"
response = requests.get(download_path)
table = response.json()
print(table)

#get download path
download_url = table["object"]
print(download_url)

#Capture the file name with regex
import re

split= download_url.split("/csv/")
file_name = split[1]

# Create request to download...
r = requests.get(download_url, allow_redirects=True)

open(file_name, 'wb').write(r.content)

#because the data is in zip format, use python to unzip it
from zipfile import ZipFile

with ZipFile(file_name, 'r') as zipObj:
   # Extract all the contents of zip file in current directory
   zipObj.extractall()

# clean the data, get the columns we want
import pandas as pd
df = pd.read_csv("13100106.csv")

#Extract the columns we want

df = df[["REF_DATE","GEO","Age group","Sex","Satisfaction with life and with selected domains of life","VALUE"]]
df.drop_duplicates(keep = "first", inplace = True)
df.dropna(inplace= True)

#rename columns properly
df = df.rename(columns = {'Satisfaction with life and with selected domains of life':'LIFE_DOMAIN','Age group':'AGE_GROUP'})


#finally, extract the csv
df.to_csv('Output/statcan_csv.csv')