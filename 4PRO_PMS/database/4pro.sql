SELECT * FROM Mem4pro;
--DROP TABLE Mem4pro;
create table Mem4pro(
	empno number primary key,
	name varchar2(50),
	email	varchar2(80), 
	id varchar2(50),
	pass varchar2(50),
	auth varchar2(50)
);
--SELECT empno_seq.nextval FROM dual;

SELECT TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval  FROM dual;
--DROP TABLE Mem4pro CASCADE CONSTRAINTS;

--DROP sequence empno_seq;
create sequence empno_seq
	increment by 1
	start with 4000		
	minvalue 1
	maxvalue 9999
	nocycle;
insert into Mem4pro 
values(TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval,'라예지','yeaji5148@naver.com','hiyeji','test123','user');
insert into Mem4pro
values(TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval,'이상준','bottary12@gmail.com','hisangjun','test123','pm');
insert into Mem4pro
values(TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval,'신용주','yjshin4817@gmail.com','hishin','test123','ceo');
insert into Mem4pro
values(TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval,'세라피나','yeji0306ra@gmail.com','hiyeji2','test123','admin');
insert into Mem4pro
values(TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval,'안정인','ttingin99@gmail.com','hiji','test123','user');
insert into Mem4pro
values(TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval,'이윤복','gkdldbsqhr65@gmail.com','yun','test123','user');
insert into Mem4pro
values(TO_NUMBER( TO_CHAR(SYSDATE, 'YYYYMM'))||empno_seq.nextval,'양희찬','hichan209@gmail.com','yang','test123','user');

--------------------------------------------------------------------------------
-- *****project***** 테이블 --
-- project 테이블에서 필요한 게 있어서 먼저 인스턴스 생성했습니다. 이상한 부분 있으면 인스턴스 삭제해 주세요!
CREATE TABLE project(
	project_no NUMBER PRIMARY KEY,
	pcategory varchar2(50),
	progress varchar2(50),
	pname varchar2(100),
	content varchar2(50)
	
);


--DROP TABLE project;



--CREATE SEQUENCE project_seq1
--increment by 1;


--사용 시퀀스
 create sequence project_seq
 	  increment by 1
      start with 17
      minvalue 1
      maxvalue 999999;
      
     
     

    
--DROP sequence project_seq;
     
     ---------------------------
     
     INSERT INTO project values(10,'취소','ABS프로젝트 리팩토링','추후 진행 예정입니다.',70,43,'pm','양희찬');
     INSERT INTO project values(11,'정상진행','BBSPjt 개발','현재 중간정도 진행됐습니다.',50,23,'pm','김유진');
     INSERT INTO project values(12,'정상진행','BoardPjt 사원게시판 현황','현재 중간정도 진행됐습니다.',70,23,'pm','김재환');
    
    SELECT * FROM PROJECT;
     --------------------------
-- no , 유형(pcategory),pname(제목),content,progress
INSERT INTO project values(project_seq.nextval,'웹','진행중','웹개발 및 유지보수','프로젝트');
INSERT INTO project values(project_seq.nextval,'애플리케이션','진행중','운영 중인 사이트의 기능 및 화면 개선 개발','프로젝트');

