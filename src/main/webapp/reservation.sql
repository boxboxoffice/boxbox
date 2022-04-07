drop table reservation cascade constraints;
CREATE table RESERVATION
(
rsCode NUMBER PRIMARY KEY NOT NULL, -- 예약 코드               					rscode
nsCode NUMBER, 						-- 상영 코드                                  nscode
mvCode NUMBER, 						-- 영화코드										movieCode
seats VARCHAR2(20), 				--좌석										seats
id VARCHAR2(20), 					-- 아이디										id
ticketCode NUMBER, 					-- 티켓코드									ticketCode
finalPrice NUMBER(10), 				-- 최종 영화값									finalPrice
rsCheck VARCHAR2(2) default 'n', 	-- 예약 확인									rsCheck
shCheck VARCHAR2(2) default 'n', 	-- 시청 확인									shCheck
rvCheck VARCHAR2(2) default 'n' 	-- 리뷰 확인									rvCheck
);


select * from reservation;

delete from RESERVATION;


delete from reservation;

insert into RESERVATION values(1,02,01,'A1','shyun',1,10000,'y','y','y');
insert into RESERVATION values(2,10,02,'A1','shyun',2,12000,'y','y','y');
insert into RESERVATION values(3,13,03,'A1','shyun',3,9000,'y','y','y');
insert into RESERVATION values(4,18,04,'A1','shyun',4,10000,'y','y','y');
insert into RESERVATION values(5,88,05,'A1','shyun',5,8000,'y','y','y');
insert into RESERVATION values(6,133,06,'A1','shyun',6,9000,'y','y','y');
insert into RESERVATION values(7,02,01,'A2','shyun',7,10000,'y','y','y');
insert into RESERVATION values(8,02,01,'A3','shyun',7,10000,'y','y','y');
insert into RESERVATION values(9,02,01,'A4','shyun',7,10000,'y','y','y');
insert into RESERVATION values(10,10,02,'A2','shyun',8,12000,'y','y','y');
insert into RESERVATION values(11,888,26,'A1','shyun',9,10000,'y','y','y');
insert into RESERVATION values(12,889,27,'A1','shyun',10,10000,'y','y','y');
insert into RESERVATION values(13,878,28,'A1','shyun',11,11000,'y','y','y');
insert into RESERVATION values(14,874,30,'A1','shyun',12,12000,'y','y','y');
insert into RESERVATION values(15,900,21,'A1','shyun',13,15000,'y','y','y');


drop table theater cascade constraints;
CREATE table THEATER
(
ttCode NUMBER PRIMARY KEY NOT NULL, -- 영화관 코드
ttLoc  VARCHAR2(20),				 -- 영화관 위치
ttName VARCHAR2(20) 				 -- 영화관 이름
);


delete from theater;
insert into THEATER values(01,'강남','CGV');
insert into THEATER values(02,'강남','메가박스');
insert into THEATER values(03,'위례','CGV');
insert into THEATER values(04,'위례','메가박스');
insert into THEATER values(05,'의정부','메가박스');
insert into THEATER values(06,'의정부','cgv');
insert into THEATER values(07,'용인','메가박스');
insert into THEATER values(08,'용인','cgv');

select *from theater;


drop table screen cascade constraints;
CREATE table SCREEN
(
screenCode NUMBER PRIMARY KEY NOT NULL, -- 상영관코드
screenTime VARCHAR2(10), 				-- 상영 시간 
screenNum NUMBER 						-- 몇관인지 
);

delete from screen;
insert into SCREEN values(01,'08:00',01);
insert into SCREEN values(02,'11:00',01);
insert into SCREEN values(03,'14:00',01);
insert into SCREEN values(04,'17:00',01);
insert into SCREEN values(05,'20:00',01);
insert into SCREEN values(06,'08:00',02);
insert into SCREEN values(07,'11:00',02);
insert into SCREEN values(08,'14:00',02);
insert into SCREEN values(09,'17:00',02);
insert into SCREEN values(10,'20:00',02);
insert into SCREEN values(11,'08:00',03);
insert into SCREEN values(12,'11:00',03);
insert into SCREEN values(13,'14:00',03);
insert into SCREEN values(14,'17:00',03);
insert into SCREEN values(15,'20:00',03);
insert into SCREEN values(16,'08:00',04);
insert into SCREEN values(17,'11:00',04);
insert into SCREEN values(18,'14:00',04);
insert into SCREEN values(19,'17:00',04);
insert into SCREEN values(20,'20:00',04); --강남cgv

insert into SCREEN values(21,'08:00',01);
insert into SCREEN values(22,'11:00',01);
insert into SCREEN values(23,'14:00',01);
insert into SCREEN values(24,'17:00',01);
insert into SCREEN values(25,'20:00',01);
insert into SCREEN values(26,'08:00',02);
insert into SCREEN values(27,'11:00',02);
insert into SCREEN values(28,'14:00',02);
insert into SCREEN values(29,'17:00',02);
insert into SCREEN values(30,'20:00',02); --강남 메가박스

insert into SCREEN values(31,'08:30',01);
insert into SCREEN values(32,'11:30',01);
insert into SCREEN values(33,'14:30',01);
insert into SCREEN values(34,'17:30',01);
insert into SCREEN values(35,'20:30',01);
insert into SCREEN values(36,'08:30',02);
insert into SCREEN values(37,'11:30',02);
insert into SCREEN values(38,'14:30',02);
insert into SCREEN values(39,'17:30',02);
insert into SCREEN values(40,'20:30',02);
insert into SCREEN values(41,'08:30',03);
insert into SCREEN values(42,'11:30',03);
insert into SCREEN values(43,'14:30',03);
insert into SCREEN values(44,'17:30',03);
insert into SCREEN values(45,'20:30',03); --위례 cgv

insert into SCREEN values(46,'08:15',01);
insert into SCREEN values(47,'11:15',01);
insert into SCREEN values(48,'14:15',01);
insert into SCREEN values(49,'17:15',01);
insert into SCREEN values(50,'20:15',01);
insert into SCREEN values(51,'08:15',02);
insert into SCREEN values(52,'11:15',02);
insert into SCREEN values(53,'14:15',02);
insert into SCREEN values(54,'17:15',02);
insert into SCREEN values(55,'20:15',02); --위례 메가박스

insert into SCREEN values(56,'09:00',01);
insert into SCREEN values(57,'13:00',01);
insert into SCREEN values(58,'17:00',01);
insert into SCREEN values(59,'19:00',01);
insert into SCREEN values(60,'22:00',01);
insert into SCREEN values(61,'09:00',02);
insert into SCREEN values(62,'13:00',02);
insert into SCREEN values(63,'17:00',02);
insert into SCREEN values(64,'19:00',02);
insert into SCREEN values(65,'22:00',02); -- 의정부 cgv

insert into SCREEN values(66,'09:10',01);
insert into SCREEN values(67,'13:10',01);
insert into SCREEN values(68,'17:10',01);
insert into SCREEN values(69,'19:10',01);
insert into SCREEN values(70,'22:10',01);
insert into SCREEN values(71,'09:10',02);
insert into SCREEN values(72,'13:10',02);
insert into SCREEN values(73,'17:10',02);
insert into SCREEN values(74,'19:10',02);
insert into SCREEN values(75,'22:10',02);   -- 의정부 메가박스

insert into SCREEN values(76,'07:15',01);
insert into SCREEN values(77,'10:15',01);
insert into SCREEN values(78,'13:15',01);
insert into SCREEN values(79,'16:15',01);
insert into SCREEN values(80,'19:15',01);
insert into SCREEN values(81,'07:15',02);
insert into SCREEN values(82,'10:15',02);
insert into SCREEN values(83,'13:15',02);
insert into SCREEN values(84,'16:15',02);
insert into SCREEN values(85,'19:15',02);  --용인 cgv 

insert into SCREEN values(86,'08:25',01);
insert into SCREEN values(87,'11:25',01);
insert into SCREEN values(88,'14:25',01);
insert into SCREEN values(89,'17:25',01);
insert into SCREEN values(90,'20:25',01);
insert into SCREEN values(91,'08:25',02);
insert into SCREEN values(92,'11:25',02);
insert into SCREEN values(93,'14:25',02);
insert into SCREEN values(94,'17:25',02);
insert into SCREEN values(95,'20:25',02);   --용인 메가박스

---스파이더맨 의정부 메가박스부터없음
insert into SCREEN values(96,'09:00',01);
insert into SCREEN values(97,'13:00',01);
insert into SCREEN values(98,'17:00',01);
insert into SCREEN values(99,'19:00',01);
insert into SCREEN values(100,'22:00',01);
insert into SCREEN values(101,'09:00',02);
insert into SCREEN values(102,'13:00',02);
insert into SCREEN values(103,'17:00',02);
insert into SCREEN values(104,'19:00',02);
insert into SCREEN values(105,'22:00',02);

--
insert into SCREEN values(106,'11:30',01);
insert into SCREEN values(107,'14:30',01);
insert into SCREEN values(108,'17:30',01);
insert into SCREEN values(109,'19:30',01);
insert into SCREEN values(110,'22:30',01);
insert into SCREEN values(111,'11:50',02);
insert into SCREEN values(112,'13:50',02);
insert into SCREEN values(113,'17:50',02);
insert into SCREEN values(114,'19:50',02);
insert into SCREEN values(115,'23:50',02);

insert into SCREEN values(116,'11:30',01);
insert into SCREEN values(117,'14:30',01);
insert into SCREEN values(118,'17:30',01);
insert into SCREEN values(119,'19:30',01);
insert into SCREEN values(120,'22:30',01);
insert into SCREEN values(121,'11:50',02);
insert into SCREEN values(122,'13:50',02);
insert into SCREEN values(123,'17:50',02);
insert into SCREEN values(124,'19:50',02);
insert into SCREEN values(125,'23:50',02);

insert into SCREEN values(126,'11:30',01);
insert into SCREEN values(127,'14:30',01);
insert into SCREEN values(128,'17:30',01);
insert into SCREEN values(129,'19:30',01);
insert into SCREEN values(130,'22:30',01);
insert into SCREEN values(131,'11:50',02);
insert into SCREEN values(132,'13:50',02);
insert into SCREEN values(133,'17:50',02);
insert into SCREEN values(134,'19:50',02);
insert into SCREEN values(135,'23:50',02);

insert into SCREEN values(136,'11:25',01);
insert into SCREEN values(137,'14:25',01);
insert into SCREEN values(138,'17:25',01);
insert into SCREEN values(139,'19:25',01);
insert into SCREEN values(140,'22:25',01);
insert into SCREEN values(141,'11:25',02);
insert into SCREEN values(142,'13:25',02);
insert into SCREEN values(143,'17:25',02);
insert into SCREEN values(144,'19:25',02);
insert into SCREEN values(145,'23:25',02);

insert into SCREEN values(146,'11:25',01);
insert into SCREEN values(147,'14:25',01);
insert into SCREEN values(148,'17:25',01);
insert into SCREEN values(149,'19:25',01);
insert into SCREEN values(150,'22:25',01);
insert into SCREEN values(151,'11:25',02);
insert into SCREEN values(152,'13:25',02);
insert into SCREEN values(153,'17:25',02);
insert into SCREEN values(154,'19:25',02);
insert into SCREEN values(155,'23:25',02);

insert into SCREEN values(156,'11:25',01);
insert into SCREEN values(157,'14:25',01);
insert into SCREEN values(158,'17:25',01);
insert into SCREEN values(159,'19:25',01);
insert into SCREEN values(160,'22:25',01);
insert into SCREEN values(161,'11:25',02);
insert into SCREEN values(162,'13:25',02);
insert into SCREEN values(163,'17:25',02);
insert into SCREEN values(164,'19:25',02);
insert into SCREEN values(165,'23:25',02);

insert into SCREEN values(166,'11:25',01);
insert into SCREEN values(167,'14:25',01);
insert into SCREEN values(168,'17:25',01);
insert into SCREEN values(169,'19:25',01);
insert into SCREEN values(170,'22:25',01);
insert into SCREEN values(171,'11:25',02);
insert into SCREEN values(172,'13:25',02);
insert into SCREEN values(173,'17:25',02);
insert into SCREEN values(174,'19:25',02);
insert into SCREEN values(175,'23:25',02);


---------


