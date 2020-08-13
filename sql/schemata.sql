-- Creating tables
CREATE TABLE ciw_domain (
year VARCHAR PRIMARY KEY,
ciw INT,
comm_vitality INT,
engagement INT,
edu INT,
env INT,
healthy_pop INT,
leisure INT,
living_standards INT,
time_use INT
);

CREATE TABLE gdp_change (
year VARCHAR PRIMARY KEY,
gdp_percapita INT,
ciw INT
);

CREATE TABLE happiness_news (
title VARCHAR,
content VARCHAR,
year VARCHAR
);

CREATE TABLE life_domain (
ref_date INT,
geo VARCHAR,
age_group VARCHAR,
sex VARCHAR,
life_domain VARCHAR,
value INT
);