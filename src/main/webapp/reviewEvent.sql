create sequence rv_seq;

drop table review;

create table review( -- 리뷰게시판
 rvNum NUMBER primary Key, --리뷰게시판번호
 rvTitle VARCHAR2(100), --리뷰게시판 제목
 rvContent VARCHAR2(4000), --리뷰게시판 내용
 id VARCHAR2(20), --사용자 id
 rvGrade NUMBER, -- 평점
 rvLike NUMBER, -- 좋아요
 rvDate DATE, -- 게시글 작성날짜
 rvDel VARCHAR2(2) default 'n', -- 게시글 삭제
 mvTitle VARCHAR2(500), -- 영화제목
 mvCode NUMBER,-- 영화코드
 rvReadCount NUMBER -- 리뷰 조회수
);
select * from review;

-----------------------------------------------------------------------------------------------------------------------------
create sequence ev_seq;

delete event;
drop table event;

create table event(	-- 이벤트게시판
evNum number(10) primary key,	-- 이벤트 게시판 번호
evTitle varchar2(20),	-- 이벤트 게시판 제목
evContent varchar2(1000),	-- 이벤트 게시판 내용
id varchar2(20),	-- 사용자 id
evTitlePhoto varchar2(100),	-- 이벤트 게시글 제목 사진
evContentPhoto varchar2(100),	-- 이벤트 게시글 내용 사진
evDate date, -- 게시글 작성날짜
evStart varchar2(20),	--이벤트 시작날짜
evEnd varchar2(20),	-- 이벤트 종료날짜
evDel VARCHAR2(2) default 'n', -- 게시글 삭제
evReadCount NUMBER -- 조회수
);

insert into event values(1, 'sonicEvent1', 'test1', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(2, 'sonicEvent2', 'test2', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(3, 'sonicEvent3', 'test3', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(4, 'sonicEvent4', 'test4', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(5, 'sonicEvent5', 'test5', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(6, 'sonicEvent6', 'test6', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(7, 'sonicEvent7', 'test7', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(8, 'sonicEvent8', 'test8', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(9, 'sonicEvent9', 'test9', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(10, 'sonicEvent10', 'test10', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(11, 'sonicEvent11', 'test11', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(12, 'sonicEvent12', 'test12', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(13, 'sonicEvent13', 'test13', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(14, 'sonicEvent14', 'test14', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(15, 'sonicEvent15', 'test15', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(16, 'sonicEvent16', 'test16', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(17, 'sonicEvent17', 'test17', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(18, 'sonicEvent18', 'test18', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(19, 'sonicEvent19', 'test19', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
select * from event;

---------------------------------------------------------------------------------------------------------------
drop table likes;

delete LIKES;
create table likes (
likeNum number primary key, 
rvNum number, 
id VARCHAR2(20) 
);

select * from likes;
