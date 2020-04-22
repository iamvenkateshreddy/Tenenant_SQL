--Q1 
select top 1 p.profile_id,concat(p.first_name,' ',p.last_name) as full_name,p.phone,MAX(DATEDIFF(dd,t.move_in_date,t.move_out_date)) as Days
from profiles as p
Inner Join Tenancy_histories as t 
on 
p.profile_id = t.profile_id 
group by p.profile_id,p.first_name,p.last_name,p.phone
order by Days Desc

--Q2 
select p.profile_id,concat(p.first_name,' ',p.last_name) as full_name,p.email,p.phone,p.marital_status
from 
Profiles as p
INNER JOIN
Tenancy_histories t
on 
p.profile_id = t.profile_id
where 
t.rent in (select rent from Tenancy_histories where rent>9000) 
and
p.marital_status='Y'

--Q3
select p.profile_id,concat(p.first_name,' ',p.last_name)as full_name,p.phone,p.email,p.city,
t.house_id,t.move_in_date,t.move_out_date,t.rent,count(r.referrer_id) as num_referrals,
e.latest_employer,e.Occupational_category
from
Profiles p
INNER JOIN
Tenancy_histories t on t.profile_id=p.profile_id
INNER JOIN
Employment_details e on p.profile_id=e.profile_id
INNER JOIN
Referrals r on p.profile_id=r.referrer_id
where p.city in (' Bangalore','Pune')
and t.move_in_date between '2015-01-01' and '2016-01-31'
group by  p.profile_id,p.first_name,p.last_name,p.phone,p.email,p.city,
t.house_id,t.move_in_date,t.move_out_date,t.rent,e.latest_employer,e.Occupational_category
order by t.rent DESC


--Q4
select concat(p.first_name,' ',p.last_name)as full_name,p.email,p.phone,p.referral_code,
count(r.referrer_id) as num_referrals ,sum(r.referrer_bonus_amount) as Bonus_Amount
from 
Profiles p
INNER JOIN
Referrals r
on p.profile_id=r.referrer_id
where r.referral_valid=1
group by p.first_name,p.last_name,p.email,p.phone,p.referral_code
having count(r.referrer_id) >1


--Q5
select p.city,sum(t.rent) as Citywise_Rent,(select sum(rent) from Tenancy_histories) as Total_Rent   
from 
Profiles p 
INNER JOIN 
Tenancy_histories t
on
p.profile_id=t.profile_id
group by city


--Q6
create view
vw_tenant as
select t.profile_id,t.rent,t.move_in_date,h.house_type,h.Beds_vacant,
a.description,a.city
from Tenancy_histories t
INNER JOIN
Houses h on t.house_id=h.house_id
INNER JOIN 
Addresses a on t.house_id = a.house_id
where
t.move_in_date >= '2015-04-30' and h.Beds_vacant > 0

--Q7 (work again)
select referrer_id,valid_till ,DATEADD(mm,1,valid_till) as new_valid_till
from Referrals
where referrer_id in 
(select referrer_id from Referrals  group by referrer_id having count(referrer_id)>2)

--Q8
select p.profile_id,concat(p.first_name,' ',p.last_name) as full_name,p.phone,t.rent,
IIF(t.rent > 10000,'A',IIF(t.rent< 10000 and t.rent>= 7500,'B','C')) as Customer_Segment
from
Profiles p
INNER JOIN
Tenancy_histories t
on p.profile_id = t.profile_id

--Q9
select concat(p.first_name,' ',p.last_name) as full_name,p.phone,p.city,t.house_id,t.Bed_type,t.rent
from 
Profiles p 
INNER JOIN
Tenancy_histories t 
on p.profile_id = t.profile_id
where p.profile_id not in(select referrer_id from Referrals)


--Q10
select * from Houses
where Beds_vacant=0
