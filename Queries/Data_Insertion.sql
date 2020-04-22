--Inserting Data into Houses Table
INSERT into Houses
(house_type,bhk_details,bed_count,furnishing_type,Beds_vacant)
values
('Apartment','3 BHK','3','unfurnished','1'),
('Apartment','3 BHK','6','fully-furnished','4'),
('Apartment','2 BHK','2','fully-furnished','0'),
('Independent','4 BHK','4','fully-furnished','2'),
('Apartment','3 BHK','3','semifurnished','1'),
('Apartment','3 BHK','3','semifurnished','0'),
('Apartment','2 BHK','4','fully-furnished','1'),
('Independent','1 BHK','2','unfurnished','0'),
('Independent','3 BHK','3','fully-furnished','1'),
('Apartment','1 BHK','1','unfurnished','0'),
('Independent','1 BHK','2','unfurnished','1'),
('Independent','2 BHK','4','unfurnished','2'),
('Apartment','3 BHK','3','fully-furnished','0'),
('Independent','1 BHK','2','unfurnished','1'),
('Apartment','3 BHK','3','fully-furnished','0'),
('Independent','3 BHK','3','fully-furnished','1'),
('Independent','2 BHK','2','fully-furnished','1'),
('Independent','3 BHK','3','fully-furnished','1'),
('Independent','1 BHK','2','unfurnished','2')


---Inserting data into Profiles Table
Insert into Profiles
(first_name,last_name,email,phone,city,created_at,gender,referral_code,marital_status)
values
('anusha','pariti','anusha.pariti@gmail.com','8105987404','	Bangalore','2015-04-16','F','7L5FZW','Y'),
('Ashish','Singh','ashish.singh@gmail.com','9876890463','Bangalore','2015-05-23','M','KF34MF','Y'),
 ('Bhaskar','maheshwari','bhaskar.mah@gmail.com','9801834992','Bangalore','2015-05-01','M','5TYSHGF','N'),
 ('Garima','yadav','garima0191@gmail.com','81059237004','Bangalore','2015-10-20','F','5G5FQW','N'),
 ('Tanvi','mann','tanvi.mann1907@gmail.com','9178352769','Bangalore','2015-02-16','F','JSH48B','N'),
 ('Harish','sahai','harish294all@gmail.com','9876548763','Bangalore','2015-11-11','M','MKGI2W','Y'),
 ('Kamal','gera','kamal0094@gmail.com','8105987404','Bangalore','2015-10-31','M','MK34ER','N'),
 ('Tushar','kapoor','tushar.kapoor21@gmail.com','8926537154','Pune','2015-12-12','M','KLF12E','N'),
 ('Shivshankar','das','sankar.shiva730@gmail.com','9801834992','Pune','2015-10-06','M','3RE5TY','Y'),
 ('Aditi','jain','aditi.jain@sproxil.com','9873123456','Pune','2015-06-11','F','5TPL4E','N'),
 ('Deepa','sudhakar','sudhakar.deepa@gmail.com','7896785432','Pune','2015-09-15','F','4RTYUIO','Y'),
 ('Umang','parejiya','uparejiya@gmail.com','7896543674','Pune','2015-07-18','M','6TY4WE','N'),
 ('Mitali','gupta','mitali.gupta80@gmail.com','8796751238','Pune','2015-03-24','F','5RTYU3','Y'),
 ('Manisha','Yadav','maniyadav88@gmail.com','9867845182','Delhi','2015-01-27','F','LKGHY6','N'),
 ('Shivani','godha','shivani_go@nid.edu','9878673428','Delhi','2015-02-19','F','8NM4R','Y'),
 ('Rajan','pandey','raajanpandey@gmail.com','8987647811','delhi','2015-09-04','M','5TYUIO','N'),
 ('Roosena','manuel','roseenasimimanuel@gmail.com','9875623345','Delhi','2015-04-13','F','6TYHU','Y'),
 ('Prabhjot','gill','prabhjotgill09@gmail.com','9800786688','Delhi','2015-12-30','M','GHJK34','N'),
 ('Ankita','sharma','ankita.anku96@gmail.com','9988789656','Delhi','2015-08-17','F','TH67TY','Y'),
 ('Karan','Singh','karan.singh@gmail.com','8976665768','Delhi','2015-09-15','M','LRF34F','N');

 --Adding column to Tenancy_histories Table
 Alter Table 
 Tenancy_histories
 add  move_out_reason varchar(255)

 ---Insrting data into Tenance History
Insert into Tenancy_histories
(move_in_date,move_out_date,rent,Bed_type,move_out_reason,house_id,profile_id)
Values
('2015-02-12','2016-04-30','7500','bed','MOVE_OUT','5','1'),
('2015-06-05',NULL,'11000','room','','2','2'),
('2015-10-28','2016-11-28','12000','room','RENT_CHANGE','4','3'),
('2015-04-26',NULL,'8000','bed','','1','4'),
('2015-05-15','2015-12-27','9000','bed','MOVE_OUT','3','5'),
('2015-12-25',NULL,'10200','room','','8','6'),
('2015-11-20',NULL,'6500','bed','','6','7'),
('2015-11-10','2016-12-31','7200','bed','MOVE_OUT','7','8'),
('2015-10-15',NULL,'7500','bed','','9','9'),
('2015-06-20',NULL,'7500','bed','','10','10'),
('2015-08-29','2016-06-14','8000','bed','INTERNAL_TRANSFER','19','11'),
('2015-02-24',NULL,'11000','room','','15','12'),
('2015-02-25',NULL,'12000','room','','12','13'),
('2016-01-07','2016-12-30','13500','room','MOVE_OUT','18','14'),
('2015-04-07',NULL,'6500','bed','','13','15'),
('2015-04-23',NULL,'6500','bed','','17','16'),
('2015-02-10',NULL,'10500','room','','14','17'),
('2015-10-16','2016-09-04','8000','bed','MOVE_OUT','16','18'),
('2015-09-26',NULL,'7500','bed','','20','19'),
('2015-09-30',NULL,'9500','bed','','11','20')