insert into SCREEN values(176,'10:25',01);
insert into SCREEN values(177,'12:25',01);
insert into SCREEN values(178,'14:25',01);
insert into SCREEN values(179,'19:25',01);
insert into SCREEN values(180,'22:25',01);
insert into SCREEN values(181,'10:25',02);
insert into SCREEN values(182,'12:25',02);
insert into SCREEN values(183,'14:25',02);
insert into SCREEN values(184,'19:25',02);
insert into SCREEN values(185,'23:25',02);


insert into SCREEN values(186,'11:25',02);
insert into SCREEN values(187,'14:25',01);
insert into SCREEN values(188,'17:25',02);
insert into SCREEN values(189,'19:25',03);
insert into SCREEN values(190,'22:25',04);
insert into SCREEN values(191,'11:25',05);
insert into SCREEN values(192,'13:25',05);
insert into SCREEN values(193,'17:25',06);
insert into SCREEN values(194,'19:25',05);
insert into SCREEN values(195,'23:25',03);

insert into SCREEN values(196,'11:45',02);
insert into SCREEN values(197,'14:45',01);
insert into SCREEN values(198,'17:45',02);
insert into SCREEN values(199,'19:45',03);
insert into SCREEN values(200,'22:45',04);
insert into SCREEN values(201,'11:45',05);
insert into SCREEN values(202,'13:45',05);
insert into SCREEN values(203,'17:45',06);
insert into SCREEN values(204,'19:45',05);
insert into SCREEN values(205,'23:45',03);

insert into SCREEN values(206,'11:45',02);
insert into SCREEN values(207,'14:45',01);
insert into SCREEN values(208,'17:45',02);
insert into SCREEN values(209,'19:45',03);
insert into SCREEN values(210,'22:45',04);
insert into SCREEN values(211,'11:45',05);
insert into SCREEN values(212,'13:45',05);
insert into SCREEN values(213,'17:45',06);
insert into SCREEN values(214,'19:45',05);
insert into SCREEN values(215,'23:45',03);

insert into SCREEN values(216,'11:45',02);
insert into SCREEN values(217,'14:45',01);
insert into SCREEN values(218,'17:45',02);
insert into SCREEN values(219,'19:45',03);
insert into SCREEN values(220,'22:45',04);
insert into SCREEN values(221,'11:45',05);
insert into SCREEN values(222,'13:45',05);
insert into SCREEN values(223,'17:45',06);
insert into SCREEN values(224,'19:45',05);
insert into SCREEN values(225,'23:45',03);

insert into SCREEN values(226,'11:45',02);
insert into SCREEN values(227,'14:45',01);
insert into SCREEN values(228,'17:45',02);
insert into SCREEN values(229,'19:45',03);
insert into SCREEN values(230,'22:45',04);
insert into SCREEN values(231,'11:45',05);
insert into SCREEN values(232,'13:45',05);
insert into SCREEN values(233,'17:45',06);
insert into SCREEN values(234,'19:45',05);
insert into SCREEN values(235,'23:45',03);

insert into SCREEN values(236,'11:45',02);
insert into SCREEN values(237,'14:45',01);
insert into SCREEN values(238,'17:45',02);
insert into SCREEN values(239,'19:45',03);
insert into SCREEN values(240,'22:45',04);



select * from SCREEN;
drop table NOWSHOWING;
drop table NOWSHOWING cascade constraint;
CREATE TABLE NOWSHOWING(
nsCode NUMBER primary key not null, --상영코드
mvCode NUMBER, 						-- 영화코드
ttCode NUMBER, 						-- 극장코드
screenCode NUMBER, 					-- 스크린코드
showingDay VARCHAR2(100), 			--상영날짜
pchk VARCHAR2(2) default 'n' 		-- 상영코드 시간별제어
);



delete from NOWSHOWING;



insert into NOWSHOWING values(01,01,01,01,'3월 31일','n');
insert into NOWSHOWING values(02,01,01,02,'3월 31일','n');
insert into NOWSHOWING values(03,01,01,03,'3월 31일','n');
insert into NOWSHOWING values(04,01,01,04,'3월 31일','n');
insert into NOWSHOWING values(05,01,01,05,'3월 31일','n'); 
insert into NOWSHOWING values(06,04,01,06,'3월 31일','n');
insert into NOWSHOWING values(07,04,01,07,'3월 31일','n');
insert into NOWSHOWING values(08,04,01,08,'3월 31일','n');
insert into NOWSHOWING values(09,04,01,09,'3월 31일','n');
insert into NOWSHOWING values(10,04,01,10,'3월 31일','n'); 
insert into NOWSHOWING values(11,06,01,11,'3월 31일','n');
insert into NOWSHOWING values(12,06,01,12,'3월 31일','n');
insert into NOWSHOWING values(13,06,01,13,'3월 31일','n');
insert into NOWSHOWING values(14,06,01,14,'3월 31일','n');
insert into NOWSHOWING values(15,06,01,15,'3월 31일','n'); 
insert into NOWSHOWING values(16,09,01,16,'3월 31일','n');
insert into NOWSHOWING values(17,09,01,17,'3월 31일','n');
insert into NOWSHOWING values(18,09,01,18,'3월 31일','n');
insert into NOWSHOWING values(19,09,01,19,'3월 31일','n');
insert into NOWSHOWING values(20,09,01,20,'3월 31일','n');
insert into NOWSHOWING values(21,16,01,21,'3월 31일','n');
insert into NOWSHOWING values(22,16,01,22,'3월 31일','n');
insert into NOWSHOWING values(23,16,01,23,'3월 31일','n');
insert into NOWSHOWING values(24,16,01,24,'3월 31일','n');
insert into NOWSHOWING values(25,16,01,25,'3월 31일','n');
insert into NOWSHOWING values(26,18,01,26,'3월 31일','n');
insert into NOWSHOWING values(27,18,01,27,'3월 31일','n');
insert into NOWSHOWING values(28,18,01,28,'3월 31일','n');
insert into NOWSHOWING values(39,18,01,29,'3월 31일','n');
insert into NOWSHOWING values(30,18,01,30,'3월 31일','n');


------------------------------------------------------------------

insert into NOWSHOWING values(31,01,01,01,'4월 01일','n');
insert into NOWSHOWING values(32,01,01,02,'4월 01일','n');
insert into NOWSHOWING values(33,01,01,03,'4월 01일','n');
insert into NOWSHOWING values(34,01,01,04,'4월 01일','n');
insert into NOWSHOWING values(35,01,01,05,'4월 01일','n'); 
insert into NOWSHOWING values(36,04,01,06,'4월 01일','n');
insert into NOWSHOWING values(37,04,01,07,'4월 01일','n');
insert into NOWSHOWING values(38,04,01,08,'4월 01일','n');
insert into NOWSHOWING values(39,04,01,09,'4월 01일','n');
insert into NOWSHOWING values(40,04,01,10,'4월 01일','n'); 
insert into NOWSHOWING values(41,06,01,11,'4월 01일','n');
insert into NOWSHOWING values(42,06,01,12,'4월 01일','n');
insert into NOWSHOWING values(43,06,01,13,'4월 01일','n');
insert into NOWSHOWING values(44,06,01,14,'4월 01일','n');
insert into NOWSHOWING values(45,06,01,15,'4월 01일','n'); 
insert into NOWSHOWING values(46,09,01,16,'4월 01일','n');
insert into NOWSHOWING values(47,09,01,17,'4월 01일','n');
insert into NOWSHOWING values(48,09,01,18,'4월 01일','n');
insert into NOWSHOWING values(49,09,01,19,'4월 01일','n');
insert into NOWSHOWING values(50,09,01,20,'4월 01일','n');
insert into NOWSHOWING values(51,16,01,21,'4월 01일','n');
insert into NOWSHOWING values(52,16,01,22,'4월 01일','n');
insert into NOWSHOWING values(53,16,01,23,'4월 01일','n');
insert into NOWSHOWING values(54,16,01,24,'4월 01일','n');
insert into NOWSHOWING values(55,16,01,25,'4월 01일','n');
insert into NOWSHOWING values(56,18,01,26,'4월 01일','n');
insert into NOWSHOWING values(57,18,01,27,'4월 01일','n');
insert into NOWSHOWING values(58,18,01,28,'4월 01일','n');
insert into NOWSHOWING values(59,18,01,29,'4월 01일','n');
insert into NOWSHOWING values(60,18,01,30,'4월 01일','n');

insert into NOWSHOWING values(61,01,01,01,'4월 02일','n');
insert into NOWSHOWING values(62,01,01,02,'4월 02일','n');
insert into NOWSHOWING values(63,01,01,03,'4월 02일','n');
insert into NOWSHOWING values(64,01,01,04,'4월 02일','n');
insert into NOWSHOWING values(65,01,01,05,'4월 02일','n'); 
insert into NOWSHOWING values(66,04,01,06,'4월 02일','n');
insert into NOWSHOWING values(67,04,01,07,'4월 02일','n');
insert into NOWSHOWING values(68,04,01,08,'4월 02일','n');
insert into NOWSHOWING values(69,04,01,09,'4월 02일','n');
insert into NOWSHOWING values(70,04,01,10,'4월 02일','n'); 
insert into NOWSHOWING values(71,06,01,11,'4월 02일','n');
insert into NOWSHOWING values(72,06,01,12,'4월 02일','n');
insert into NOWSHOWING values(73,06,01,13,'4월 02일','n');
insert into NOWSHOWING values(74,06,01,14,'4월 02일','n');
insert into NOWSHOWING values(75,06,01,15,'4월 02일','n'); 
insert into NOWSHOWING values(76,09,01,16,'4월 02일','n');
insert into NOWSHOWING values(77,09,01,17,'4월 02일','n');
insert into NOWSHOWING values(78,09,01,18,'4월 02일','n');
insert into NOWSHOWING values(79,09,01,19,'4월 02일','n');
insert into NOWSHOWING values(80,09,01,20,'4월 02일','n');
insert into NOWSHOWING values(81,16,01,21,'4월 02일','n');
insert into NOWSHOWING values(82,16,01,22,'4월 02일','n');
insert into NOWSHOWING values(83,16,01,23,'4월 02일','n');
insert into NOWSHOWING values(84,16,01,24,'4월 02일','n');
insert into NOWSHOWING values(85,16,01,25,'4월 02일','n');
insert into NOWSHOWING values(86,18,01,26,'4월 02일','n');
insert into NOWSHOWING values(87,18,01,27,'4월 02일','n');
insert into NOWSHOWING values(88,18,01,28,'4월 02일','n');
insert into NOWSHOWING values(89,18,01,29,'4월 02일','n');
insert into NOWSHOWING values(90,18,01,30,'4월 02일','n');

insert into NOWSHOWING values(91,01,01,01,'4월 03일','n');
insert into NOWSHOWING values(92,01,01,02,'4월 03일','n');
insert into NOWSHOWING values(93,01,01,03,'4월 03일','n');
insert into NOWSHOWING values(94,01,01,04,'4월 03일','n');
insert into NOWSHOWING values(95,01,01,05,'4월 03일','n'); 
insert into NOWSHOWING values(96,04,01,06,'4월 03일','n');
insert into NOWSHOWING values(97,04,01,07,'4월 03일','n');
insert into NOWSHOWING values(98,04,01,08,'4월 03일','n');
insert into NOWSHOWING values(99,04,01,09,'4월 03일','n');
insert into NOWSHOWING values(100,04,01,10,'4월 03일','n'); 
insert into NOWSHOWING values(101,06,01,11,'4월 03일','n');
insert into NOWSHOWING values(102,06,01,12,'4월 03일','n');
insert into NOWSHOWING values(103,06,01,13,'4월 03일','n');
insert into NOWSHOWING values(104,06,01,14,'4월 03일','n');
insert into NOWSHOWING values(105,06,01,15,'4월 03일','n'); 
insert into NOWSHOWING values(106,09,01,16,'4월 03일','n');
insert into NOWSHOWING values(107,09,01,17,'4월 03일','n');
insert into NOWSHOWING values(108,09,01,18,'4월 03일','n');
insert into NOWSHOWING values(109,09,01,19,'4월 03일','n');
insert into NOWSHOWING values(110,09,01,20,'4월 03일','n');
insert into NOWSHOWING values(111,16,01,21,'4월 03일','n');
insert into NOWSHOWING values(112,16,01,22,'4월 03일','n');
insert into NOWSHOWING values(113,16,01,23,'4월 03일','n');
insert into NOWSHOWING values(114,16,01,24,'4월 03일','n');
insert into NOWSHOWING values(115,16,01,25,'4월 03일','n');
insert into NOWSHOWING values(116,18,01,26,'4월 03일','n');
insert into NOWSHOWING values(117,18,01,27,'4월 03일','n');
insert into NOWSHOWING values(118,18,01,28,'4월 03일','n');
insert into NOWSHOWING values(119,18,01,29,'4월 03일','n');
insert into NOWSHOWING values(120,18,01,30,'4월 03일','n');

