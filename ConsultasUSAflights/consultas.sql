select count(flightID) from Flights;

select avg(ArrTime),Origin
from Flights
group by Origin;

select Origin, avg(ArrDelay), avg(DepDelay)
from Flights
group by Origin;

select Origin,colYear,colMonth, avg(ArrDelay)
from Flights
group by Origin,colYear,colMonth
order by Origin,colYear,colMonth asc;

select City,colYear,colMonth, avg(ArrDelay)
from Flights
left join USAirports on Origin=IATA
group by Origin,colYear,colMonth
order by City,colYear,colMonth asc;

select UniqueCarrier,colYear,colMonth, avg(ArrDelay), sum(Cancelled)
from Flights
group by UniqueCarrier,colYear,colMonth
order by sum(Cancelled) desc;

select TailNum, sum(Distance) as TotalDistance
from Flights
where TailNum <>""
group by TailNum
order by TotalDistance desc;












