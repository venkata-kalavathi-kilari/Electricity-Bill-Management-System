/* USE DATABASE */

USE ebms;

/* INSERT INTO CUSTOMER */

INSERT INTO customer VALUES
(111,'Kalavathi','MG Road','Andhra Pradesh','Ongole',523001),
(112,'KVK','Basaveshwara Nagar','Karnataka','Bangalore',570042),
(113,'Ananya','Temple Street','Tamil Nadu','Chennai',600001),
(211,'Ramesh','BTM Layout','Karnataka','Bangalore',560001),
(212,'Suresh','Beach Road','Andhra Pradesh','Vizag',530001),
(311,'Priya','Market Road','Maharashtra','Mumbai',400001),
(312,'Arjun','Ring Road','Delhi','New Delhi',110001),
(313,'Sneha','Lake View','Karnataka','Mysore',570001),
(324,'Varun','NTR Colony','Andhra Pradesh','Guntur',522001),
(325,'Keerthi','High School Road','Kerala','Kochi',682001),
(345,'Lakshmi','Nehru Nagar','Tamil Nadu','Madurai',625001),
(347,'Manoj','Central Colony','Madhya Pradesh','Indore',620089),
(367,'Divya','Bus Stand Road','Andhra Pradesh','Tirupati',517501),
(411,'Rahul','Main Road','Punjab','Amritsar',143001),
(412,'Nandini','Temple Road','Tamil Nadu','Coimbatore',641001);

/* INSERT INTO ACCOUNT */

INSERT INTO account VALUES
(401,111,'11345','Kalavathi'),
(403,112,'12455','KVK'),
(405,113,'98754','Ananya'),
(407,211,'34557','Ramesh'),
(409,212,'24567','Suresh'),
(411,311,'76314','Priya'),
(413,312,'54327','Arjun'),
(415,313,'74123','Sneha'),
(417,324,'43567','Varun'),
(419,325,'98764','Keerthi'),
(421,345,'43561','Lakshmi'),
(423,347,'78654','Manoj'),
(425,367,'67452','Divya'),
(427,411,'91294','Rahul'),
(429,412,'89123','Nandini');

/* INSERT INTO ADMIN */

INSERT INTO admin VALUES
(1,'Kiran',111),
(2,'Meena',112),
(3,'Rohit',113),
(4,'Divya',211),
(5,'Charan',212),
(6,'Sneha',311),
(7,'Pavan',312),
(8,'Anusha',313),
(9,'Tarun',324),
(10,'Bhavana',325),
(11,'Arun',345),
(12,'Siri',347),
(13,'Yash',367),
(14,'Madhavi',411),
(15,'Nikhitha',412);

/* INSERT INTO BILLING */

INSERT INTO billing
(meter_number, acc_id, cust_id, monthly_units, amount_per_unit)
VALUES
('101',401,111,500,10),
('102',403,112,390,10),
('103',405,113,208,10),
('104',407,211,800,10),
('105',409,212,200,10),
('106',411,311,600,10),
('107',413,312,250,10),
('108',415,313,400,10),
('109',417,324,450,10),
('110',419,325,550,10),
('111',421,345,320,10),
('112',423,347,590,10),
('113',425,367,670,10),
('114',427,411,230,10),
('115',429,412,650,10);

/* INSERT INTO ELECTRICITY BOARD */

INSERT INTO elec_board VALUES
(1010,'Andhra Power Corporation'),
(2010,'Telangana Electricity Board'),
(3010,'Tamil Nadu Energy Board'),
(4010,'Karnataka Current Board'),
(5010,'Kerala Power Corporation'),
(6010,'National Electricity Board');

/* INSERT INTO TARIFF */

INSERT INTO tariff VALUES
(12,'Power Factor Tariff'),
(13,'Peak Load Tariff'),
(14,'Two Part Tariff'),
(15,'Three Part Tariff');

/* INSERT INTO INVOICE */

INSERT INTO invoice VALUES
(1000,1010,'11345',12,'2026-05-01','101'),
(1001,2010,'12455',13,'2026-05-02','102'),
(1002,3010,'98754',14,'2026-05-03','103'),
(1003,4010,'34557',15,'2026-05-04','104'),
(1004,5010,'24567',12,'2026-05-05','105'),
(1005,6010,'76314',13,'2026-05-06','106'),
(1006,1010,'54327',14,'2026-05-07','107'),
(1007,2010,'74123',15,'2026-05-08','108'),
(1008,3010,'43567',12,'2026-05-09','109'),
(1009,4010,'98764',13,'2026-05-10','110');