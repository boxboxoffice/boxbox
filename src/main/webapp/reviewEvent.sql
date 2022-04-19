create sequence rv_seq;

delete REVIEW;
drop table review;

create table review( -- 리뷰게시판
 rvNum NUMBER primary Key, --리뷰게시판번호
 rvTitle VARCHAR2(100), --리뷰게시판 제목
 rvContent VARCHAR2(4000), --리뷰게시판 내용
 id VARCHAR2(20), --사용자 id
 mvGrade NUMBER(10), -- 평점
 rvLike NUMBER, -- 좋아요
 rvDate DATE, -- 게시글 작성날짜
 rvDel VARCHAR2(2) default 'n', -- 게시글 삭제
 mvTitle VARCHAR2(500), -- 영화제목
 mvCode NUMBER,-- 영화코드
 rvReadCount NUMBER, -- 리뷰 조회수
 rpCount NUMBER -- 댓글수
);
select * from review;



insert into review values(1, '쏘쏘', 'test', 'test3', 7, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(2, '대 명 작', 'test', 'test3', 10, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(3, '영화 너무 김', 'test', 'test3', 2, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(4, '노잼', 'test', test3, 3, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(5, '나쁘지 않았음', 'test', 'test3', 6, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(6, '쏘쏘2', 'test', 'test3', 7, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(7, '대 명 작2', 'test', 'test3', 10, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(8, '영화 너무 김2', 'test', 'test3', 2, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(9, '노잼2', 'test', test3, 3, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(10, '나쁘지 않았음2', 'test', 'test3', 6, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(11, '쏘쏘3', 'test', 'test3', 7, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(12, '대 명 작3', 'test', 'test3', 10, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(13, '영화 너무 김3', 'test', 'test3', 2, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(14, '노잼3', 'test', 'test3', 3, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(15, '나쁘지 않았음3', 'test', 'test3', 6, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(16, '쏘쏘4', 'test', 'test3', 7, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(17, '대 명 작4', 'test', 'test3', 10, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(18, '영화 너무 김4', 'test', 'test3', 2, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(19, '노잼4', 'test', 'test3', 3, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(20, '나쁘지 않았음4', 'test', 'test3', 6, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(21, '쏘쏘5', 'test', 'test3', 7, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(22, '대 명 작5', 'test', 'test3', 10, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(23, '영화 너무 김5', 'test', 'test3', 2, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(24, '노잼5', 'test', 'test3', 3, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(25, '나쁘지 않았음5', 'test', 'test3', 6, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(26, '쏘쏘6', 'test', 'test3', 7, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(27, '대 명 작6', 'test', 'test3', 10, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(28, '영화 너무 김6', 'test', 'test3', 2, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(29, '노잼6', 'test', 'test3', 3, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(30, '나쁘지 않았음6', 'test', 'test3', 6, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);

-----------------------------------------------------------------------------------------------------------------------------
create sequence ev_seq;

delete event;

drop table event;

create table event(	-- 이벤트게시판
evNum number(10) primary key,	-- 이벤트 게시판 번호
evTitle varchar2(100),	-- 이벤트 게시판 제목
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

insert into event values(1, '캐시비/티머니', ' ', 'master', 'eventTitle9.jpg', 'eventContent9.jpg', sysdate, '2018-09-03', '2023-08-31', 'n', 0);
insert into event values(2, '마이신한포인트', ' ', 'master', 'eventTitle10.jpg', 'eventContent10.jpg', sysdate, '2019-09-01', '2023-06-30', 'n', 0);
insert into event values(3, '기아레드멤버스', ' ', 'master', 'eventTitle11.jpg', 'eventContent11.jpg', sysdate, '2019-12-27', '2023-12-31', 'n', 0);
insert into event values(4, '현대블루멤버스', ' ', 'master', 'eventTitle12.jpg', 'eventContent12.jpg', sysdate, '2019-12-27', '2023-12-31', 'n', 0);
insert into event values(5, '굿노트다이어리', ' ', 'master', 'eventTitle7.jpg', 'eventContent7.jpg', sysdate, '2021-05-31', '2099-12-31', 'n', 0);
insert into event values(6, '소닉 투명카드 증정', ' ', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-06', '2022-04-30', 'n', 0);
insert into event values(7, '소방공무원', ' ', 'master', 'eventTitle4.jpg', 'eventContent4.jpg', sysdate, '2022-01-01', '2022-12-31', 'n', 0);
insert into event values(8, '국군장병', ' ', 'master', 'eventTitle5.jpg', 'eventContent5.jpg', sysdate, '2022-01-01', '2022-12-31', 'n', 0);
insert into event values(9, '경찰-해양경찰', ' ', 'master', 'eventTitle6.jpg', 'eventContent6.jpg', sysdate, '2022-01-01', '2022-12-31', 'n', 0);
insert into event values(10, '카카오뱅크', ' ', 'master', 'eventTitle8.jpg', 'eventContent8.jpg', sysdate, '2022-02-01', '2022-07-31', 'n', 0);
insert into event values(11, '모비우스 아트카드', ' ', 'master', 'mobrbiusTitle.jpg', 'mobrbiusContent.jpg', sysdate, '2022-03-30', '2022-04-30', 'n', 0);
insert into event values(12, '4월 릴레이 관림 이벤트', ' ', 'master', 'eventTitle.jpg', 'eventContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(13, '아카데미 수상작 상영전', ' ', 'master', 'eventTitle2.jpg', 'eventContent2.jpg', sysdate, '2022-03-31', '2022-04-12', 'n', 0);
insert into event values(14, '"뜨거운 피" 를 보여주세요', ' ', 'master', 'eventTitle3.jpg', 'eventContent3.jpg', sysdate, '2022-03-30', '2022-04-12', 'n', 0);
insert into event values(15, '소닉 현장 증정 이벤트', ' ', 'master', 'sonicTitle2.jpg', 'sonicContent2.jpg', sysdate, '2022-04-06', '2022-04-30', 'n', 0);
insert into event values(16, '소닉 아트카드', ' ', 'master', 'sonicTitle3.jpg', 'sonicContent3.jpg', sysdate, '2022-04-06', '2022-04-30', 'n', 0);
insert into event values(17, '모비우스 포스터 증정', ' ', 'master', 'mobrbiusTitle2.jpg', 'mobrbiusContent2.jpg', sysdate, '2022-03-30', '2022-04-30', 'n', 0);
insert into event values(18, '소닉 스페셜 경품 이벤트', ' ', 'master', 'sonicTitle4.jpg', 'sonicContent4.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(19, '개봉 8주차 이벤트', ' ', 'master', '0Title.jpg', 'sonicContent.jpg', sysdate, '2022-04-07', '2022-04-14', 'n', 0);
insert into event values(20, '스텔라 무대인사', ' ', 'master', 'stellarTitle.jpg', 'stellarContent.jpg', sysdate, '2022-04-09', '2022-04-10', 'n', 0);
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
---------------------------------------------------------------------------------------------------------------
delete reply;

drop table reply;

create table reply (
rpNum number(10) primary key,
rvNum number(10),
rpContent varchar2(1000),
id varchar2(20),
rpDate Date, 
rpDel varchar2(2) default 'n', 
ref number(10),
ref_level number(10),	-- 깊이
ref_step number(10)		-- 순서
);

select * from reply;
