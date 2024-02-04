/*
TOTAL CASES VS POPULATION
Examines the extent of COVID-19 spread by calculating what percentage of a location's population has been infected.
*/

Select Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
order by 1,2
