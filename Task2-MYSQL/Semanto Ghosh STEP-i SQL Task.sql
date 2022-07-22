create database stepi;
use stepi;

create table  matches(
id int not null,
city varchar(30),
date date,
player_of_match varchar(30),
venue varchar(100),
neutral_venue int,
team1 varchar(100),
team2 varchar(100),
toss_winner varchar(30),	
toss_decision varchar(30),	
winner varchar(100),
result	varchar(30),
result_margin int,
eliminator	varchar(30),
method	varchar(30),
umpire1	varchar(30),
umpire2 varchar(30)
);

select * from matches;

create table deliveries(
id int not null,
inning int,
over_number int,
ball int,
batsman varchar(30),
non_striker	varchar(30),
bowler varchar(30),
batsman_runs int,	
extra_runs int,
total_runs int,
is_wicket int,
dismissal_kind varchar(30),
player_dismissed varchar(30),
fielder varchar(30),
extras_type varchar(30),
batting_team varchar(100),
bowling_team varchar(100)
);

select * from deliveries;

select * from deliveries limit 20;
select * from matches limit 20;
select * from matches where date='2013-05-02';
select * from matches where result_margin>100;

select * from matches where result='tie' order by date desc;

select  city,count(id) as no_of_matches from matches 
group by city;