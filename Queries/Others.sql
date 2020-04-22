--delete from Employment_details
select * from Profiles
select * from Tenancy_histories
select * from Addresses
select * from Houses
select * from Referrals
select * from Employment_details

--DBCC CHECKIDENT ('Employment_details', RESEED, 0) 