-------------------------------------------------------------------


insert into NOWSHOWING values(121,01,02,31,'3월 31일','n');
insert into NOWSHOWING values(122,01,02,32,'3월 31일','n');
insert into NOWSHOWING values(123,01,02,33,'3월 31일','n');
insert into NOWSHOWING values(124,01,02,34,'3월 31일','n');
insert into NOWSHOWING values(125,01,02,35,'3월 31일','n'); 
insert into NOWSHOWING values(126,04,02,36,'3월 31일','n');
insert into NOWSHOWING values(127,04,02,37,'3월 31일','n');
insert into NOWSHOWING values(128,04,02,38,'3월 31일','n');
insert into NOWSHOWING values(129,04,02,39,'3월 31일','n');
insert into NOWSHOWING values(130,04,02,40,'3월 31일','n'); 
insert into NOWSHOWING values(131,06,02,41,'3월 31일','n');
insert into NOWSHOWING values(132,06,02,42,'3월 31일','n');
insert into NOWSHOWING values(133,06,02,43,'3월 31일','n');
insert into NOWSHOWING values(134,06,02,44,'3월 31일','n');
insert into NOWSHOWING values(135,06,02,45,'3월 31일','n'); 
insert into NOWSHOWING values(136,09,02,46,'3월 31일','n');
insert into NOWSHOWING values(137,09,02,47,'3월 31일','n');
insert into NOWSHOWING values(138,09,02,48,'3월 31일','n');
insert into NOWSHOWING values(139,09,02,49,'3월 31일','n');
insert into NOWSHOWING values(140,09,02,50,'3월 31일','n');
insert into NOWSHOWING values(141,16,02,51,'3월 31일','n');
insert into NOWSHOWING values(142,16,02,52,'3월 31일','n');
insert into NOWSHOWING values(143,16,02,53,'3월 31일','n');
insert into NOWSHOWING values(144,16,02,54,'3월 31일','n');
insert into NOWSHOWING values(145,16,02,55,'3월 31일','n');
insert into NOWSHOWING values(146,18,02,56,'3월 31일','n');
insert into NOWSHOWING values(147,18,02,57,'3월 31일','n');
insert into NOWSHOWING values(148,18,02,58,'3월 31일','n');
insert into NOWSHOWING values(149,18,02,59,'3월 31일','n');
insert into NOWSHOWING values(150,18,02,60,'3월 31일','n');



insert into NOWSHOWING values(151,01,02,31,'4월 01일','n');
insert into NOWSHOWING values(152,01,02,32,'4월 01일','n');
insert into NOWSHOWING values(153,01,02,33,'4월 01일','n');
insert into NOWSHOWING values(154,01,02,34,'4월 01일','n');
insert into NOWSHOWING values(155,01,02,35,'4월 01일','n'); 
insert into NOWSHOWING values(156,04,02,36,'4월 01일','n');
insert into NOWSHOWING values(157,04,02,37,'4월 01일','n');
insert into NOWSHOWING values(158,04,02,38,'4월 01일','n');
insert into NOWSHOWING values(159,04,02,39,'4월 01일','n');
insert into NOWSHOWING values(160,04,02,40,'4월 01일','n'); 
insert into NOWSHOWING values(161,06,02,41,'4월 01일','n');
insert into NOWSHOWING values(162,06,02,42,'4월 01일','n');
insert into NOWSHOWING values(163,06,02,43,'4월 01일','n');
insert into NOWSHOWING values(164,06,02,44,'4월 01일','n');
insert into NOWSHOWING values(165,06,02,45,'4월 01일','n'); 
insert into NOWSHOWING values(166,09,02,46,'4월 01일','n');
insert into NOWSHOWING values(167,09,02,47,'4월 01일','n');
insert into NOWSHOWING values(168,09,02,48,'4월 01일','n');
insert into NOWSHOWING values(169,09,02,49,'4월 01일','n');
insert into NOWSHOWING values(170,09,02,50,'4월 01일','n');
insert into NOWSHOWING values(171,16,02,51,'4월 01일','n');
insert into NOWSHOWING values(172,16,02,52,'4월 01일','n');
insert into NOWSHOWING values(173,16,02,53,'4월 01일','n');
insert into NOWSHOWING values(174,16,02,54,'4월 01일','n');
insert into NOWSHOWING values(175,16,02,55,'4월 01일','n');
insert into NOWSHOWING values(176,18,02,56,'4월 01일','n');
insert into NOWSHOWING values(177,18,02,57,'4월 01일','n');
insert into NOWSHOWING values(178,18,02,58,'4월 01일','n');
insert into NOWSHOWING values(179,18,02,59,'4월 01일','n');
insert into NOWSHOWING values(180,18,02,60,'4월 01일','n');


insert into NOWSHOWING values(181,01,02,31,'4월 02일','n');
insert into NOWSHOWING values(182,01,02,32,'4월 02일','n');
insert into NOWSHOWING values(183,01,02,33,'4월 02일','n');
insert into NOWSHOWING values(184,01,02,34,'4월 02일','n');
insert into NOWSHOWING values(185,01,02,35,'4월 02일','n'); 
insert into NOWSHOWING values(186,04,02,36,'4월 02일','n');
insert into NOWSHOWING values(187,04,02,37,'4월 02일','n');
insert into NOWSHOWING values(188,04,02,38,'4월 02일','n');
insert into NOWSHOWING values(189,04,02,39,'4월 02일','n');
insert into NOWSHOWING values(180,04,02,40,'4월 02일','n'); 
insert into NOWSHOWING values(191,06,02,41,'4월 02일','n');
insert into NOWSHOWING values(192,06,02,42,'4월 02일','n');
insert into NOWSHOWING values(193,06,02,43,'4월 02일','n');
insert into NOWSHOWING values(194,06,02,44,'4월 02일','n');
insert into NOWSHOWING values(195,06,02,45,'4월 02일','n'); 
insert into NOWSHOWING values(196,09,02,46,'4월 02일','n');
insert into NOWSHOWING values(197,09,02,47,'4월 02일','n');
insert into NOWSHOWING values(198,09,02,48,'4월 02일','n');
insert into NOWSHOWING values(199,09,02,49,'4월 02일','n');
insert into NOWSHOWING values(200,09,02,50,'4월 02일','n');
insert into NOWSHOWING values(201,16,02,51,'4월 02일','n');
insert into NOWSHOWING values(202,16,02,52,'4월 02일','n');
insert into NOWSHOWING values(203,16,02,53,'4월 02일','n');
insert into NOWSHOWING values(204,16,02,54,'4월 02일','n');
insert into NOWSHOWING values(205,16,02,55,'4월 02일','n');
insert into NOWSHOWING values(206,18,02,56,'4월 02일','n');
insert into NOWSHOWING values(207,18,02,57,'4월 02일','n');
insert into NOWSHOWING values(208,18,02,58,'4월 02일','n');
insert into NOWSHOWING values(209,18,02,59,'4월 02일','n');
insert into NOWSHOWING values(210,18,02,60,'4월 02일','n');

insert into NOWSHOWING values(211,01,02,31,'4월 03일','n');
insert into NOWSHOWING values(212,01,02,32,'4월 03일','n');
insert into NOWSHOWING values(213,01,02,33,'4월 03일','n');
insert into NOWSHOWING values(214,01,02,34,'4월 03일','n');
insert into NOWSHOWING values(215,01,02,35,'4월 03일','n'); 
insert into NOWSHOWING values(216,04,02,36,'4월 03일','n');
insert into NOWSHOWING values(217,04,02,37,'4월 03일','n');
insert into NOWSHOWING values(218,04,02,38,'4월 03일','n');
insert into NOWSHOWING values(219,04,02,39,'4월 03일','n');
insert into NOWSHOWING values(220,04,02,40,'4월 03일','n'); 
insert into NOWSHOWING values(221,06,02,41,'4월 03일','n');
insert into NOWSHOWING values(222,06,02,42,'4월 03일','n');
insert into NOWSHOWING values(223,06,02,43,'4월 03일','n');
insert into NOWSHOWING values(224,06,02,44,'4월 03일','n');
insert into NOWSHOWING values(225,06,02,45,'4월 03일','n'); 
insert into NOWSHOWING values(226,09,02,46,'4월 03일','n');
insert into NOWSHOWING values(227,09,02,47,'4월 03일','n');
insert into NOWSHOWING values(228,09,02,48,'4월 03일','n');
insert into NOWSHOWING values(229,09,02,49,'4월 03일','n');
insert into NOWSHOWING values(230,09,02,50,'4월 03일','n');
insert into NOWSHOWING values(231,16,02,51,'4월 03일','n');
insert into NOWSHOWING values(232,16,02,52,'4월 03일','n');
insert into NOWSHOWING values(233,16,02,53,'4월 03일','n');
insert into NOWSHOWING values(234,16,02,54,'4월 03일','n');
insert into NOWSHOWING values(235,16,02,55,'4월 03일','n');
insert into NOWSHOWING values(236,18,02,56,'4월 03일','n');
insert into NOWSHOWING values(237,18,02,57,'4월 03일','n');
insert into NOWSHOWING values(238,18,02,58,'4월 03일','n');
insert into NOWSHOWING values(239,18,02,59,'4월 03일','n');
insert into NOWSHOWING values(240,18,02,60,'4월 03일','n');


------------------------------------------------------------------  61

insert into NOWSHOWING values(241,01,03,61,'3월 31일','n');
insert into NOWSHOWING values(242,01,03,62,'3월 31일','n');
insert into NOWSHOWING values(243,01,03,63,'3월 31일','n');
insert into NOWSHOWING values(244,01,03,64,'3월 31일','n');
insert into NOWSHOWING values(245,01,03,65,'3월 31일','n'); 
insert into NOWSHOWING values(246,04,03,66,'3월 31일','n');
insert into NOWSHOWING values(247,04,03,67,'3월 31일','n');
insert into NOWSHOWING values(248,04,03,68,'3월 31일','n');
insert into NOWSHOWING values(249,04,03,69,'3월 31일','n');
insert into NOWSHOWING values(250,04,03,70,'3월 31일','n'); 
insert into NOWSHOWING values(251,06,03,71,'3월 31일','n');
insert into NOWSHOWING values(252,06,03,72,'3월 31일','n');
insert into NOWSHOWING values(253,06,03,73,'3월 31일','n');
insert into NOWSHOWING values(254,06,03,74,'3월 31일','n');
insert into NOWSHOWING values(255,06,03,75,'3월 31일','n'); 
insert into NOWSHOWING values(256,09,03,76,'3월 31일','n');
insert into NOWSHOWING values(257,09,03,77,'3월 31일','n');
insert into NOWSHOWING values(258,09,03,78,'3월 31일','n');
insert into NOWSHOWING values(259,09,03,79,'3월 31일','n');
insert into NOWSHOWING values(260,09,03,80,'3월 31일','n');
insert into NOWSHOWING values(261,16,03,81,'3월 31일','n');
insert into NOWSHOWING values(262,16,03,82,'3월 31일','n');
insert into NOWSHOWING values(263,16,03,83,'3월 31일','n');
insert into NOWSHOWING values(264,16,03,84,'3월 31일','n');
insert into NOWSHOWING values(265,16,03,85,'3월 31일','n');
insert into NOWSHOWING values(266,18,03,86,'3월 31일','n');
insert into NOWSHOWING values(267,18,03,87,'3월 31일','n');
insert into NOWSHOWING values(268,18,03,88,'3월 31일','n');
insert into NOWSHOWING values(269,18,03,89,'3월 31일','n');
insert into NOWSHOWING values(270,18,03,90,'3월 31일','n');



