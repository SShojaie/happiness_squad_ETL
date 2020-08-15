-- Creating tables

CREATE TABLE ciw_summary (
index INT PRIMARY KEY,
ciw NUMERIC,
comm_vitality NUMERIC,
democratic_engagement NUMERIC,
education NUMERIC,
environment NUMERIC,
healthy_pop NUMERIC,
leisure NUMERIC,
living_standards NUMERIC,
time_use NUMERIC,
gpd_percapita_change NUMERIC,
ciw_change NUMERIC
);

CREATE TABLE education (
"Year" INT PRIMARY KEY,
education NUMERIC,
childcare NUMERIC,
talkbased_activity NUMERIC,
expenditure_perschool NUMERIC,
educators_perschool NUMERIC,
undergraduate_tuition NUMERIC,
highschool_edu NUMERIC,
university_edu NUMERIC,
edu_activities NUMERIC
);

CREATE TABLE healthy_pop (
"Year" INT PRIMARY KEY,
healthy_pop NUMERIC,
expectancy NUMERIC,
overall_health NUMERIC,
mental_health NUMERIC,
health_limitations NUMERIC,
teen_smokers NUMERIC,
diabetes NUMERIC,
influenza_immunization NUMERIC,
family_doctor NUMERIC
);

CREATE TABLE comm_vitality (
"Year" INT PRIMARY KEY,
comm_vitality NUMERIC,
community NUMERIC,
friends NUMERIC,
safety NUMERIC,
crime_index NUMERIC,
discrimination NUMERIC,
trust NUMERIC,
volunteering_organization NUMERIC,
volunteering_personal NUMERIC
);

CREATE TABLE democratic_engagement (
"Year" INT PRIMARY KEY,
democratic_engagement NUMERIC,
voter_turnout NUMERIC,
registered_voters_ratio NUMERIC,
older_younger_turnout_gap NUMERIC,
women_in_parliament NUMERIC,
parliament_for_communication NUMERIC,
political_volunteers NUMERIC,
democratic_system_satisfaction NUMERIC,
confidence_in_parliament NUMERIC
);

CREATE TABLE living_standards (
"Year" INT PRIMARY KEY,
living_standards NUMERIC,
median_income NUMERIC,
poverty NUMERIC,
gini NUMERIC,
food_insecurity NUMERIC,
housing_affordability NUMERIC,
employment NUMERIC,
longterm_employment NUMERIC,
employment_quality NUMERIC
);

CREATE TABLE time_use (
"Year" INT PRIMARY KEY,
time_use NUMERIC,
plus50_workhours NUMERIC,
less30_workhours NUMERIC,
regular_workhours NUMERIC,
flexible_workhours NUMERIC,
work_commute_time NUMERIC,
plus7_sleephours NUMERIC,
time_with_friends NUMERIC,
time_with_pressure NUMERIC
);

CREATE TABLE environment (
"Year" INT PRIMARY KEY,
environment NUMERIC,
eco_footprint NUMERIC,
ghg_emissions NUMERIC,
groundlevel_ozone NUMERIC,
energy_production NUMERIC,
metal_reserves NUMERIC,
residential_energy_use NUMERIC,
farm_land NUMERIC,
annual_water_yield NUMERIC
);

CREATE TABLE leisure (
"Year" INT PRIMARY KEY,
leisure NUMERIC,
leisure_time NUMERIC,
culture_time NUMERIC,
physical_activity_freq NUMERIC,
performance_arts_time NUMERIC,
culture_volunteer_time NUMERIC,
national_park_visit NUMERIC,
vacation_days NUMERIC,
leisure_culture_expenditure NUMERIC
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


