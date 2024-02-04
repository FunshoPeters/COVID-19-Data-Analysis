/*
HIGHEST DEATH COUNT PER POPULATION
Determines locations with the highest number of COVID-19 deaths relative to their population, highlighting areas with the most severe outcomes.
*/

Select Location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Where continent is not null 
Group by Location
order by TotalDeathCount desc