insert into NOWSHOWING values(271,01,03,61,'4월 01일','n');
insert into NOWSHOWING values(272,01,03,62,'4월 01일','n');
insert into NOWSHOWING values(273,01,03,63,'4월 01일','n');
insert into NOWSHOWING values(274,01,03,64,'4월 01일','n');
insert into NOWSHOWING values(275,01,03,65,'4월 01일','n'); 
insert into NOWSHOWING values(276,04,03,66,'4월 01일','n');
insert into NOWSHOWING values(277,04,03,67,'4월 01일','n');
insert into NOWSHOWING values(278,04,03,68,'4월 01일','n');
insert into NOWSHOWING values(279,04,03,69,'4월 01일','n');
insert into NOWSHOWING values(280,04,03,70,'4월 01일','n'); 
insert into NOWSHOWING values(281,06,03,71,'4월 01일','n');
insert into NOWSHOWING values(282,06,03,72,'4월 01일','n');
insert into NOWSHOWING values(283,06,03,73,'4월 01일','n');
insert into NOWSHOWING values(284,06,03,74,'4월 01일','n');
insert into NOWSHOWING values(285,06,03,75,'4월 01일','n'); 
insert into NOWSHOWING values(286,09,03,76,'4월 01일','n');
insert into NOWSHOWING values(287,09,03,77,'4월 01일','n');
insert into NOWSHOWING values(288,09,03,78,'4월 01일','n');
insert into NOWSHOWING values(289,09,03,79,'4월 01일','n');
insert into NOWSHOWING values(290,09,03,80,'4월 01일','n');
insert into NOWSHOWING values(291,16,03,81,'4월 01일','n');
insert into NOWSHOWING values(292,16,03,82,'4월 01일','n');
insert into NOWSHOWING values(293,16,03,83,'4월 01일','n');
insert into NOWSHOWING values(294,16,03,84,'4월 01일','n');
insert into NOWSHOWING values(295,16,03,85,'4월 01일','n');
insert into NOWSHOWING values(296,18,03,86,'4월 01일','n');
insert into NOWSHOWING values(297,18,03,87,'4월 01일','n');
insert into NOWSHOWING values(298,18,03,88,'4월 01일','n');
insert into NOWSHOWING values(299,18,03,89,'4월 01일','n');
insert into NOWSHOWING values(300,18,03,90,'4월 01일','n');


insert into NOWSHOWING values(301,01,03,61,'4월 02일','n');
insert into NOWSHOWING values(302,01,03,62,'4월 02일','n');
insert into NOWSHOWING values(303,01,03,63,'4월 02일','n');
insert into NOWSHOWING values(304,01,03,64,'4월 02일','n');
insert into NOWSHOWING values(305,01,03,65,'4월 02일','n'); 
insert into NOWSHOWING values(306,04,03,66,'4월 02일','n');
insert into NOWSHOWING values(307,04,03,67,'4월 02일','n');
insert into NOWSHOWING values(308,04,03,68,'4월 02일','n');
insert into NOWSHOWING values(309,04,03,69,'4월 02일','n');
insert into NOWSHOWING values(310,04,03,70,'4월 02일','n'); 
insert into NOWSHOWING values(311,06,03,71,'4월 02일','n');
insert into NOWSHOWING values(312,06,03,72,'4월 02일','n');
insert into NOWSHOWING values(313,06,03,73,'4월 02일','n');
insert into NOWSHOWING values(314,06,03,74,'4월 02일','n');
insert into NOWSHOWING values(315,06,03,75,'4월 02일','n'); 
insert into NOWSHOWING values(316,09,03,76,'4월 02일','n');
insert into NOWSHOWING values(317,09,03,77,'4월 02일','n');
insert into NOWSHOWING values(138,09,03,78,'4월 02일','n');
insert into NOWSHOWING values(319,09,03,79,'4월 02일','n');
insert into NOWSHOWING values(320,09,03,80,'4월 02일','n');
insert into NOWSHOWING values(321,16,03,81,'4월 02일','n');
insert into NOWSHOWING values(322,16,03,82,'4월 02일','n');
insert into NOWSHOWING values(323,16,03,83,'4월 02일','n');
insert into NOWSHOWING values(324,16,03,84,'4월 02일','n');
insert into NOWSHOWING values(325,16,03,85,'4월 02일','n');
insert into NOWSHOWING values(326,18,03,86,'4월 02일','n');
insert into NOWSHOWING values(327,18,03,87,'4월 02일','n');
insert into NOWSHOWING values(328,18,03,88,'4월 02일','n');
insert into NOWSHOWING values(329,18,03,89,'4월 02일','n');
insert into NOWSHOWING values(330,18,03,90,'4월 02일','n');

insert into NOWSHOWING values(331,01,03,61,'4월 03일','n');
insert into NOWSHOWING values(332,01,03,62,'4월 03일','n');
insert into NOWSHOWING values(333,01,03,63,'4월 03일','n');
insert into NOWSHOWING values(334,01,03,64,'4월 03일','n');
insert into NOWSHOWING values(335,01,03,65,'4월 03일','n'); 
insert into NOWSHOWING values(336,04,03,66,'4월 03일','n');
insert into NOWSHOWING values(337,04,03,67,'4월 03일','n');
insert into NOWSHOWING values(338,04,03,68,'4월 03일','n');
insert into NOWSHOWING values(339,04,03,69,'4월 03일','n');
insert into NOWSHOWING values(340,04,03,70,'4월 03일','n'); 
insert into NOWSHOWING values(341,06,03,71,'4월 03일','n');
insert into NOWSHOWING values(342,06,03,72,'4월 03일','n');
insert into NOWSHOWING values(343,06,03,73,'4월 03일','n');
insert into NOWSHOWING values(344,06,03,74,'4월 03일','n');
insert into NOWSHOWING values(345,06,03,75,'4월 03일','n'); 
insert into NOWSHOWING values(346,09,03,76,'4월 03일','n');
insert into NOWSHOWING values(347,09,03,77,'4월 03일','n');
insert into NOWSHOWING values(348,09,03,78,'4월 03일','n');
insert into NOWSHOWING values(349,09,03,79,'4월 03일','n');
insert into NOWSHOWING values(350,09,03,80,'4월 03일','n');
insert into NOWSHOWING values(351,16,03,81,'4월 03일','n');
insert into NOWSHOWING values(352,16,03,82,'4월 03일','n');
insert into NOWSHOWING values(353,16,03,83,'4월 03일','n');
insert into NOWSHOWING values(354,16,03,84,'4월 03일','n');
insert into NOWSHOWING values(355,16,03,85,'4월 03일','n');
insert into NOWSHOWING values(356,18,03,86,'4월 03일','n');
insert into NOWSHOWING values(357,18,03,87,'4월 03일','n');
insert into NOWSHOWING values(358,18,03,88,'4월 03일','n');
insert into NOWSHOWING values(359,18,03,89,'4월 03일','n');
insert into NOWSHOWING values(360,18,03,90,'4월 03일','n');

------------------------------------------------------------------  91

insert into NOWSHOWING values(361,01,04,91,'3월 31일','n');
insert into NOWSHOWING values(362,01,04,92,'3월 31일','n');
insert into NOWSHOWING values(363,01,04,93,'3월 31일','n');
insert into NOWSHOWING values(364,01,04,94,'3월 31일','n');
insert into NOWSHOWING values(365,01,04,95,'3월 31일','n'); 
insert into NOWSHOWING values(366,04,04,96,'3월 31일','n');
insert into NOWSHOWING values(367,04,04,97,'3월 31일','n');
insert into NOWSHOWING values(368,04,04,98,'3월 31일','n');
insert into NOWSHOWING values(369,04,04,99,'3월 31일','n');
insert into NOWSHOWING values(370,04,04,100,'3월 31일','n'); 
insert into NOWSHOWING values(371,06,04,101,'3월 31일','n');
insert into NOWSHOWING values(372,06,04,102,'3월 31일','n');
insert into NOWSHOWING values(373,06,04,103,'3월 31일','n');
insert into NOWSHOWING values(374,06,04,104,'3월 31일','n');
insert into NOWSHOWING values(375,06,04,105,'3월 31일','n'); 
insert into NOWSHOWING values(376,09,04,106,'3월 31일','n');
insert into NOWSHOWING values(377,09,04,107,'3월 31일','n');
insert into NOWSHOWING values(378,09,04,108,'3월 31일','n');
insert into NOWSHOWING values(379,09,04,109,'3월 31일','n');
insert into NOWSHOWING values(380,09,04,110,'3월 31일','n');
insert into NOWSHOWING values(381,16,04,111,'3월 31일','n');
insert into NOWSHOWING values(382,16,04,112,'3월 31일','n');
insert into NOWSHOWING values(383,16,04,113,'3월 31일','n');
insert into NOWSHOWING values(384,16,04,114,'3월 31일','n');
insert into NOWSHOWING values(385,16,04,115,'3월 31일','n');
insert into NOWSHOWING values(386,18,04,116,'3월 31일','n');
insert into NOWSHOWING values(387,18,04,117,'3월 31일','n');
insert into NOWSHOWING values(388,18,04,118,'3월 31일','n');
insert into NOWSHOWING values(389,18,04,119,'3월 31일','n');
insert into NOWSHOWING values(390,18,04,120,'3월 31일','n');



insert into NOWSHOWING values(391,01,04,91,'4월 01일','n');
insert into NOWSHOWING values(392,01,04,92,'4월 01일','n');
insert into NOWSHOWING values(393,01,04,93,'4월 01일','n');
insert into NOWSHOWING values(394,01,04,94,'4월 01일','n');
insert into NOWSHOWING values(395,01,04,95,'4월 01일','n'); 
insert into NOWSHOWING values(396,04,04,96,'4월 01일','n');
insert into NOWSHOWING values(397,04,04,97,'4월 01일','n');
insert into NOWSHOWING values(398,04,04,98,'4월 01일','n');
insert into NOWSHOWING values(399,04,04,99,'4월 01일','n');
insert into NOWSHOWING values(400,04,04,100,'4월 01일','n'); 
insert into NOWSHOWING values(401,06,04,101,'4월 01일','n');
insert into NOWSHOWING values(402,06,04,102,'4월 01일','n');
insert into NOWSHOWING values(403,06,04,103,'4월 01일','n');
insert into NOWSHOWING values(404,06,04,104,'4월 01일','n');
insert into NOWSHOWING values(405,06,04,105,'4월 01일','n'); 
insert into NOWSHOWING values(406,09,04,106,'4월 01일','n');
insert into NOWSHOWING values(407,09,04,107,'4월 01일','n');
insert into NOWSHOWING values(408,09,04,108,'4월 01일','n');
insert into NOWSHOWING values(409,09,04,109,'4월 01일','n');
insert into NOWSHOWING values(410,09,04,110,'4월 01일','n');
insert into NOWSHOWING values(411,16,04,111,'4월 01일','n');
insert into NOWSHOWING values(412,16,04,112,'4월 01일','n');
insert into NOWSHOWING values(413,16,04,113,'4월 01일','n');
insert into NOWSHOWING values(414,16,04,114,'4월 01일','n');
insert into NOWSHOWING values(415,16,04,115,'4월 01일','n');
insert into NOWSHOWING values(416,18,04,116,'4월 01일','n');
insert into NOWSHOWING values(417,18,04,117,'4월 01일','n');
insert into NOWSHOWING values(418,18,04,118,'4월 01일','n');
insert into NOWSHOWING values(419,18,04,119,'4월 01일','n');
insert into NOWSHOWING values(420,18,04,120,'4월 01일','n');

insert into NOWSHOWING values(421,01,04,91,'4월 02일','n');
insert into NOWSHOWING values(422,01,04,92,'4월 02일','n');
insert into NOWSHOWING values(423,01,04,93,'4월 02일','n');
insert into NOWSHOWING values(424,01,04,94,'4월 02일','n');
insert into NOWSHOWING values(425,01,04,95,'4월 02일','n'); 
insert into NOWSHOWING values(426,04,04,96,'4월 02일','n');
insert into NOWSHOWING values(427,04,04,97,'4월 02일','n');
insert into NOWSHOWING values(428,04,04,98,'4월 02일','n');
insert into NOWSHOWING values(429,04,04,99,'4월 02일','n');
insert into NOWSHOWING values(430,04,04,100,'4월 02일','n'); 
insert into NOWSHOWING values(431,06,04,101,'4월 02일','n');
insert into NOWSHOWING values(432,06,04,102,'4월 02일','n');
insert into NOWSHOWING values(433,06,04,103,'4월 02일','n');
insert into NOWSHOWING values(434,06,04,104,'4월 02일','n');
insert into NOWSHOWING values(435,06,04,105,'4월 02일','n'); 
insert into NOWSHOWING values(436,09,04,106,'4월 02일','n');
insert into NOWSHOWING values(437,09,04,107,'4월 02일','n');
insert into NOWSHOWING values(438,09,04,108,'4월 02일','n');
insert into NOWSHOWING values(439,09,04,109,'4월 02일','n');
insert into NOWSHOWING values(440,09,04,110'4월 02일','n');
insert into NOWSHOWING values(441,16,04,111,'4월 02일','n');
insert into NOWSHOWING values(442,16,04,112,'4월 02일','n');
insert into NOWSHOWING values(443,16,04,113,'4월 02일','n');
insert into NOWSHOWING values(444,16,04,114,'4월 02일','n');
insert into NOWSHOWING values(445,16,04,115,'4월 02일','n');
insert into NOWSHOWING values(446,18,04,116,'4월 02일','n');
insert into NOWSHOWING values(447,18,04,117,'4월 02일','n');
insert into NOWSHOWING values(448,18,04,118,'4월 02일','n');
insert into NOWSHOWING values(449,18,04,119,'4월 02일','n');
insert into NOWSHOWING values(450,18,04,120,'4월 02일','n');

