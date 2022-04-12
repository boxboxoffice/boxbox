-- 영화   
drop table movie;

CREATE TABLE movie (
mvCode NUMBER PRIMARY KEY NOT NULL, -- 영화번호
mvTitle varchar2(300), -- 영화제목
mvTag NUMBER, -- 1이면 상영종료, 2- 상영중 3- 상영예정
openDate DATE, -- 개봉일
director VARCHAR2(30), -- 감독
majorActor VARCHAR2(50), -- 주역 배우
runningTime VARCHAR2(20), -- 진행시간
genre VARCHAR2(50), -- 장르
poster VARCHAR2(300), -- 포스터
mvInfo VARCHAR2(2000), -- 영화 정보
mvContent VARCHAR2(4000), --줄거리
mvPrice NUMBER,--영화가격
mvGrade VARCHAR2(10), -- 평점
movieStar NUMBER(10), -- 평점(별)
mvAge VARCHAR2(30) -- 관람 연령
);
select * from movie;
 
-- 영화 DB
	INSERT INTO movie
	VALUES( 1, '스파이더맨 노 웨이 홈' , 2 , '2021.12.15' , '존 왓츠' , '톰 홀랜드', '148분', '액션', 'SpiderMan.jpg', '스파이더맨: 노 웨이 홈은 마블 시네마틱 유니버스의 27번째 장편 영화다. 스파이더맨 시리즈의 3번째 작품', '정체가 탄로난 스파이더맨 피터 파커(톰 홀랜드)가 문제를 해결하기 위해 닥터 스트레인지(베네딕트 컴버배치)의 도움을 받던 중 뜻하지 않게 멀티버스가 열리게 되고, 이를 통해 닥터 옥토퍼스(알프리드 몰리나) 등 각기 다른 차원의 숙적들이 나타나며 사상 최악의 위기를 맞게 되는데....', 10000 , '9.1점', 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 2, '닥터 스트레인지 : 대혼돈의 멀티버스' , 3 , '2022.5.4' , '샘 레이미' , '베네딕트 컴버배치' , '미정' , '액션' , 'DoctorStrange.jpg' , '마블 시네마틱 유니버스 페이즈 4의 5번째 영화이자, 닥터 스트레인지 실사영화 시리즈이며 6년만에 개봉하는 2번째 작품이다.' , '스티븐 스트레인지 박사는 멀티버스의 문을 여는 금기의 주문을 시전하여 다른 차원의 스트레인지와 맞닥뜨린다. 다른 차원의 스트레인지에 대항하고자 힘을 모은다.' , 10000 , '미정', 5 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 3, '반지의 제왕: 반지 원정대' , 1 , '2001.5.4' , '피터 잭슨' , '숀 애스틴' , '228분' , '판타지' , 'TheRordOftheRing.jpg' , 'J. R. R. 톨킨이 집필한 판타지 소설 《반지의 제왕》의 실사 영화 3부작.' , '절대 반지를 손에 넣게 된 프로도 베긴스는 반지를 파괴해 중간계를 구하기 위해, 반지 원정대와 같이 여정을 떠나는데... ', 10000 , '9.36점', 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 4, '극장판 주술회전 0' , 2 , '2021.12.24' , '박성후' , '오가타 메구미' , '105분' , '에니메이션' , 'GekijoubanJujutsuKaisen0.jpg' , '아쿠타미 게게의 만화 주술회전 0권을 원작으로 하는 극장판이자 제작사 MAPPA의 이 세상의 한구석에 이후 5년만의 2번째 극장 애니메이션이다.' , '주술사만의 낙원을 만들려는 게토는 비술사를 섬멸하겠다면서, 신주쿠와 교토에 천의 저주를 내리는데… 과연 옷코츠는 게토를 막을 수 있을까? 그리고 리카의 저주를 풀 수 있을까?' , 10000 , '8.1점', 5 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 5, '이터널스' , 1 , '2021.11.3' , '클로이 자오' , '마동석' , '156분' , '액션' , 'Eternals.jpg' , '마블 시네마틱 유니버스에 등장하는 외계 종족 집단 이터널스의 이야기' , '외계에서 고대 지구에 도래한 존재들인 이터널스, 고대 인류를 이끌긴 해도, 셀레스티얼의 지시로 데비안츠와 관련된 사건 외에는 인류사에 직접적으로 개입하지는 않았던 이들에게 어느 순간 이변이 일어나는데...', 10000 , '6.5점' , 4 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 6, '더 배트맨' , 2 , '2022.3.1' , '맷 리브스' , '로버트 패틴슨' , '176분' , '스릴러' , 'TheBatman.jpg', '《더 배트맨》은 2022년 개봉한 미국의 슈퍼히어로 영화이며, 맷 리브스가 감독과 공동각본을 맡았다. 영화 《배트맨》 시리즈 리부트 영화이다.', '무장강도에게 부모님을 잃은 브루스 웨인은 배트맨으로서 자경단으로서 활약하고있다.', 10000 , '6.8점' , 4 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 7, '조커' , 1 , '2019.10.2' , '토드 필립스' , '호아킨 피닉스' , '123분' , '범죄' , 'Joker.jpg' , '호아킨 피닉스가 주연을 맡아 DC 코믹스의 캐릭터 조커를 연기하는 토드 필립스 감독의 범죄 스릴러 영화. DC 필름스에서 제작하지만 DC 확장 유니버스에 속하지 않는 완전히 독립적인 영화다' , '광대 아서는 고담 교외의 한 작은 극장 옆 폐업직전의 뮤직샵에서 노란 광고판을 들고 춤을 추며 땡처리 광고를 하던 도중, 10대 양아치들에게 광고판을 빼앗긴다. 한참을 달려 막다른 골목까지 쫓아가지만, 숨어있던 양아치에게 광고판으로 역관광을 당해 쓰러지고 발로 마구잡이 구타를 당한 뒤, 소지품도 싹 다 털려버리고 만다. 바닥에 홀로 널브러진 아서와 부서진 광고판을 뒤로 한 채 <JOKER> 타이틀이 화면을 꽉 채우며 영화가 시작된다.', 10000 , '9점' , 5 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 8, '덩케르트' , 1 , '2017.7.20' , '크리스토퍼 놀란' , '톰 하디' , '106분' , '전쟁' , 'Dunkerque.jpg' , '2017년 7월 20일 개봉한 크리스토퍼 놀란 감독의 전쟁 영화. 제2차 세계 대전 중 일어난 됭케르크 철수작전을 소재로 한다.' , '연합군은 여전히 고립 상황에 직면해 있었고, 영국군 사령부는 육-해-공을 가리지 않는 계속된 독일군의 공격 속에서 됭케르크 철수 계획을 세웠다. 그리하여 1940년 5월 28일부터 6월 4일까지 계속된 작전 끝에 338,226명의 영국군 및 프랑스군 장병들을 잉글랜드로 철수시킬 수 있었다. 당시 영국은 본격적으로 전쟁준비를 끝낸 시점이 아니라 저 40만 병력은 가용가능한 전체 병력을 총 투입한 셈이었고, 만약 이들이 포위 섬멸 당했으면 영국은 더 이상 싸울 병력이 없었을 상황이다. 다행히 이들이 철수에 성공하여 영국은 훗날 반격을 할 수 있는 전력을 보존했으며, 처칠을 비롯한 영국인들은 전쟁은 이제부터 시작이라는 자세로 반격을 위해 노력한다. 연합군은 이후 4년간 전 세계에서 독일과 싸움을 벌이다가 프랑스령의 노르망디 해안에서 사상 최대의 상륙작전을 감행할 수 있었다. 때문에 이 철수작전은 2차 세계대전에서 가장 극적인 상황 중 하나로 평가된다.' , 10000 , '8점' , 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 9, '씽2게더' , 2 , '2022.1.5' , '가스 제닝스' , '매튜 맥커너히' , '110분' , '음악' , 'Sing2.jpg' , '일루미네이션 엔터테인먼트의 3D 애니메이션 씽의 속편.' , '대국민 오디션 이후 각자의 자리에서 꿈을 이루고 있는 버스터 문(매튜 맥커너히)과 크루들에게 레드 쇼어 시티에서 전 세계가 주목하는 사상 최고의 쇼가 펼쳐진다는 소식이 들려오고 버스터 문과 크루들은 도전에 나선다. 그러나 최고의 스테이지에 서기 위한 경쟁은 이전과는 비교도 할 수 없을 만큼 치열하고, 버스터 문은 완벽한 라이브를 위해 종적을 감춘 레전드 뮤지션 클레이(보노)를 캐스팅하겠다는 파격 선언을 하는데!' , 10000 , '7.5점' , 5 , '전체이용가');
	INSERT INTO movie
	VALUES( 10, '수퍼 소닉 2' , 3 , '2022.4.6' , '제프 파울러' , '짐 캐리' , '110분 ', '액션' , 'Sonic2.jpg' , '2022년 4월 8일 개봉 예정인 원작 소닉 더 헤지혹 시리즈의 2번째 실사 영화이자 수퍼 소닉의 속편이다.' , '도시의 악당들을 쫓아내며 지구를 지키는 히어로 소닉은 소닉에게 쫓겨나 버섯 행성에서 힘을 키우던 악당 로보트릭을 다시 처치하기 위해 지구를 지배하기 위해 다시 돌아옵니다. 업그레이드된 로보트닉과 강력한 펀치 파워 너클즈의 공격을 당하던 소닉은 파트너 테일즈의 도움으로 위기를 모면하게 되고 소닉과 테일즈, 로보트닉과 너클즈의 지구를 사수하기 위한 상황이 시작된다.' , 10000 , '9.0점' , 4 , '전체이용가');
	INSERT INTO movie
	VALUES( 11, '잭 스나이더의 저스티스 리그' , 1 , '2021.3.18' , '잭 스나이더' , '벤 에플렉' , '362분' , '액션' , 'Justiceleague.jpg' , 'DC 확장 유니버스의 5번째 영화 저스티스 리그의 감독판이다. 일명 스나이더 컷으로 불린다. 한국시간 기준으로 2021년 3월 18일 오후 6시에 HBO 맥스를 통해 공개되었다. ' , '배트맨 대 슈퍼맨: 저스티스의 시작 후반부 둠스데이와의 전투 장면에서 이어진다. 슈퍼맨이 둠스데이에게 죽임을 당하면서 외치는 비명이 퍼지면서 사이보그의 집에 있던 인간 측의 마더박스에 움직임이 감지된다. 그 시각 제네시스 체임버 또한 슈퍼맨의 비명에 반응해 세 개의 마더박스와 스테픈울프의 형상을 홀로그램으로 재현하고 이를 체임버 안에 있던 렉스 루터가 보게 된다. 비명은 바다속 아틀란티스에 보관되어 있는 아틀란티스 측의 마더박스에도 닿게 되고 메라는 심상치 않음을 직감한다. 그리고 비명은 데미스키라 측의 마더박스가 보관되어 있는 아마존의 마더박스 보관소에도 닿아 마더박스의 균열을 감지한 전사들은 여왕에게 알리라고 한다. 이후 브루스 웨인은 산을 넘어 어느 외딴 항구 마을에 도착한다.', 10000  , '7.0점' , 4 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 12, '토르 : 러브 앤 썬더' , 3 , '2022.7.8' , '타이카 와이티티' , '크리스 헴스워스' , '133분' , '액션' , 'Thor4.jpg' , '마블 시네마틱 유니버스 페이즈 4의 6번째 작품이자 토르 실사영화 시리즈의 4번째 작품이며 5년만에 개봉하는 영화이다. 현재의 토르 시리즈는 이번 편이 마지막 편이다.' , '이 영화는 여성 슈퍼히어로인 또 다른 토르, 제인 포스터가 여주인공이다. 그녀는 토르 대신 무게를 부서진 묠니르를 복구해 휘두른다. 하지만 제인 포스터가 암과 투병하는 모습을 보이며, 토르의 망치를 집어들고 나면 매번 생명력과 힘을 잃게되는데...' , 10000 , '미정' , 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 13, '모비우스' , 3 , '2022.11.11' , '다니엘 에스피노사' , '자레도 레토' , '104분' , '액션' , 'Morbius.jpg' , '다니엘 에스피노사가 만든 스파이더맨과 세계관을 공유하는 영화' , '희귀혈액병을 앓고 있는 생화학자 ‘모비우스’(자레드 레토)는 동료인 ‘마르틴’(아드리아 아르호나)과 함께 치료제 개발에 몰두한다. 흡혈 박쥐를 연구하던 중 마침내 치료제 개발에 성공한 ‘모비우스’는 새 생명과 강력한 힘을 얻게 되지만, 동시에 흡혈을 하지 않고는 생명을 유지할 수 없게 된다. 그러던 중 ‘모비우스’와 같은 병을 앓고 있던 그의 친구 ‘마일로’(맷 스미스)도 ‘모비우스’와 같은 힘을 얻게 되는데… 세상을 구할 능력, 파괴할 본능! 마블 최강의 안티 히어로가 탄생한다!', 10000 , '미정' , 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 14, '스텔라' , 3 , '2022.04.06' , '권수경' , '손호준' , '98분' , 'SF', 'stellar.jpg' , '권수경 감독의 코미디 추적 드라마 영화' , '막다른 인생 제대로 한 번 달려본 적 없는 차량담보업계 에이스 ‘영배’(손호준). 보스 ‘서사장’(허성태)이 하룻밤 맡긴 슈퍼카가 절친 ‘동식’(이규형)과 함께 감쪽같이 사라지고 영배는 범인으로 몰려 서사장 일당에게 쫓기기 시작한다. 믿을 사람 하나 없고, 도망칠 곳도 없는 그의 앞에 나타난 건 바로 1987년식 오래된 자동차 ‘스텔라’. 최대 시속 50km, 남은 시간은 3시간… 유일한 희망인 스텔라와 함께 보스의 슈퍼카를 반드시 찾아야만 한다!' , 10000 , '미정' , 4 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 15, '어벤져스 : 엔드게임' , 1 , '2019.4.24' , '앤서니 루소, 조 루소' , '로버트 다우니 주니어' , '249분' , '액션', 'avengers.jpg' , '어벤져스 실사영화 시리즈의 4번째 작품이자, 마블 시네마틱 유니버스의 스물 두번째 작품이며, 페이즈 3의 10번째 작품이자 지난 2008년, 아이언맨을 시작으로 장장 11년간 이어져온 인피니티 사가를 마무리하는 작품.' , '인피니티 워 이후 절반만 살아남은 지구, 마지막 희망이 된 어벤져스. 먼저 떠난 그들을 위해 모든 것을 걸었다! 위대한 어벤져스, 운명을 바꿀 최후의 전쟁이 펼쳐진다!' , 10000 , '8.63점', 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 16, '이상한 나라의 수학자' , 2 , '2022.3.9' , '박동훈' , '최민식' , '117분' , '드라마', 'Mathematician.jpg' , '이상한 나라의 수학자는 최민식의 코미디나 로맨스 비중이 많은 드라마틱한 영화이다.' , '정답만을 찾는 세상에서 방황하던 `한지우`에게 올바른 풀이 과정을 찾아나가는 법을 가르치며 `이학성` 역시 뜻하지 않은 삶의 전환점을 맞게 된다.' , 10000 , '8.6점' , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 17, '뜨거운 피' , 3 , '2023.3.23' , '천명관' , '정우' , '119분' , '범죄', 'HotBlooded.jpg' , '천명관 감독의 2022년 3월 23일 개봉 예정인 한국 영화.' , '부산 변두리 작은 포구 구암의 절대적인 주인 손영감(김갑수), 그의 밑에서 수년간 수족으로 일해온 희수(정우)는 무엇 하나 이뤄낸 것 없이, 큰돈 한번 만져보지 못한 채 반복되는 건달 짓이 지긋지긋하다. 1993년, 범죄와의 전쟁 이후 새로운 구역을 집어삼키기 위해 물색중인 영도파 건달들은 아무도 관심 갖지 않는 구암에 눈독을 들이고, 영도파 에이스이자 희수의 오랜 친구 철진(지승현)이 희수에게 은밀히 접근한다.' , 10000 , '미정', 4 ,  '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 18, '문폴' , 2 , '2023.3.16' , '롤랜드 에머리히' , '할리 베리' , '130분' , 'SF', 'MoonFall.jpg' , '2022년 3월 16일에 개봉한 롤랜드 에머리히 감독의 SF, 재난 영화.' , '2011년, 우주왕복선에서 위성 수리 작업중이던 선장 조 파울러와 대원 브라이언 하퍼는 정체를 알수 없는 외계 물질의 습격을 당해 동료 우주비행사를 잃는 사고를 당한다. 이때 브라이언 하퍼는 수수께끼의 외계 물질이 달의 표면인 위난의 바다로 이동하는 것을 목격한다. 하퍼는 나사의 사고 조사 청문회에서 이를 지속적으로 증언하는데, 선장 파울러가 사고 당시 의식을 잃어 이 발언을 지지해주지 못했고, 이로 인해 나사는 사고원인을 하퍼의 거짓증언 및 인적실수로 결론내리고 하퍼는 우주비행사의 모든 명예를 잃고 나사에서 불명예 퇴직하게 되는데....' , 10000 , '5.2점', 3 , '12세 이상 관람가');
	SELECT * FROM movie;


-- 영화 장르
drop table genre;

CREATE TABLE genre (
genreCode NUMBER PRIMARY KEY NOT NULL,
genreTITLE varchar2(30)
);

-- 장르 DB
INSERT INTO genre
VALUES (1, '액션');
INSERT INTO genre
VALUES (2, '판타지');
INSERT INTO genre
VALUES (3, '공포');
INSERT INTO genre
VALUES (4, 'SF');
INSERT INTO genre
VALUES (5, '멜로');
INSERT INTO genre
VALUES (6, '전쟁');
INSERT INTO genre
VALUES (7, '드라마');
INSERT INTO genre
VALUES (8, '범죄');
INSERT INTO genre
VALUES (9, '코미디');
INSERT INTO genre
VALUES (10, '애니메이션');
INSERT INTO genre
VALUES (11, '코미디');
INSERT INTO genre
VALUES (12, '추리');
INSERT INTO genre
VALUES (13, '스릴러');
INSERT INTO genre
VALUES (14, '음악');
INSERT INTO genre
VALUES (15, '스포츠');
SELECT * FROM genre;

-- 감독
drop table director;

CREATE TABLE director (
directorCode NUMBER PRIMARY KEY NOT NULL,
directorName VARCHAR2(300)
);

-- 감독 DB
INSERT INTO director
VALUES( 1, '존 왓츠');
INSERT INTO director
VALUES( 2, '샘 레이미');
INSERT INTO director
VALUES( 3, '피터 잭슨');
INSERT INTO director
VALUES( 4, '박성후');
INSERT INTO director
VALUES( 5, '클로이 자오');
INSERT INTO director
VALUES( 6, '맷 리브스');
INSERT INTO director
VALUES( 7, '토드 필립스');
INSERT INTO director
VALUES( 8, '크리스토퍼 놀란');
INSERT INTO director
VALUES( 9,'가스 제닝스');
INSERT INTO director
VALUES( 10, '제프 파울러');
INSERT INTO director
VALUES( 11, '잭 스나이더');
INSERT INTO director
VALUES( 12, '타이카 와이티티');
INSERT INTO director
VALUES( 13, '라이언 쿠글러');
INSERT INTO director
VALUES( 14, '페이턴 리드');
INSERT INTO director
VALUES( 15, '앤서니 루소, 조 루소');
INSERT INTO director
VALUES( 16, '박동훈');
INSERT INTO director
VALUES( 17, '천명관');
INSERT INTO director
VALUES( 18, '롤랜드 에머리히');
SELECT * FROM director;


-- 주역 배우
drop table majorActor;

CREATE TABLE majorActor (
majorActor_CODE NUMBER PRIMARY KEY NOT NULL,
majorActor_NAME VARCHAR2(300)
);

-- 주역 배우 DB
INSERT INTO majorActor
VALUES( 1, '톰 홀렌드');
INSERT INTO majorActor
VALUES( 2,'베네딕트 컴버배치');
INSERT INTO majorActor
VALUES( 3, '숀 애스틴');
INSERT INTO majorActor
VALUES( 4, '오가타 메구미');
INSERT INTO majorActor
VALUES( 5, '마동석');
INSERT INTO majorActor
VALUES( 6, '로버트 패틴슨');
INSERT INTO majorActor
VALUES( 7, '호아킨 피닉스');
INSERT INTO majorActor
VALUES( 8, '톰 하디');
INSERT INTO majorActor
VALUES( 9, '매튜 맥커너히');
INSERT INTO majorActor
VALUES( 10, '짐 캐리');
INSERT INTO majorActor
VALUES( 11, '벤 에플렉');
INSERT INTO majorActor
VALUES( 12, '크리스 헴스위스');
INSERT INTO majorActor
VALUES( 13, '러티샤 라이트');
INSERT INTO majorActor
VALUES( 14,  '폴 러드');
INSERT INTO majorActor
VALUES( 15, '로버트 다우니 주니어');
INSERT INTO majorActor
VALUES( 16, '최민식');
INSERT INTO majorActor
VALUES( 17, '정우');
INSERT INTO majorActor
VALUES( 18, '할리 베리');
SELECT * FROM majorActor;


-- 관람 연령
drop table age;

CREATE TABLE age (
ageCode NUMBER PRIMARY KEY NOT NULL,
ageName varchar2(300)
);

-- 관람 연령 DB
INSERT INTO age
VALUES (1 , '전체이용가');
INSERT INTO age
VALUES (2 , '12세 이상 관람가');
INSERT INTO age
VALUES (3 , '15세 이상 관람가');
INSERT INTO age
VALUES (4 , '청소년 관람불가');
INSERT INTO age
VALUES (5 , '제한상영가');
SELECT * FROM age;