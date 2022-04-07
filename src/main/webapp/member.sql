drop table member;

create table member(
	id varchar2(20) primary key, --아이디
	password varchar2(20), -- 패스워드
	name varchar2(20), --이름
	textcount number(10), -- 작성글 수
	ticketcount number(10), -- 예매 횟수 
	tel varchar2(100), -- 전화번호
	address varchar2(500), --주소
	reg_date date, --등록일
	score number(10),
	memberDel varchar(2) default 'n' -- 삭제여부
);

select * from member;

insert into member values('test1','123','신현태',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('test2','123','김진성',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('test3','123','김진만',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('test4','123','서정훈',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('master','master','master',0,0,'010-0000-0000','없음',sysdate,100,'n');

