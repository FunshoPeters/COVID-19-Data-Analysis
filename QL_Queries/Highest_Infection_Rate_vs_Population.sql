/*
HIGHEST INFECTION RATE VS POPULATION
Identifies locations with the highest rate of COVID-19 infection relative to their population, showcasing areas most impacted by the virus.
*/

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
Group by Location, Population
order by PercentPopulationInfected desc