insert into NOWSHOWING values(451,01,04,91,'4월 03일','n');
insert into NOWSHOWING values(452,01,04,92,'4월 03일','n');
insert into NOWSHOWING values(453,01,04,93,'4월 03일','n');
insert into NOWSHOWING values(454,01,04,94,'4월 03일','n');
insert into NOWSHOWING values(455,01,04,95,'4월 03일','n'); 
insert into NOWSHOWING values(456,04,04,96,'4월 03일','n');
insert into NOWSHOWING values(457,04,04,97,'4월 03일','n');
insert into NOWSHOWING values(458,04,04,98,'4월 03일','n');
insert into NOWSHOWING values(459,04,04,99,'4월 03일','n');
insert into NOWSHOWING values(460,04,04,100,'4월 03일','n'); 
insert into NOWSHOWING values(461,06,04,101,'4월 03일','n');
insert into NOWSHOWING values(462,06,04,102,'4월 03일','n');
insert into NOWSHOWING values(463,06,04,103,'4월 03일','n');
insert into NOWSHOWING values(464,06,04,104,'4월 03일','n');
insert into NOWSHOWING values(465,06,04,105,'4월 03일','n'); 
insert into NOWSHOWING values(466,09,04,106,'4월 03일','n');
insert into NOWSHOWING values(467,09,04,107,'4월 03일','n');
insert into NOWSHOWING values(468,09,04,108,'4월 03일','n');
insert into NOWSHOWING values(469,09,04,109,'4월 03일','n');
insert into NOWSHOWING values(470,09,04,110,'4월 03일','n');
insert into NOWSHOWING values(471,16,04,111,'4월 03일','n');
insert into NOWSHOWING values(472,16,04,112,'4월 03일','n');
insert into NOWSHOWING values(473,16,04,113,'4월 03일','n');
insert into NOWSHOWING values(474,16,04,114,'4월 03일','n');
insert into NOWSHOWING values(475,16,04,115,'4월 03일','n');
insert into NOWSHOWING values(476,18,04,116,'4월 03일','n');
insert into NOWSHOWING values(477,18,04,117,'4월 03일','n');
insert into NOWSHOWING values(478,18,04,118,'4월 03일','n');
insert into NOWSHOWING values(479,18,04,119,'4월 03일','n');
insert into NOWSHOWING values(480,18,04,120,'4월 03일','n');
------------------------------------------------------------121

insert into NOWSHOWING values(481,01,05,121,'3월 31일','n');
insert into NOWSHOWING values(482,01,05,122,'3월 31일','n');
insert into NOWSHOWING values(483,01,05,123,'3월 31일','n');
insert into NOWSHOWING values(484,01,05,124,'3월 31일','n');
insert into NOWSHOWING values(485,01,05,125,'3월 31일','n'); 
insert into NOWSHOWING values(486,04,05,126,'3월 31일','n');
insert into NOWSHOWING values(487,04,05,127,'3월 31일','n');
insert into NOWSHOWING values(488,04,05,128,'3월 31일','n');
insert into NOWSHOWING values(489,04,05,129,'3월 31일','n');
insert into NOWSHOWING values(490,04,05,130,'3월 31일','n'); 
insert into NOWSHOWING values(491,06,05,131,'3월 31일','n');
insert into NOWSHOWING values(492,06,05,132,'3월 31일','n');
insert into NOWSHOWING values(493,06,05,133,'3월 31일','n');
insert into NOWSHOWING values(494,06,05,134,'3월 31일','n');
insert into NOWSHOWING values(495,06,05,135,'3월 31일','n'); 
insert into NOWSHOWING values(496,09,05,136,'3월 31일','n');
insert into NOWSHOWING values(497,09,05,137,'3월 31일','n');
insert into NOWSHOWING values(498,09,05,138,'3월 31일','n');
insert into NOWSHOWING values(499,09,05,149,'3월 31일','n');
insert into NOWSHOWING values(500,09,05,140,'3월 31일','n');
insert into NOWSHOWING values(501,16,05,141,'3월 31일','n');
insert into NOWSHOWING values(502,16,05,142,'3월 31일','n');
insert into NOWSHOWING values(503,16,05,143,'3월 31일','n');
insert into NOWSHOWING values(504,16,05,144,'3월 31일','n');
insert into NOWSHOWING values(505,16,05,145,'3월 31일','n');
insert into NOWSHOWING values(506,18,05,146,'3월 31일','n');
insert into NOWSHOWING values(507,18,05,147,'3월 31일','n');
insert into NOWSHOWING values(508,18,05,148,'3월 31일','n');
insert into NOWSHOWING values(509,18,05,149,'3월 31일','n');
insert into NOWSHOWING values(510,18,05,150,'3월 31일','n');


insert into NOWSHOWING values(511,01,05,121,'4월 01일','n');
insert into NOWSHOWING values(512,01,05,122,'4월 01일','n');
insert into NOWSHOWING values(513,01,05,123,'4월 01일','n');
insert into NOWSHOWING values(514,01,05,124,'4월 01일','n');
insert into NOWSHOWING values(515,01,05,125,'4월 01일','n'); 
insert into NOWSHOWING values(516,04,05,126,'4월 01일','n');
insert into NOWSHOWING values(517,04,05,127,'4월 01일','n');
insert into NOWSHOWING values(518,04,05,128,'4월 01일','n');
insert into NOWSHOWING values(519,04,05,129,'4월 01일','n');
insert into NOWSHOWING values(520,04,05,130,'4월 01일','n'); 
insert into NOWSHOWING values(521,06,05,131,'4월 01일','n');
insert into NOWSHOWING values(522,06,05,132,'4월 01일','n');
insert into NOWSHOWING values(523,06,05,133,'4월 01일','n');
insert into NOWSHOWING values(524,06,05,134,'4월 01일','n');
insert into NOWSHOWING values(525,06,05,135,'4월 01일','n'); 
insert into NOWSHOWING values(526,09,05,136,'4월 01일','n');
insert into NOWSHOWING values(527,09,05,137,'4월 01일','n');
insert into NOWSHOWING values(528,09,05,138,'4월 01일','n');
insert into NOWSHOWING values(529,09,05,139,'4월 01일','n');
insert into NOWSHOWING values(530,09,05,140,'4월 01일','n');
insert into NOWSHOWING values(531,16,05,141,'4월 01일','n');
insert into NOWSHOWING values(532,16,05,142,'4월 01일','n');
insert into NOWSHOWING values(533,16,05,143,'4월 01일','n');
insert into NOWSHOWING values(534,16,05,144,'4월 01일','n');
insert into NOWSHOWING values(535,16,05,145,'4월 01일','n');
insert into NOWSHOWING values(536,18,05,146,'4월 01일','n');
insert into NOWSHOWING values(537,18,05,147,'4월 01일','n');
insert into NOWSHOWING values(538,18,05,148,'4월 01일','n');
insert into NOWSHOWING values(539,18,05,149,'4월 01일','n');
insert into NOWSHOWING values(540,18,05,150,'4월 01일','n');

insert into NOWSHOWING values(541,01,05,121,'4월 02일','n');
insert into NOWSHOWING values(542,01,05,122,'4월 02일','n');
insert into NOWSHOWING values(543,01,05,123,'4월 02일','n');
insert into NOWSHOWING values(544,01,05,124,'4월 02일','n');
insert into NOWSHOWING values(545,01,05,125,'4월 02일','n'); 
insert into NOWSHOWING values(546,04,05,126,'4월 02일','n');
insert into NOWSHOWING values(547,04,05,127,'4월 02일','n');
insert into NOWSHOWING values(548,04,05,128,'4월 02일','n');
insert into NOWSHOWING values(549,04,05,129,'4월 02일','n');
insert into NOWSHOWING values(550,04,05,130,'4월 02일','n'); 
insert into NOWSHOWING values(551,06,05,131,'4월 02일','n');
insert into NOWSHOWING values(552,06,05,132,'4월 02일','n');
insert into NOWSHOWING values(553,06,05,133,'4월 02일','n');
insert into NOWSHOWING values(554,06,05,134,'4월 02일','n');
insert into NOWSHOWING values(555,06,05,135,'4월 02일','n'); 
insert into NOWSHOWING values(556,09,05,136,'4월 02일','n');
insert into NOWSHOWING values(557,09,05,137,'4월 02일','n');
insert into NOWSHOWING values(558,09,05,138,'4월 02일','n');
insert into NOWSHOWING values(559,09,05,139,'4월 02일','n');
insert into NOWSHOWING values(560,09,05,140,'4월 02일','n');
insert into NOWSHOWING values(561,16,05,141,'4월 02일','n');
insert into NOWSHOWING values(562,16,05,142,'4월 02일','n');
insert into NOWSHOWING values(563,16,05,143,'4월 02일','n');
insert into NOWSHOWING values(564,16,05,144,'4월 02일','n');
insert into NOWSHOWING values(565,16,05,145,'4월 02일','n');
insert into NOWSHOWING values(566,18,05,146,'4월 02일','n');
insert into NOWSHOWING values(567,18,05,147,'4월 02일','n');
insert into NOWSHOWING values(568,18,05,148,'4월 02일','n');
insert into NOWSHOWING values(569,18,05,149,'4월 02일','n');
insert into NOWSHOWING values(570,18,05,150,'4월 02일','n');

insert into NOWSHOWING values(571,01,05,121,'4월 03일','n');
insert into NOWSHOWING values(572,01,05,122,'4월 03일','n');
insert into NOWSHOWING values(573,01,05,123,'4월 03일','n');
insert into NOWSHOWING values(574,01,05,124,'4월 03일','n');
insert into NOWSHOWING values(575,01,05,125,'4월 03일','n'); 
insert into NOWSHOWING values(576,04,05,126,'4월 03일','n');
insert into NOWSHOWING values(577,04,05,127,'4월 03일','n');
insert into NOWSHOWING values(578,04,05,128,'4월 03일','n');
insert into NOWSHOWING values(579,04,05,129,'4월 03일','n');
insert into NOWSHOWING values(580,04,05,130,'4월 03일','n'); 
insert into NOWSHOWING values(581,06,05,131,'4월 03일','n');
insert into NOWSHOWING values(582,06,05,132,'4월 03일','n');
insert into NOWSHOWING values(583,06,05,133,'4월 03일','n');
insert into NOWSHOWING values(584,06,05,134,'4월 03일','n');
insert into NOWSHOWING values(585,06,05,135,'4월 03일','n'); 
insert into NOWSHOWING values(586,09,05,136,'4월 03일','n');
insert into NOWSHOWING values(587,09,05,137,'4월 03일','n');
insert into NOWSHOWING values(588,09,05,138,'4월 03일','n');
insert into NOWSHOWING values(589,09,05,139,'4월 03일','n');
insert into NOWSHOWING values(590,09,05,140,'4월 03일','n');
insert into NOWSHOWING values(591,16,05,141,'4월 03일','n');
insert into NOWSHOWING values(592,16,05,142,'4월 03일','n');
insert into NOWSHOWING values(593,16,05,143,'4월 03일','n');
insert into NOWSHOWING values(594,16,05,144,'4월 03일','n');
insert into NOWSHOWING values(595,16,05,145,'4월 03일','n');
insert into NOWSHOWING values(596,18,05,146,'4월 03일','n');
insert into NOWSHOWING values(597,18,05,147,'4월 03일','n');
insert into NOWSHOWING values(598,18,05,148,'4월 03일','n');
insert into NOWSHOWING values(599,18,05,149,'4월 03일','n');
insert into NOWSHOWING values(600,18,05,150,'4월 03일','n');
------------------------------------------------------------

