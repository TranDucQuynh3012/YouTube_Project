select * from CovidDeaths
where continent is not null
order by 3,4

select * from CovidVacinations
where continent is not null
order by 3,4

-- Select the data to start with
select location, date, population, total_cases, new_cases, total_deaths
from CovidDeaths
where continent is not null
order by location, date

-- Total case vs Total population (Percent Population Infected)
select location, date, total_cases, population, 
	   (total_cases/population)*100 as PercentPopulationInfected
from CovidDeaths
where continent is not null
order by location, date

-- Total death vs Total case (Death Percentage)
select location, date, total_cases, total_deaths, 
	   (total_deaths/total_cases)*100 as DeathPercentage
from CovidDeaths
where continent is not null
order by location, date

-- Population Infected Percentage vs DeathPercentage
with infected_rate as
(select location, date, total_cases, population, 
	   (total_cases/population)*100 as PercentPopulationInfected
from CovidDeaths
where continent is not null),
death_rate as
(select location, date, total_cases, total_deaths, 
	   (total_deaths/total_cases)*100 as DeathPercentage
from CovidDeaths
where continent is not null)
select infected_rate.location, infected_rate.date, 
	   infected_rate.PercentPopulationInfected,
	   death_rate.DeathPercentage
from infected_rate
join death_rate on infected_rate.location = death_rate.location
                   and infected_rate.date = death_rate.date
order by infected_rate.location, infected_rate.date

-- Countries with Highest Infection Rate compared to Population
select location, population, 
       max(total_cases) as HighestInfectionCount, 
	   max((total_cases/population)*100) as HighestInfectionRate
from CovidDeaths
where continent is not null
group by location, population
order by max((total_cases/population)*100) desc

-- Countries with Highest Death Count compared to Population
select location, population, 
       max(cast(total_deaths as int)) as HighestDeathCount
from CovidDeaths
where continent is not null
group by location, population
order by max(cast(total_deaths as int)) desc


-- Countries with Highest Death Rate compared to Total cases
select location, max(total_cases) as HighestInfectionCount, 
       max(total_deaths) as HighesDeathCount, 
	   max(total_deaths)/max(total_cases)*100 as HighestDeathRate
from CovidDeaths
where continent is not null
group by location
order by max(total_deaths)/max(total_cases)*100  desc

-- Showing contintents with the highest death count per population
select continent, max(cast(total_deaths as int)) as HighestDeathCount
from CovidDeaths
where continent is not null
group by continent
order by max(cast(total_deaths as int)) desc

-- Looking at Population vs Vaccinations

select dea.continent, dea.location, dea.population, max(vac.people_vaccinated) as Total_people_vaccinated,
       max(vac.people_vaccinated)/dea.population*100 as VaccinatedPercentage
from CovidDeaths as dea
join CovidVaccinations as vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
group by dea.continent, dea.location, dea.population
order by dea.continent, dea.location

-- Percentage of people fully vaccinated in the population
select dea.continent, dea.location, dea.population, max(vac.people_fully_vaccinated) as People_fully_vaccinated,
       max(vac.people_fully_vaccinated)/dea.population*100 as FullyVaccinatedPercentage
from CovidDeaths as dea
join CovidVaccinations as vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
group by dea.continent, dea.location, dea.population
order by max(vac.people_fully_vaccinated)/dea.population*100 desc


