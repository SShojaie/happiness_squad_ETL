-- Creating tables

CREATE TABLE gdp_change (
year VARCHAR PRIMARY KEY,
gdp_percapita INT,
ciw INT
);

CREATE TABLE education (
year VARCHAR PRIMARY KEY,
education INT,
childcare INT,
talkbased_activity INT,
expenditure_perschool INT,
educators_perschool INT,
undergraduate_tuition INT,
highschool_edu INT,
university_edu INT,
edu_activities INT
);

CREATE TABLE healthy_pop (
year VARCHAR PRIMARY KEY,
healthy_pop INT,
expectancy INT,
overall_health INT,
mental_health INT,
health_limitations INT,
teen_smokers INT,
diabetes INT,
influenza_immunization INT,
family_doctor INT
);

CREATE TABLE comm_vitality (
year VARCHAR PRIMARY KEY,
comm_vitality INT,
community INT,
friends INT,
safety INT,
crime_index INT,
discrimination INT,
trust INT,
volunteering_organization INT,
volunteering_personal INT
);

CREATE TABLE democratic_engagement (
year VARCHAR PRIMARY KEY,
democratic_engagement INT,
voter_turnout INT,
registered_voters_ratio INT,
older_younger_turnout_gap INT,
women_in_parliament INT,
parliament_for_communication INT,
political_volunteers INT,
democratic_system_satisfaction INT,
confidence_in_parliament INT
);


CREATE TABLE living_standards (
year VARCHAR PRIMARY KEY,
living_standards INT,
median_income INT,
poverty INT,
gini INT,
food_insecurity INT,
housing_affordability INT,
employment INT,
longterm_employment INT,
employment_quality INT
);

CREATE TABLE time_use (
year VARCHAR PRIMARY KEY,
time_use INT,
plus50_workhours INT,
less30_workhours INT,
regular_workhours INT,
flexible_workhours INT,
work_commute_time INT,
plus7_sleephours INT,
time_with_friends INT,
time_with_pressure INT
);


CREATE TABLE environment (
year VARCHAR PRIMARY KEY,
environment INT,
eco_footprint INT,
ghg_emissions INT,
groundlevel_ozone INT,
energy_production INT,
metal_reserves INT,
residential_energy_use INT,
farm_land INT,
annual_water_yield INT
);

CREATE TABLE leisure (
year VARCHAR PRIMARY KEY,
leisure INT,
leisure_time INT,
culture_time INT,
physical_activity_freq INT,
performance_arts_time INT,
culture_volunteer_time INT,
national_park_visit INT,
vacation_days INT,
leisure_culture_expenditure INT
);


CREATE TABLE happiness_news (
title VARCHAR,
content VARCHAR,
year VARCHAR
);

CREATE TABLE life_domain (
index INT PRIMARY KEY,
age_group VARCHAR,
sex VARCHAR,
life_domain VARCHAR,
value INT
);


