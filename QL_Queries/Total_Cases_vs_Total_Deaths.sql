/*
TOTAL CASES VS TOTAL DEATHS
Analyzes the death rate by location, showing the percentage likelihood of dying from COVID-19 if contracted, with a focus on specific locations.
*/

Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
Where location like '%states%'
and continent is not null 
order by 1,2
