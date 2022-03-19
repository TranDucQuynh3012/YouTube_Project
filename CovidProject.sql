DECLARE @BigNumber BIGINT
SET @BigNumber = 1234567891234

SELECT REPLACE(CONVERT(VARCHAR,CONVERT(MONEY,@BigNumber),1), '.00','')

select * from CovidDeaths
order by 3,4

select * from CovidVacinations
order by 3,4

select location, date, total_cases, total_deaths, (total_deaths/ total_cases)* 100 as 'Death percentage'
from CovidDeaths
where location like '%states%'
and continent is not null
order by 1,2

select location,population, max(total_cases) as max_case, max(total_cases/ population)*100 as 'Infection rate'
from CovidDeaths
where continent is not null
group by location, population
order by [Infection rate] desc

select location, cast(max(total_deaths) as int) as TotalDeathCount
from CovidDeaths
where continent is not null
group by location
order by TotalDeathCount desc

select continent, cast(max(total_deaths) as int) as TotalDeathCount
from CovidDeaths
where continent is not null
group by continent
order by TotalDeathCount desc

select  date, total_cases, total_deaths, (total_deaths/ total_cases)* 100 as 'Death percentage'
from CovidDeaths
where continent is not null
order by 1,2

select sum(new_cases) as total_cases, sum(cast(new_deaths as int)) as total_deaths,  
sum(cast(new_deaths as int))/ sum(new_cases) * 100 as DeathPercentage
from CovidDeaths
where continent is not null
order by 1,2

with PopvsVac as
(
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
sum(convert(int,vac.new_vaccinations)) over (partition by dea.location) as RollingPeopleVaccinated
from CovidDeaths as dea
join CovidVacinations as vac
on dea.location = vac.location and dea.date = vac.date
where dea.continent is not null 
)
select * , (RollingPeopleVaccinated/population) *100
from PopvsVac

create view PercentPopulationVaccinated as
(select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
sum(convert(int,vac.new_vaccinations)) over (partition by dea.location) as RollingPeopleVaccinated
from CovidDeaths as dea
join CovidVacinations as vac
on dea.location = vac.location and dea.date = vac.date
where dea.continent is not null)

select *
from PercentPopulationVaccinated

