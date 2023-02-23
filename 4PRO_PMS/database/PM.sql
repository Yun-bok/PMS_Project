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
	-- no , 프로젝트명 , 유형 , 진행도,작성자, 담당자,내용
	
	create sequence pm_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
	
	--INSERT INTO pmboard values(pm_seq.nextval,'PMS-001','시작전','50%',1);
	INSERT INTO pmboard values(pm_seq.nextval,'첫번째프로젝트','시작전',50,'김길동','pm','가나다라마바사아자');

	INSERT INTO pmboard values(pm_seq.nextval,'두번째프로젝트db입력한','보류',88,'김길동','pm','가나다라마바사아ㅁㄴㅇㅁㅇㅁㄴㅇ자');
	

SELECT * FROM pmboard;


SELECT count(*)
FROM pmboard
WHERE 1=1;

select *
from pmboard
WHERE 1=1;

--DROP TABLE pmboard;