------------------------------------------------------------150

insert into NOWSHOWING values(601,01,06,151,'3월 31일','n');
insert into NOWSHOWING values(602,01,06,152,'3월 31일','n');
insert into NOWSHOWING values(603,01,06,153,'3월 31일','n');
insert into NOWSHOWING values(604,01,06,154,'3월 31일','n');
insert into NOWSHOWING values(605,01,06,155,'3월 31일','n'); 
insert into NOWSHOWING values(606,04,06,156,'3월 31일','n');
insert into NOWSHOWING values(607,04,06,157,'3월 31일','n');
insert into NOWSHOWING values(608,04,06,158,'3월 31일','n');
insert into NOWSHOWING values(609,04,06,159,'3월 31일','n');
insert into NOWSHOWING values(610,04,06,160,'3월 31일','n'); 
insert into NOWSHOWING values(611,06,06,161,'3월 31일','n');
insert into NOWSHOWING values(612,06,06,162,'3월 31일','n');
insert into NOWSHOWING values(613,06,06,163,'3월 31일','n');
insert into NOWSHOWING values(614,06,06,164,'3월 31일','n');
insert into NOWSHOWING values(615,06,06,165,'3월 31일','n'); 
insert into NOWSHOWING values(616,09,06,166,'3월 31일','n');
insert into NOWSHOWING values(617,09,06,167,'3월 31일','n');
insert into NOWSHOWING values(618,09,06,168,'3월 31일','n');
insert into NOWSHOWING values(619,09,06,169,'3월 31일','n');
insert into NOWSHOWING values(620,09,06,170,'3월 31일','n');
insert into NOWSHOWING values(621,16,06,171,'3월 31일','n');
insert into NOWSHOWING values(622,16,06,172,'3월 31일','n');
insert into NOWSHOWING values(623,16,06,173,'3월 31일','n');
insert into NOWSHOWING values(624,16,06,174,'3월 31일','n');
insert into NOWSHOWING values(625,16,06,175,'3월 31일','n');
insert into NOWSHOWING values(626,18,06,176,'3월 31일','n');
insert into NOWSHOWING values(627,18,06,177,'3월 31일','n');
insert into NOWSHOWING values(628,18,06,178,'3월 31일','n');
insert into NOWSHOWING values(629,18,06,179,'3월 31일','n');
insert into NOWSHOWING values(630,18,06,180,'3월 31일','n');3


insert into NOWSHOWING values(631,01,06,151,'4월 01일','n');
insert into NOWSHOWING values(632,01,06,152,'4월 01일','n');
insert into NOWSHOWING values(633,01,06,153,'4월 01일','n');
insert into NOWSHOWING values(634,01,06,154,'4월 01일','n');
insert into NOWSHOWING values(635,01,06,155,'4월 01일','n'); 
insert into NOWSHOWING values(636,04,06,156,'4월 01일','n');
insert into NOWSHOWING values(637,04,06,157,'4월 01일','n');
insert into NOWSHOWING values(638,04,06,158,'4월 01일','n');
insert into NOWSHOWING values(639,04,06,159,'4월 01일','n');
insert into NOWSHOWING values(640,04,06,160,'4월 01일','n'); 
insert into NOWSHOWING values(641,06,06,161,'4월 01일','n');
insert into NOWSHOWING values(642,06,06,162,'4월 01일','n');
insert into NOWSHOWING values(643,06,06,163,'4월 01일','n');
insert into NOWSHOWING values(644,06,06,164,'4월 01일','n');
insert into NOWSHOWING values(645,06,06,165,'4월 01일','n'); 
insert into NOWSHOWING values(646,09,06,166,'4월 01일','n');
insert into NOWSHOWING values(647,09,06,167,'4월 01일','n');
insert into NOWSHOWING values(648,09,06,168,'4월 01일','n');
insert into NOWSHOWING values(649,09,06,169,'4월 01일','n');
insert into NOWSHOWING values(650,09,06,170,'4월 01일','n');
insert into NOWSHOWING values(651,16,06,171,'4월 01일','n');
insert into NOWSHOWING values(652,16,06,172,'4월 01일','n');
insert into NOWSHOWING values(653,16,06,173,'4월 01일','n');
insert into NOWSHOWING values(654,16,06,174,'4월 01일','n');
insert into NOWSHOWING values(655,16,06,175,'4월 01일','n');
insert into NOWSHOWING values(656,18,06,176,'4월 01일','n');
insert into NOWSHOWING values(657,18,06,177,'4월 01일','n');
insert into NOWSHOWING values(658,18,06,178,'4월 01일','n');
insert into NOWSHOWING values(659,18,06,179,'4월 01일','n');
insert into NOWSHOWING values(660,18,06,180,'4월 01일','n');

insert into NOWSHOWING values(661,01,06,151,'4월 02일','n');
insert into NOWSHOWING values(662,01,06,152,'4월 02일','n');
insert into NOWSHOWING values(663,01,06,153,'4월 02일','n');
insert into NOWSHOWING values(664,01,06,154,'4월 02일','n');
insert into NOWSHOWING values(665,01,06,155,'4월 02일','n'); 
insert into NOWSHOWING values(666,04,06,156,'4월 02일','n');
insert into NOWSHOWING values(667,04,06,157,'4월 02일','n');
insert into NOWSHOWING values(668,04,06,158,'4월 02일','n');
insert into NOWSHOWING values(669,04,06,159,'4월 02일','n');
insert into NOWSHOWING values(670,04,06,160,'4월 02일','n'); 
insert into NOWSHOWING values(671,06,06,161,'4월 02일','n');
insert into NOWSHOWING values(672,06,06,162,'4월 02일','n');
insert into NOWSHOWING values(673,06,06,163,'4월 02일','n');
insert into NOWSHOWING values(674,06,06,164,'4월 02일','n');
insert into NOWSHOWING values(675,06,06,165,'4월 02일','n'); 
insert into NOWSHOWING values(676,09,06,166,'4월 02일','n');
insert into NOWSHOWING values(677,09,06,167,'4월 02일','n');
insert into NOWSHOWING values(678,09,06,168,'4월 02일','n');
insert into NOWSHOWING values(679,09,06,169,'4월 02일','n');
insert into NOWSHOWING values(680,09,06,170,'4월 02일','n');
insert into NOWSHOWING values(681,16,06,171,'4월 02일','n');
insert into NOWSHOWING values(682,16,06,172,'4월 02일','n');
insert into NOWSHOWING values(683,16,06,173,'4월 02일','n');
insert into NOWSHOWING values(684,16,06,174,'4월 02일','n');
insert into NOWSHOWING values(685,16,06,175,'4월 02일','n');
insert into NOWSHOWING values(686,18,06,176,'4월 02일','n');
insert into NOWSHOWING values(687,18,06,177,'4월 02일','n');
insert into NOWSHOWING values(688,18,06,178,'4월 02일','n');
insert into NOWSHOWING values(689,18,06,179,'4월 02일','n');
insert into NOWSHOWING values(690,18,06,180,'4월 02일','n');

insert into NOWSHOWING values(691,01,06,151,'4월 03일','n');
insert into NOWSHOWING values(692,01,06,152,'4월 03일','n');
insert into NOWSHOWING values(693,01,06,153,'4월 03일','n');
insert into NOWSHOWING values(694,01,06,154,'4월 03일','n');
insert into NOWSHOWING values(695,01,06,155,'4월 03일','n'); 
insert into NOWSHOWING values(696,04,06,156,'4월 03일','n');
insert into NOWSHOWING values(697,04,06,157,'4월 03일','n');
insert into NOWSHOWING values(698,04,06,158,'4월 03일','n');
insert into NOWSHOWING values(699,04,06,159,'4월 03일','n');
insert into NOWSHOWING values(700,04,06,160,'4월 03일','n'); 
insert into NOWSHOWING values(701,06,06,161,'4월 03일','n');
insert into NOWSHOWING values(702,06,06,162,'4월 03일','n');
insert into NOWSHOWING values(703,06,06,163,'4월 03일','n');
insert into NOWSHOWING values(704,06,06,164,'4월 03일','n');
insert into NOWSHOWING values(705,06,06,165,'4월 03일','n'); 
insert into NOWSHOWING values(706,09,06,166,'4월 03일','n');
insert into NOWSHOWING values(707,09,06,167,'4월 03일','n');
insert into NOWSHOWING values(708,09,06,168,'4월 03일','n');
insert into NOWSHOWING values(709,09,06,179,'4월 03일','n');
insert into NOWSHOWING values(710,09,06,170,'4월 03일','n');
insert into NOWSHOWING values(711,16,06,171,'4월 03일','n');
insert into NOWSHOWING values(712,16,06,172,'4월 03일','n');
insert into NOWSHOWING values(713,16,06,173,'4월 03일','n');
insert into NOWSHOWING values(714,16,06,174,'4월 03일','n');
insert into NOWSHOWING values(715,16,06,175,'4월 03일','n');
insert into NOWSHOWING values(716,18,06,176,'4월 03일','n');
insert into NOWSHOWING values(717,18,06,177,'4월 03일','n');
insert into NOWSHOWING values(718,18,06,178,'4월 03일','n');
insert into NOWSHOWING values(719,18,06,179,'4월 03일','n');
insert into NOWSHOWING values(720,18,06,180,'4월 03일','n');

----------------------------------------------------------

-----------------------------------------------------------180

insert into NOWSHOWING values(721,01,07,181,'3월 31일','n');
insert into NOWSHOWING values(722,01,07,182,'3월 31일','n');
insert into NOWSHOWING values(723,01,07,183,'3월 31일','n');
insert into NOWSHOWING values(724,01,07,184,'3월 31일','n');
insert into NOWSHOWING values(725,01,07,185,'3월 31일','n'); 
insert into NOWSHOWING values(726,04,07,186,'3월 31일','n');
insert into NOWSHOWING values(727,04,07,187,'3월 31일','n');
insert into NOWSHOWING values(728,04,07,188,'3월 31일','n');
insert into NOWSHOWING values(729,04,07,189,'3월 31일','n');
insert into NOWSHOWING values(730,04,07,190,'3월 31일','n'); 
insert into NOWSHOWING values(731,06,07,191,'3월 31일','n');
insert into NOWSHOWING values(732,06,07,192,'3월 31일','n');
insert into NOWSHOWING values(733,06,07,193,'3월 31일','n');
insert into NOWSHOWING values(734,06,07,194,'3월 31일','n');
insert into NOWSHOWING values(735,06,07,195,'3월 31일','n'); 
insert into NOWSHOWING values(736,09,07,196,'3월 31일','n');
insert into NOWSHOWING values(737,09,07,197,'3월 31일','n');
insert into NOWSHOWING values(738,09,07,198,'3월 31일','n');
insert into NOWSHOWING values(739,09,07,199,'3월 31일','n');
insert into NOWSHOWING values(740,09,07,200,'3월 31일','n');
insert into NOWSHOWING values(741,16,07,201,'3월 31일','n');
insert into NOWSHOWING values(742,16,07,202,'3월 31일','n');
insert into NOWSHOWING values(743,16,07,203,'3월 31일','n');
insert into NOWSHOWING values(744,16,07,204,'3월 31일','n');
insert into NOWSHOWING values(745,16,07,205,'3월 31일','n');
insert into NOWSHOWING values(746,18,07,206,'3월 31일','n');
insert into NOWSHOWING values(747,18,07,207,'3월 31일','n');
insert into NOWSHOWING values(748,18,07,208,'3월 31일','n');
insert into NOWSHOWING values(749,18,07,209,'3월 31일','n');
insert into NOWSHOWING values(750,18,07,210,'3월 31일','n');