INSERT INTO project values(project_seq.nextval,'웹','프로젝트명1','내용',75);
-- INSERT INTO project values(project_seq.nextval,#{pcategory},#{pname},#{content},#{progress});

UPDATE project
SET name = '신용주'
WHERE name IS NULL;

SELECT * FROM project;



SELECT *
FROM project
WHERE pname LIKE 'PMS 유지보수';


ALTER TABLE project ADD readcnt NUMBER;
ALTER TABLE project ADD refno NUMBER;
ALTER TABLE project ADD auth varchar2(50);

ALTER TABLE project ADD name varchar2(70);

ALTER TABLE project DROP COLUMN name;

--ALTER TABLE project DROP COLUMN refno;

UPDATE project
SET auth = 'pm'
WHERE project_no = 4;

/*
SELECT count(*)
FROM project
WHERE pcategory LIKE '%'||'시작'||'%';

SELECT count(*)
FROM project
WHERE pcategory LIKE '%'||'정상진행'||'%';

SELECT count(*)
FROM project
WHERE pcategory LIKE '%'||'종료'||'%';

SELECT count(*)
FROM project
WHERE pcategory LIKE '%'||'취소'||'%';
*/

SELECT *FROM mem4pro;

DROP TABLE PMBOARDFILE;

CREATE TABLE pmboardfile(
project_no NUMBER PRIMARY KEY,
	path varchar2(100),
	fname varchar2(100),
	etc varchar2(200)
);


SELECT * FROM PMBOARDFILE;

SELECT * FROM project;

SELECT *
FROM mem4pro;
-- ceo 한명
-- pm 2명
-- admin 1명
-- user 나머지들 


SELECT m.auth ,p.pname 
FROM project p , MEM4PRO m
WHERE m.auth LIKE 'ceo' 
AND m.auth = p.auth;


SELECT p.*
FROM PROJECT p
LEFT JOIN MEM4PRO m
ON p.auth = m.auth
WHERE m.auth LIKE 'ceo';


SELECT p.*
FROM project p
LEFT JOIN MEM4PRO m
ON p.auth = m.auth
WHERE p.name = m.name
AND m.auth LIKE 'pm' AND m.name LIKE '이상준';

		SELECT p.*
		from project p,mem4pro m
		WHERE p.auth = m.auth
		and m.auth like 'pm'
		AND m.name LIKE '이상준';
/*
 
SELECT p.*
FROM project p
LEFT JOIN MEM4PRO m
ON p.auth = m.auth
WHERE p.name = m.name
AND m.auth LIKE 'pm' AND m.name LIKE '이상준'; 
 
 */
--------------------------------------------------------------------------------

-- *****team***** 테이블 --
DROP TABLE team;
--delete from project;


CREATE TABLE team(
	empno NUMBER REFERENCES MEM4PRO(empno),
	project_no NUMBER REFERENCES project(project_no)
);

INSERT INTO team values(2022084004,1);
INSERT INTO team values(2022084001,1);
INSERT INTO team values(2022084006,1);
INSERT INTO team values(2022084000,1);



SELECT * FROM team;

-- *****project_sch***** 테이블 --
CREATE TABLE project_sch(
	project_no NUMBER REFERENCES project(project_no),
	sdate DATE,
	edate DATE,
	backgroundColor varchar2(50),
	textColor varchar2(50)
);
SELECT * from project_sch;
INSERT INTO project_sch values(1,'2022-07-28','2022-08-12','#8b8bfd','#ffffff');
INSERT INTO project_sch values(2,'2022-08-10','2022-08-22','#8b8bfd','#ffffff');
SELECT * FROM project_sch;
--DROP TABLE project_sch;
-- *****todo***** 테이블 --
CREATE TABLE todo(
	todo_no NUMBER PRIMARY KEY,
	tname varchar2(100),
	progress varchar2(50),
	project_no NUMBER REFERENCES project(project_no),
	empno NUMBER REFERENCES mem4pro(empno)
);

CREATE SEQUENCE todo_seq
	increment by 1
	start with 1		
	minvalue 1
	maxvalue 99999
	nocycle;

INSERT INTO todo values(todo_seq.nextval, '캘린더 페이지 구현', '요청됨', 1, 2022084004);
INSERT INTO todo values(todo_seq.nextval, '대쉬보드 구현', '진행중',1, 2022084006);
INSERT INTO todo values(todo_seq.nextval, '전체업무 구현', '진행중',1, 2022084004);
INSERT INTO todo values(todo_seq.nextval, '간트차트 구현', '진행중',1, 2022084004);
INSERT INTO todo values(todo_seq.nextval, '품질관리 페이지 구현','결재중', 1, 2022084006);

INSERT INTO todo values(todo_seq.nextval, '캘린더 페이지 구현', '요청됨', 1, 2022084000);
INSERT INTO todo values(todo_seq.nextval, '대쉬보드 구현', '진행중',1, 2022084000);
INSERT INTO todo values(todo_seq.nextval, '전체업무 구현', '보류',1, 2022084000);
INSERT INTO todo values(todo_seq.nextval, '간트차트 구현', '결재중',1, 2022084000);
INSERT INTO todo values(todo_seq.nextval, '품질관리 페이지 구현','완료', 1, 2022084000);
INSERT INTO todo values(todo_seq.nextval, '플로우차트 수정','반려', 1, 2022084000);


SELECT * FROM todo;
--DROP TABLE todo;
--DROP SEQUENCE todo_seq;
-- *****todo_sch***** 테이블 --
CREATE TABLE todo_sch(
	todo_no NUMBER REFERENCES todo(todo_no),
	sdate DATE,
	edate DATE,
	backgroundColor varchar2(50),
	textColor varchar2(50)
);

INSERT INTO todo_sch values(1,'2022-07-28','2022-07-31','#8b8bfd','#ffffff');
INSERT INTO todo_sch values(2,'2022-08-01','2022-08-04','#8b8bfd','#ffffff');
INSERT INTO todo_sch values(3,'2022-08-01','2022-08-04','#8b8bfd','#ffffff');
INSERT INTO todo_sch values(4,to_date('20220812120000','YYYYMMDDHH24MISS'),to_date('20220814110000','YYYYMMDDHH24MISS'),'#8b8bfd','#ffffff');
INSERT INTO todo_sch values(5,to_date('20220814120000','YYYYMMDDHH24MISS'),'2022-08-24','#8b8bfd','#ffffff');

SELECT * FROM todo_sch;
DELETE FROM TODO_SCH WHERE TODO_NO = 8;
--DROP TABLE todo_sch;
-- *****RM***** 테이블 --
CREATE SEQUENCE RM_seq
	increment by 1
	start with 1		
	minvalue 1
	maxvalue 99999
	nocycle;
--SELECT * FROM SEQUENCE RM_seq;
--DROP SEQUENCE RM_seq;
CREATE TABLE RM (
	RM_no NUMBER PRIMARY KEY,
	pname varchar2(100),
	tname varchar2(100),
	name varchar2(50),
	issue varchar2(200),
	importance varchar2(20),
	progress varchar2(50),
	writeDate date,
	edate DATE,
	solution varchar2(2000)
);
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','게시물 등록 페이지 구현','양희찬','404에러','여유','완료','2022-08-07','2022-08-08','입력한 URL이 올바른지 확인');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','게시물 삭제 기능 구현','양희찬','500에러','여유','완료','2022-08-09','2022-08-10','브라우저 캐시 삭제 후 확인');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','간트차트 구현','양희찬','담당자 병가','긴급','완료','2022-08-11','2022-08-11','담당자 안정인으로 변경');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','캘린더 구현','안정인','서버 오류','긴급','완료','2022-08-12','2022-08-12','서버 관리자에게 해결 요청');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','페이징 처리 구현','이윤복','페이지가 넘어가지 않음','보통','완료','2022-08-13','2022-08-14','핵심 코드 수정');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','사원정보 조회기능 구현','이상준','데이터 타입 오류','여유','취소','2022-08-14','2022-08-14','취소됨');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','전체업무 구현','박준수','코드 에러','여유','진행','2022-08-14','2022-08-28','팀원 코드 리뷰 중');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','사원 등록기능 구현','라예지','404에러','보통','완료','2022-08-15','2022-08-15','입력한 URL이 올바른지 확인');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','대시보드 기능 구현','라예지','500에러','보통','완료','2022-08-15','2022-08-16','브라우저 캐시 삭제 후 확인');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','팀 채팅 기능 구현','신용주','담당자 병가','긴급','완료','2022-08-16','2022-08-17','담당자 이상준으로 변경');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','다국어 기능 구현','이상준','코드 에러','여유','완료','2022-08-17','2022-08-18','팀원 코드 리뷰 중');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','대시보드 수정','신용주','서버 오류','긴급','완료','2022-08-17','2022-08-17','서버 관리자에게 해결 요청');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','버그수정','박민수','코드 에러','긴급','완료','2022-08-18','2022-08-19','코드 리뷰 후 피드백');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','대쉬보드 구현','김남길','데이터 부족','여유','완료','2022-08-18','2022-08-20','데이터 추가');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','캘린더 페이지 구현','김재환','코드 에러','여유','진행','2022-08-21','2022-08-24','팀원 코드 리뷰 중');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','플로우차트 수정','이윤복','플로우차트 데이터 손실','여유','취소','2022-08-21','2022-08-21','취소됨');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','버그 수정','양희찬','담당자 병가','여유','완료','2022-08-22','2022-08-22','담당자 김남길로 변경');
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','간트차트 구현','박요셉','코드 에러','보통','검토','2022-08-23','2022-08-25',null);
INSERT INTO RM values(RM_seq.nextval,'웹 개발 및 유지보수','품질관리 페이지 구현','김남길','추가 설명 필요','보통','검토','2022-08-23','2022-08-27',null);


