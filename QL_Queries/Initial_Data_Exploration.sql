/*
INITIAL DATA EXPLORATION
Retrieves all records from CovidDeaths, excluding those without a specified continent, sorted by location and date.
This initial exploration helps understand the data's structure and distribution across different locations and dates.
*/

Select *
From PortfolioProject..CovidDeaths
Where continent is not null 
order by 3,4

-- DATA SELECTION FOR ANALYSIS
-- Selects foundational data for analysis, including location, date, total cases, new cases, total deaths, and population, focusing on entries with specified continents.
Select Location, date, total_cases, new_cases, total_deaths, population
From PortfolioProject..CovidDeaths
Where continent is not null 
order by 1,2