insert into NOWSHOWING values(751,01,07,181,'4월 01일','n');
insert into NOWSHOWING values(752,01,07,182,'4월 01일','n');
insert into NOWSHOWING values(753,01,07,183,'4월 01일','n');
insert into NOWSHOWING values(754,01,07,184,'4월 01일','n');
insert into NOWSHOWING values(755,01,07,185,'4월 01일','n'); 
insert into NOWSHOWING values(756,04,07,186,'4월 01일','n');
insert into NOWSHOWING values(757,04,07,187,'4월 01일','n');
insert into NOWSHOWING values(758,04,07,188,'4월 01일','n');
insert into NOWSHOWING values(759,04,07,189,'4월 01일','n');
insert into NOWSHOWING values(760,04,07,190,'4월 01일','n'); 
insert into NOWSHOWING values(761,06,07,191,'4월 01일','n');
insert into NOWSHOWING values(762,06,07,192,'4월 01일','n');
insert into NOWSHOWING values(763,06,07,193,'4월 01일','n');
insert into NOWSHOWING values(764,06,07,194,'4월 01일','n');
insert into NOWSHOWING values(765,06,07,195,'4월 01일','n'); 
insert into NOWSHOWING values(766,09,07,196,'4월 01일','n');
insert into NOWSHOWING values(767,09,07,197,'4월 01일','n');
insert into NOWSHOWING values(768,09,07,198,'4월 01일','n');
insert into NOWSHOWING values(769,09,07,199,'4월 01일','n');
insert into NOWSHOWING values(770,09,07,200,'4월 01일','n');
insert into NOWSHOWING values(771,16,07,201,'4월 01일','n');
insert into NOWSHOWING values(772,16,07,202,'4월 01일','n');
insert into NOWSHOWING values(773,16,07,203,'4월 01일','n');
insert into NOWSHOWING values(774,16,07,204,'4월 01일','n');
insert into NOWSHOWING values(775,16,07,205,'4월 01일','n');
insert into NOWSHOWING values(776,18,07,206,'4월 01일','n');
insert into NOWSHOWING values(777,18,07,207,'4월 01일','n');
insert into NOWSHOWING values(778,18,07,208,'4월 01일','n');
insert into NOWSHOWING values(779,18,07,209,'4월 01일','n');
insert into NOWSHOWING values(780,18,07,210,'4월 01일','n');

insert into NOWSHOWING values(781,01,07,181,'4월 02일','n');
insert into NOWSHOWING values(782,01,07,182,'4월 02일','n');
insert into NOWSHOWING values(783,01,07,183,'4월 02일','n');
insert into NOWSHOWING values(784,01,07,184,'4월 02일','n');
insert into NOWSHOWING values(785,01,07,185,'4월 02일','n'); 
insert into NOWSHOWING values(786,04,07,186,'4월 02일','n');
insert into NOWSHOWING values(787,04,07,187,'4월 02일','n');
insert into NOWSHOWING values(788,04,07,188,'4월 02일','n');
insert into NOWSHOWING values(789,04,07,189,'4월 02일','n');
insert into NOWSHOWING values(790,04,07,190,'4월 02일','n'); 
insert into NOWSHOWING values(791,06,07,191,'4월 02일','n');
insert into NOWSHOWING values(792,06,07,192,'4월 02일','n');
insert into NOWSHOWING values(793,06,07,193,'4월 02일','n');
insert into NOWSHOWING values(794,06,07,194,'4월 02일','n');
insert into NOWSHOWING values(795,06,07,195,'4월 02일','n'); 
insert into NOWSHOWING values(796,09,07,196,'4월 02일','n');
insert into NOWSHOWING values(797,09,07,197,'4월 02일','n');
insert into NOWSHOWING values(798,09,07,198,'4월 02일','n');
insert into NOWSHOWING values(799,09,07,199,'4월 02일','n');
insert into NOWSHOWING values(800,09,07,200,'4월 02일','n');
insert into NOWSHOWING values(801,16,07,201,'4월 02일','n');
insert into NOWSHOWING values(802,16,07,202,'4월 02일','n');
insert into NOWSHOWING values(803,16,07,203,'4월 02일','n');
insert into NOWSHOWING values(804,16,07,204,'4월 02일','n');
insert into NOWSHOWING values(805,16,07,205,'4월 02일','n');
insert into NOWSHOWING values(806,18,07,206,'4월 02일','n');
insert into NOWSHOWING values(807,18,07,207,'4월 02일','n');
insert into NOWSHOWING values(808,18,07,208,'4월 02일','n');
insert into NOWSHOWING values(809,18,07,209,'4월 02일','n');
insert into NOWSHOWING values(810,18,07,210,'4월 02일','n');

insert into NOWSHOWING values(811,01,07,181,'4월 03일','n');
insert into NOWSHOWING values(812,01,07,182,'4월 03일','n');
insert into NOWSHOWING values(813,01,07,183,'4월 03일','n');
insert into NOWSHOWING values(814,01,07,184,'4월 03일','n');
insert into NOWSHOWING values(815,01,07,185,'4월 03일','n'); 
insert into NOWSHOWING values(816,04,07,186,'4월 03일','n');
insert into NOWSHOWING values(817,04,07,187,'4월 03일','n');
insert into NOWSHOWING values(818,04,07,188,'4월 03일','n');
insert into NOWSHOWING values(819,04,07,189,'4월 03일','n');
insert into NOWSHOWING values(820,04,07,190,'4월 03일','n'); 
insert into NOWSHOWING values(821,06,07,191,'4월 03일','n');
insert into NOWSHOWING values(822,06,07,192,'4월 03일','n');
insert into NOWSHOWING values(823,06,07,193,'4월 03일','n');
insert into NOWSHOWING values(824,06,07,194,'4월 03일','n');
insert into NOWSHOWING values(825,06,07,195,'4월 03일','n'); 
insert into NOWSHOWING values(826,09,07,196,'4월 03일','n');
insert into NOWSHOWING values(827,09,07,197,'4월 03일','n');
insert into NOWSHOWING values(828,09,07,198,'4월 03일','n');
insert into NOWSHOWING values(829,09,07,199,'4월 03일','n');
insert into NOWSHOWING values(830,09,07,200,'4월 03일','n');
insert into NOWSHOWING values(831,16,07,201,'4월 03일','n');
insert into NOWSHOWING values(832,16,07,202,'4월 03일','n');
insert into NOWSHOWING values(833,16,07,203,'4월 03일','n');
insert into NOWSHOWING values(834,16,07,204,'4월 03일','n');
insert into NOWSHOWING values(835,16,07,205,'4월 03일','n');
insert into NOWSHOWING values(836,18,07,206,'4월 03일','n');
insert into NOWSHOWING values(837,18,07,207,'4월 03일','n');
insert into NOWSHOWING values(838,18,07,208,'4월 03일','n');
insert into NOWSHOWING values(839,18,07,209,'4월 03일','n');
insert into NOWSHOWING values(840,18,07,210,'4월 03일','n');
----------------------------------------------------------

-----------------------------------------------------------210

insert into NOWSHOWING values(721,01,07,181,'3월 31일','n');
insert into NOWSHOWING values(722,01,07,182,'3월 31일','n');
insert into NOWSHOWING values(723,01,07,183,'3월 31일','n');
insert into NOWSHOWING values(724,01,07,184,'3월 31일','n');
insert into NOWSHOWING values(725,01,07,185,'3월 31일','n'); 
insert into NOWSHOWING values(726,04,07,186,'3월 31일','n');
insert into NOWSHOWING values(727,04,07,187,'3월 31일','n');
insert into NOWSHOWING values(728,04,07,188,'3월 31일','n');
insert into NOWSHOWING values(729,04,07,189,'3월 31일','n');
insert into NOWSHOWING values(730,04,07,190,'3월 31일','n'); 
insert into NOWSHOWING values(731,06,07,191,'3월 31일','n');
insert into NOWSHOWING values(732,06,07,192,'3월 31일','n');
insert into NOWSHOWING values(733,06,07,193,'3월 31일','n');
insert into NOWSHOWING values(734,06,07,194,'3월 31일','n');
insert into NOWSHOWING values(735,06,07,195,'3월 31일','n'); 
insert into NOWSHOWING values(736,09,07,196,'3월 31일','n');
insert into NOWSHOWING values(737,09,07,197,'3월 31일','n');
insert into NOWSHOWING values(738,09,07,198,'3월 31일','n');
insert into NOWSHOWING values(739,09,07,199,'3월 31일','n');
insert into NOWSHOWING values(740,09,07,200,'3월 31일','n');
insert into NOWSHOWING values(741,16,07,201,'3월 31일','n');
insert into NOWSHOWING values(742,16,07,202,'3월 31일','n');
insert into NOWSHOWING values(743,16,07,203,'3월 31일','n');
insert into NOWSHOWING values(744,16,07,204,'3월 31일','n');
insert into NOWSHOWING values(745,16,07,205,'3월 31일','n');
insert into NOWSHOWING values(746,18,07,206,'3월 31일','n');
insert into NOWSHOWING values(747,18,07,207,'3월 31일','n');
insert into NOWSHOWING values(748,18,07,208,'3월 31일','n');
insert into NOWSHOWING values(749,18,07,209,'3월 31일','n');
insert into NOWSHOWING values(750,18,07,210,'3월 31일','n');

insert into NOWSHOWING values(751,01,07,181,'4월 01일','n');
insert into NOWSHOWING values(752,01,07,182,'4월 01일','n');
insert into NOWSHOWING values(753,01,07,183,'4월 01일','n');
insert into NOWSHOWING values(754,01,07,184,'4월 01일','n');
insert into NOWSHOWING values(755,01,07,185,'4월 01일','n'); 
insert into NOWSHOWING values(756,04,07,186,'4월 01일','n');
insert into NOWSHOWING values(757,04,07,187,'4월 01일','n');
insert into NOWSHOWING values(758,04,07,188,'4월 01일','n');
insert into NOWSHOWING values(759,04,07,189,'4월 01일','n');
insert into NOWSHOWING values(760,04,07,190,'4월 01일','n'); 
insert into NOWSHOWING values(761,06,07,191,'4월 01일','n');
insert into NOWSHOWING values(762,06,07,192,'4월 01일','n');
insert into NOWSHOWING values(763,06,07,193,'4월 01일','n');
insert into NOWSHOWING values(764,06,07,194,'4월 01일','n');
insert into NOWSHOWING values(765,06,07,195,'4월 01일','n'); 
insert into NOWSHOWING values(766,09,07,196,'4월 01일','n');
insert into NOWSHOWING values(767,09,07,197,'4월 01일','n');
insert into NOWSHOWING values(768,09,07,198,'4월 01일','n');
insert into NOWSHOWING values(769,09,07,199,'4월 01일','n');
insert into NOWSHOWING values(770,09,07,200,'4월 01일','n');
insert into NOWSHOWING values(771,16,07,201,'4월 01일','n');
insert into NOWSHOWING values(772,16,07,202,'4월 01일','n');
insert into NOWSHOWING values(773,16,07,203,'4월 01일','n');
insert into NOWSHOWING values(774,16,07,204,'4월 01일','n');
insert into NOWSHOWING values(775,16,07,205,'4월 01일','n');
insert into NOWSHOWING values(776,18,07,206,'4월 01일','n');
insert into NOWSHOWING values(777,18,07,207,'4월 01일','n');
insert into NOWSHOWING values(778,18,07,208,'4월 01일','n');
insert into NOWSHOWING values(779,18,07,209,'4월 01일','n');
insert into NOWSHOWING values(780,18,07,210,'4월 01일','n');

insert into NOWSHOWING values(781,01,07,181,'4월 02일','n');
insert into NOWSHOWING values(782,01,07,182,'4월 02일','n');
insert into NOWSHOWING values(783,01,07,183,'4월 02일','n');
insert into NOWSHOWING values(784,01,07,184,'4월 02일','n');
insert into NOWSHOWING values(785,01,07,185,'4월 02일','n'); 
insert into NOWSHOWING values(786,04,07,186,'4월 02일','n');
insert into NOWSHOWING values(787,04,07,187,'4월 02일','n');
insert into NOWSHOWING values(788,04,07,188,'4월 02일','n');
insert into NOWSHOWING values(789,04,07,189,'4월 02일','n');
insert into NOWSHOWING values(790,04,07,190,'4월 02일','n'); 
insert into NOWSHOWING values(791,06,07,191,'4월 02일','n');
insert into NOWSHOWING values(792,06,07,192,'4월 02일','n');
insert into NOWSHOWING values(793,06,07,193,'4월 02일','n');
insert into NOWSHOWING values(794,06,07,194,'4월 02일','n');
insert into NOWSHOWING values(795,06,07,195,'4월 02일','n'); 
insert into NOWSHOWING values(796,09,07,196,'4월 02일','n');
insert into NOWSHOWING values(797,09,07,197,'4월 02일','n');
insert into NOWSHOWING values(798,09,07,198,'4월 02일','n');
insert into NOWSHOWING values(799,09,07,199,'4월 02일','n');
insert into NOWSHOWING values(800,09,07,200,'4월 02일','n');
insert into NOWSHOWING values(801,16,07,201,'4월 02일','n');
insert into NOWSHOWING values(802,16,07,202,'4월 02일','n');
insert into NOWSHOWING values(803,16,07,203,'4월 02일','n');
insert into NOWSHOWING values(804,16,07,204,'4월 02일','n');
insert into NOWSHOWING values(805,16,07,205,'4월 02일','n');
insert into NOWSHOWING values(806,18,07,206,'4월 02일','n');
insert into NOWSHOWING values(807,18,07,207,'4월 02일','n');
insert into NOWSHOWING values(808,18,07,208,'4월 02일','n');
insert into NOWSHOWING values(809,18,07,209,'4월 02일','n');
insert into NOWSHOWING values(810,18,07,210,'4월 02일','n');