SELECT * FROM RM;
DROP TABLE RM;
-- *****minutes***** --
CREATE TABLE minutes(
	minutes_no NUMBER NOT NULL,
	subject varchar2(200),
	contents varchar2(300),
	decision varchar2(300),
	mdate DATE,
	wdate DATE,
	attendees varchar2(100),
	project_no NUMBER NOT NULL,
	empno NUMBER
);
ALTER TABLE minutes ADD CONSTRAINT PK_minutes PRIMARY KEY (minutes_no);
ALTER TABLE minutes ADD CONSTRAINT FK_project_TO_minutes FOREIGN KEY (project_no) REFERENCES project (project_no);
ALTER TABLE minutes ADD CONSTRAINT FK_Mem4pro_TO_minutes FOREIGN KEY (empno) REFERENCES Mem4pro (empno);

CREATE SEQUENCE seq_minutes
	increment by 1
	start with 1		
	minvalue 1
	maxvalue 99999;
 
--DROP TABLE minutes;
--DROP SEQUENCE seq_minutes;

INSERT INTO minutes values(seq_minutes.nextval, '설계', '프로젝트 진행범위 및 역할분담 구체화',
							'의사소통관리-신용주', sysdate, sysdate, '라예지, 신용주, 안정인, 양희찬, 이상준, 이윤복', 1, 2022084002); 