--Inserting data into Addresses
Insert into Addresses
(name,description,city,pincode,house_id)
values
('Zaanz appartment','Sterling BrookSide, Opp. Kundalahalli Colony, ITPL Main Rd','bangalore','560037','1'),
('stag saptgiri','No.44,Ground floor,20th cross,Sector 2 HSR Layout,Bangalore.','bangalore','560102','2'),
('sri sai enclave','No.44,First floor,20th cross,Sector 2 HSR Layout.','bangalore','560102','3'),
('orchids building','D-208, Balaji Pristine Whitefield Main Road','bangalore','560066','4'),
('Fella homes','#11,Annaiya Reddy Rd, Narayana Reddy Layout,Phase 2, Electronic City','bangalore','560100','5'),
('Juniper appartments','# 595/1, 1st Floor,1st A main, Domlur Layout','bangalore','560038','6'),
('UDB Building','Flat No: T1 Deccan Field Appartment Kunadanhalli main road','bangalore','560037','7'),
('Apoorva society','Flat No-202, Apoorva Apartment No-296 Vyalikaval House Building Cooperative Society Ltd Nagavara','Delhi','561202','8'),
('Stag saptgiri','Flat No-202, stag saptgiri No-26 phase2 Cooperative Society','Delhi','560045','9'),
('VaK Residency','302,#473 VAK Residency, B-Block, AECS Layout Kundalahalli,','Delhi','456738','10'),
('Sunshine hills','Flat no 3, water ville apartment R.galli','Delhi','100234','11'),
('Sri Sai appartment','2nd House, No-80/289, Sri Hari Darshan Nilaya, Ground Floor, Bellandur','Delhi','560107','12'),
('Barvika Residency','B105, 1st floor, B block, Barvika Residency','Delhi','5610023','13'),
('Nestaway building','#157, 4th Cross, 1st Main Road, Lower Palace Orchard','Delhi','546783','14'),
('Windsor Plaza','#301, Windsor Plaza,ITPL','Pune','560025','15'),
('Indira society','No. 502, Indira Meadows, Arunodaya Colony','Pune','302017','16'),
('Sri Krishna Society','Flat No-211 Sri Krishna sai enclave, Hoodi village, beside Vivekananda Ashram, Mahadevapura post','Pune','560048','17'),
('uniworld','D1-1201, Uniworld Garden 2','Pune','543678','18'),
('Vinayaka residency','49, House 1 lathangi 2nd main vinayaka housing layout, RMV 2nd stage bhoopasandra','Pune','560094','19'),
('Sun city appartments','Majeera Diamond Towers,malad-west','Pune','5600263','20')


--Inserting data into Referrals Table
Insert into Referrals
(referrer_bonus_amount,referral_valid,valid_from,valid_till,referrer_id)
Values
('2500','1','2015-07-05','2015-09-05','2'),
('2500','1','2015-07-05','2015-09-05','3'),
('1000','0','2015-12-13','2016-02-13','5'),
('2500','0','2016-04-25','2016-06-24','6'),
('1000','1','2015-07-01','2015-09-01','10'),
('2500','1','2015-05-12','2015-07-12','12'),
('2500','0','2015-08-05','2015-10-05','13'),
('1000','1','2016-02-05','2016-04-05','20'),
('2500','0','2015-08-12','2015-09-12','2'),
('1000','1','2016-02-18','2016-04-18','5'),
('1500','1','2016-06-19','2016-08-19','20'),
('2500','0','2015-11-15','2016-01-15','9'),
('1000','1','2016-02-01','2016-04-01','13'),
('1000','1','2016-04-25','2016-06-24','5')

--Inserting data into Employment Details table
Insert into Employment_details
(latest_employer,official_mail_id,yrs_experience,Occupational_category,profile_id)
values
('Sabre','mehdi.hasan@sabre.com','1','Working','1'),
('hindustan unilever','rags.ramgas@gmail.com','2','Working','2'),
('Technicolor','jigna.thacker@technicolor.com','1','Working','3'),
(NULL,NULL,NULL,'Student','4'),
('GE Healthcare','ruchita.save@ge.com','3','Working','5'),
('Aditya birla','shubhi.bajpai@adityabirla.com','3','Working','6'),
(NULL,NULL,NULL,'Student','7'),
(NULL,NULL,NULL,'Student','8'),
(NULL,NULL,NULL,'Student','9'),
('huawei Technologies','gunjan19wadhwa@gmail.com','4','Working','10'),
(NULL,NULL,NULL,'Student','11'),
('Centurylink India','PreetInder.Sodhi@centurylink.com','2','Working','12'),
('SAP Labs India','udit.singh@sap.com','2','Working','13'),
('NestAway','deepak@nestaway.com','1','Working','14'),
(NULL,NULL,NULL,'Student','15'),
(NULL,NULL,NULL,'Student','16'),
('Microsoft','t-akmeh@microsoft.com','2','Working','17'),
('Cognizant','bhavranjan.pandey@cognizant.com','2','Working','18'),
(NULL,NULL,NULL,'Student','19'),
('Tiny Mogul Games','sanchit@hike.in','3','Working','20')