insert into NOWSHOWING values(811,01,07,181,'4월 03일','n');
insert into NOWSHOWING values(812,01,07,182,'4월 03일','n');
insert into NOWSHOWING values(813,01,07,183,'4월 03일','n');
insert into NOWSHOWING values(814,01,07,184,'4월 03일','n');
insert into NOWSHOWING values(815,01,07,185,'4월 03일','n'); 
insert into NOWSHOWING values(816,04,07,186,'4월 03일','n');
insert into NOWSHOWING values(817,04,07,187,'4월 03일','n');
insert into NOWSHOWING values(818,04,07,188,'4월 03일','n');
insert into NOWSHOWING values(819,04,07,189,'4월 03일','n');
insert into NOWSHOWING values(820,04,07,190,'4월 03일','n'); 
insert into NOWSHOWING values(821,06,07,191,'4월 03일','n');
insert into NOWSHOWING values(822,06,07,192,'4월 03일','n');
insert into NOWSHOWING values(823,06,07,193,'4월 03일','n');
insert into NOWSHOWING values(824,06,07,194,'4월 03일','n');
insert into NOWSHOWING values(825,06,07,195,'4월 03일','n'); 
insert into NOWSHOWING values(826,09,07,196,'4월 03일','n');
insert into NOWSHOWING values(827,09,07,197,'4월 03일','n');
insert into NOWSHOWING values(828,09,07,198,'4월 03일','n');
insert into NOWSHOWING values(829,09,07,199,'4월 03일','n');
insert into NOWSHOWING values(830,09,07,200,'4월 03일','n');
insert into NOWSHOWING values(831,16,07,201,'4월 03일','n');
insert into NOWSHOWING values(832,16,07,202,'4월 03일','n');
insert into NOWSHOWING values(833,16,07,203,'4월 03일','n');
insert into NOWSHOWING values(834,16,07,204,'4월 03일','n');
insert into NOWSHOWING values(835,16,07,205,'4월 03일','n');
insert into NOWSHOWING values(836,18,07,206,'4월 03일','n');
insert into NOWSHOWING values(837,18,07,207,'4월 03일','n');
insert into NOWSHOWING values(838,18,07,208,'4월 03일','n');
insert into NOWSHOWING values(839,18,07,209,'4월 03일','n');
insert into NOWSHOWING values(840,18,07,210,'4월 03일','n');
----------------------------------------------------------

----------------------------------------------------------240

insert into NOWSHOWING values(841,01,08,211,'3월 31일','n');
insert into NOWSHOWING values(842,01,08,212,'3월 31일','n');
insert into NOWSHOWING values(843,01,08,213,'3월 31일','n');
insert into NOWSHOWING values(844,01,08,214,'3월 31일','n');
insert into NOWSHOWING values(845,01,08,215,'3월 31일','n'); 
insert into NOWSHOWING values(846,04,08,216,'3월 31일','n');
insert into NOWSHOWING values(847,04,08,217,'3월 31일','n');
insert into NOWSHOWING values(848,04,08,218,'3월 31일','n');
insert into NOWSHOWING values(849,04,08,219,'3월 31일','n');
insert into NOWSHOWING values(850,04,08,220,'3월 31일','n'); 
insert into NOWSHOWING values(851,06,08,221,'3월 31일','n');
insert into NOWSHOWING values(852,06,08,222,'3월 31일','n');
insert into NOWSHOWING values(853,06,08,223,'3월 31일','n');
insert into NOWSHOWING values(854,06,08,224,'3월 31일','n');
insert into NOWSHOWING values(855,06,08,225,'3월 31일','n'); 
insert into NOWSHOWING values(856,09,08,226,'3월 31일','n');
insert into NOWSHOWING values(857,09,08,227,'3월 31일','n');
insert into NOWSHOWING values(858,09,08,228,'3월 31일','n');
insert into NOWSHOWING values(859,09,08,229,'3월 31일','n');
insert into NOWSHOWING values(860,09,08,230,'3월 31일','n');
insert into NOWSHOWING values(861,16,08,231,'3월 31일','n');
insert into NOWSHOWING values(862,16,08,232,'3월 31일','n');
insert into NOWSHOWING values(863,16,08,233,'3월 31일','n');
insert into NOWSHOWING values(864,16,08,234,'3월 31일','n');
insert into NOWSHOWING values(865,16,08,235,'3월 31일','n');
insert into NOWSHOWING values(866,18,08,236,'3월 31일','n');
insert into NOWSHOWING values(867,18,08,237,'3월 31일','n');
insert into NOWSHOWING values(868,18,08,238,'3월 31일','n');
insert into NOWSHOWING values(869,18,08,239,'3월 31일','n');
insert into NOWSHOWING values(870,18,08,240,'3월 31일','n');

insert into NOWSHOWING values(871,01,08,211,'4월 01일','n');
insert into NOWSHOWING values(872,01,08,212,'4월 01일','n');
insert into NOWSHOWING values(873,01,08,213,'4월 01일','n');
insert into NOWSHOWING values(874,01,08,214,'4월 01일','n');
insert into NOWSHOWING values(875,01,08,215,'4월 01일','n'); 
insert into NOWSHOWING values(876,04,08,216,'4월 01일','n');
insert into NOWSHOWING values(877,04,08,217,'4월 01일','n');
insert into NOWSHOWING values(878,04,08,218,'4월 01일','n');
insert into NOWSHOWING values(879,04,08,219,'4월 01일','n');
insert into NOWSHOWING values(880,04,08,220,'4월 01일','n'); 
insert into NOWSHOWING values(881,06,08,221,'4월 01일','n');
insert into NOWSHOWING values(882,06,08,222,'4월 01일','n');
insert into NOWSHOWING values(883,06,08,223,'4월 01일','n');
insert into NOWSHOWING values(884,06,08,224,'4월 01일','n');
insert into NOWSHOWING values(885,06,08,225,'4월 01일','n'); 
insert into NOWSHOWING values(886,09,08,226,'4월 01일','n');
insert into NOWSHOWING values(887,09,08,227,'4월 01일','n');
insert into NOWSHOWING values(888,09,08,228,'4월 01일','n');
insert into NOWSHOWING values(889,09,08,229,'4월 01일','n');
insert into NOWSHOWING values(890,09,08,230,'4월 01일','n');
insert into NOWSHOWING values(891,16,08,231,'4월 01일','n');
insert into NOWSHOWING values(892,16,08,232,'4월 01일','n');
insert into NOWSHOWING values(893,16,08,233,'4월 01일','n');
insert into NOWSHOWING values(894,16,08,234,'4월 01일','n');
insert into NOWSHOWING values(895,16,08,235,'4월 01일','n');
insert into NOWSHOWING values(896,18,08,236,'4월 01일','n');
insert into NOWSHOWING values(897,18,08,237,'4월 01일','n');
insert into NOWSHOWING values(898,18,08,238,'4월 01일','n');
insert into NOWSHOWING values(899,18,08,239,'4월 01일','n');
insert into NOWSHOWING values(900,18,08,240,'4월 01일','n');

insert into NOWSHOWING values(901,01,08,211,'4월 02일','n');
insert into NOWSHOWING values(902,01,08,212,'4월 02일','n');
insert into NOWSHOWING values(903,01,08,213,'4월 02일','n');
insert into NOWSHOWING values(904,01,08,214,'4월 02일','n');
insert into NOWSHOWING values(905,01,08,215,'4월 02일','n'); 
insert into NOWSHOWING values(906,04,08,216,'4월 02일','n');
insert into NOWSHOWING values(907,04,08,217,'4월 02일','n');
insert into NOWSHOWING values(908,04,08,218,'4월 02일','n');
insert into NOWSHOWING values(909,04,08,219,'4월 02일','n');
insert into NOWSHOWING values(910,04,08,220,'4월 02일','n'); 
insert into NOWSHOWING values(911,06,08,221,'4월 02일','n');
insert into NOWSHOWING values(912,06,08,222,'4월 02일','n');
insert into NOWSHOWING values(913,06,08,223,'4월 02일','n');
insert into NOWSHOWING values(914,06,08,224,'4월 02일','n');
insert into NOWSHOWING values(915,06,08,225,'4월 02일','n'); 
insert into NOWSHOWING values(916,09,08,226,'4월 02일','n');
insert into NOWSHOWING values(917,09,08,227,'4월 02일','n');
insert into NOWSHOWING values(918,09,08,228,'4월 02일','n');
insert into NOWSHOWING values(919,09,08,229,'4월 02일','n');
insert into NOWSHOWING values(920,09,08,230,'4월 02일','n');
insert into NOWSHOWING values(921,16,08,231,'4월 02일','n');
insert into NOWSHOWING values(922,16,08,232,'4월 02일','n');
insert into NOWSHOWING values(923,16,08,233,'4월 02일','n');
insert into NOWSHOWING values(924,16,08,234,'4월 02일','n');
insert into NOWSHOWING values(925,16,08,235,'4월 02일','n');
insert into NOWSHOWING values(926,18,08,236,'4월 02일','n');
insert into NOWSHOWING values(927,18,08,237,'4월 02일','n');
insert into NOWSHOWING values(928,18,08,238,'4월 02일','n');
insert into NOWSHOWING values(929,18,08,239,'4월 02일','n');
insert into NOWSHOWING values(930,18,08,240,'4월 02일','n');

insert into NOWSHOWING values(931,01,08,211,'4월 03일','n');
insert into NOWSHOWING values(932,01,08,212,'4월 03일','n');
insert into NOWSHOWING values(933,01,08,213,'4월 03일','n');
insert into NOWSHOWING values(934,01,08,214,'4월 03일','n');
insert into NOWSHOWING values(935,01,08,215,'4월 03일','n'); 
insert into NOWSHOWING values(936,04,08,216,'4월 03일','n');
insert into NOWSHOWING values(937,04,08,217,'4월 03일','n');
insert into NOWSHOWING values(938,04,08,218,'4월 03일','n');
insert into NOWSHOWING values(939,04,08,219,'4월 03일','n');
insert into NOWSHOWING values(940,04,08,220,'4월 03일','n'); 
insert into NOWSHOWING values(941,06,08,221,'4월 03일','n');
insert into NOWSHOWING values(942,06,08,222,'4월 03일','n');
insert into NOWSHOWING values(943,06,08,223,'4월 03일','n');
insert into NOWSHOWING values(944,06,08,224,'4월 03일','n');
insert into NOWSHOWING values(945,06,08,225,'4월 03일','n'); 
insert into NOWSHOWING values(946,09,08,226,'4월 03일','n');
insert into NOWSHOWING values(947,09,08,227,'4월 03일','n');
insert into NOWSHOWING values(948,09,08,228,'4월 03일','n');
insert into NOWSHOWING values(949,09,08,229,'4월 03일','n');
insert into NOWSHOWING values(950,09,08,230,'4월 03일','n');
insert into NOWSHOWING values(951,16,08,231,'4월 03일','n');
insert into NOWSHOWING values(952,16,08,232,'4월 03일','n');
insert into NOWSHOWING values(953,16,08,233,'4월 03일','n');
insert into NOWSHOWING values(954,16,08,234,'4월 03일','n');
insert into NOWSHOWING values(955,16,08,235,'4월 03일','n');
insert into NOWSHOWING values(956,18,08,236,'4월 03일','n');
insert into NOWSHOWING values(957,18,08,237,'4월 03일','n');
insert into NOWSHOWING values(958,18,08,238,'4월 03일','n');
insert into NOWSHOWING values(959,18,08,239,'4월 03일','n');
insert into NOWSHOWING values(960,18,08,240,'4월 03일','n');


select * from NOWSHOWING;