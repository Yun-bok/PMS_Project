SELECT * FROM PMBOARD;

SELECT * FROM board;

select * from board where no = 1;

ALTER TABLE board RENAME COLUMN reacnt TO readcnt;

CREATE TABLE don(
category varchar2(50)
);

INSERT INTO don values('시작');
INSERT INTO don values('종료');
INSERT INTO don values('취소');

SELECT * FROM don;

SELECT COUNT(*) 
FROM don
WHERE category LIKE '%'|| '취소' || '%';

SELECT * FROM BOARDFILE;


/*
SELECT b.*, f.fname 
FROM board b, boardfile f
WHERE b.NO =f.NO(+)
and b.no = #{no}
*/

SELECT b.* , f.fname
FROM BOARD b ,BOARDFILE f
WHERE b.NO = f.NO(+)
AND b.NO = f.no;