INSERT INTO minutes values(seq_minutes.nextval, '설계', '권한 통합',
							'CEO, ADMIN, PM, USER ', sysdate, sysdate, '라예지, 신용주, 안정인, 양희찬, 이상준, 이윤복', 1, 2022084002); 
INSERT INTO minutes values(seq_minutes.nextval, '설계', '프로젝트 기능 추가 및 변경',
							'검색 기능 추가', sysdate, sysdate, '라예지, 신용주, 안정인, 양희찬, 이상준, 이윤복', 2, 2022084002); 
INSERT INTO minutes values(seq_minutes.nextval, '설계', '메인페이지 컴포넌트 순서 변경',
							'배너를 이미지 슬라이드 아래로 변경', sysdate, sysdate, '라예지, 신용주, 안정인, 양희찬, 이상준, 이윤복', 2, 2022084002); 
INSERT INTO minutes values(seq_minutes.nextval, '설계', '메인페이지 컴포넌트 순서 변경',
							'배너를 이미지 슬라이드 아래로 변경', sysdate, sysdate, '라예지, 신용주, 안정인, 양희찬, 이상준, 이윤복', 1, 2022084002); 
SELECT * FROM minutes;


--------------------------------------------------------------------------------
--PM 테이블---------------
--PM 리스트 테이블---------------

CREATE TABLE pmboard(
	NO NUMBER ,
	pname varchar2(50),
	category varchar2(50),
	progress NUMBER,
	writer varchar2(50),
	auth varchar2(50),
	contents varchar2(200)
	);
--DROP TABLE pmboard;
	-- no , 프로젝트명 , 유형 , 진행도,작성자, 담당자,내용
	
	create sequence pm_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
	
	--INSERT INTO pmboard values(pm_seq.nextval,'PMS-001','시작전','50%',1);
	INSERT INTO pmboard values(pm_seq.nextval,'첫번째프로젝트','시작전',50,'김길동','pm','가나다라마바사아자');

	INSERT INTO pmboard values(pm_seq.nextval,'두번째프로젝트db입력한','보류',88,'김길동','pm','가나다라마바사아ㅁㄴㅇㅁㅇㅁㄴㅇ자');
--DROP SEQUENCE pm_seq;

SELECT * FROM pmboard;


SELECT count(*)
FROM pmboard
WHERE 1=1;

select *
from pmboard
WHERE 1=1;
--------------------------------------------------------------------------------

CREATE TABLE FILE2(
	file_no NUMBER PRIMARY KEY,
	fname varchar2(100),
	todo_no NUMBER REFERENCES todo(todo_no),
	empno NUMBER REFERENCES mem4pro(empno)
);
create sequence fno_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
	
CREATE TABLE confirm(
	cf_no NUMBER PRIMARY KEY,
	file_no NUMBER REFERENCES FILE2(file_no),
	todo_no NUMBER REFERENCES todo(todo_no)
);

create sequence cfno_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
