alter session set nls_date_format='YYYY-MM-DD';
--테스트 계정생성: Happy, 오라클 문제로 앞에 c## 붙임 혹시 되는 사람은 문의, 테스트 계정 생성과 권한 부여는 sqlplus에서 할 것
CREATE USER c##happy
IDENTIFIED BY happy
DEFAULT tablespace users
TEMPORARY tablespace temp;
-- 권한 부여
ALTER USER c##happy 
DEFAULT tablespace USERS 
QUOTA UNLIMITED ON users;

GRANT resource, connect TO c##happy;
GRANT CREATE TABLE TO c##happy;

-- 1.테이블 생성

-- 1 - 1. Member: 회원 테이블
CREATE TABLE Member (
		id VARCHAR2(20) CONSTRAINT member_id_nn NOT NULL, -- 아이디,
		password VARCHAR2(40) CONSTRAINT member_password_nn NOT NULL, -- 비밀번호,
		division NUMBER(1) CONSTRAINT member_division_nn NOT NULL, -- 회원구분
        CONSTRAINT member_id_pk  PRIMARY KEY(id)
);
-- 1 - 2. 개인 회원 테이블
CREATE TABLE Albamember (
		id VARCHAR2(20) CONSTRAINT Albamember_id_nn NOT NULL, -- 아이디,
		name VARCHAR2(15) CONSTRAINT Albamember_name_nn NOT NULL, -- 이름,
		email VARCHAR2(50) CONSTRAINT Albamember_email_nn NOT NULL, -- 이메일,
		tel VARCHAR2(50) CONSTRAINT Albamember_tel_nn NOT NULL, -- 전화번호
        CONSTRAINT Albamember_id_pk  PRIMARY KEY(id),
        CONSTRAINT Albamember_id_fk FOREIGN KEY(id)REFERENCES Member(id)
);
-- 1 - 3. 기업 회원 테이블
CREATE TABLE Commember (
		id VARCHAR2(20) CONSTRAINT Commember_id_nn NOT NULL, -- 아이디,
		company_name VARCHAR2(50) CONSTRAINT Commember_company_name_nn NOT NULL, -- 기업명,
		representative VARCHAR2(30), -- 대표자명,
		company_num VARCHAR2(50) CONSTRAINT Commember_company_num_nn NOT NULL, -- 사업자번호,
		email VARCHAR2(50), -- 이메일,
		address VARCHAR2(1000) CONSTRAINT Commember_address_nn NOT NULL, -- 회사주소,
		latitude NUMBER(30,15) CONSTRAINT Commember_latitude_nn NOT NULL, -- 위도,
		longitude NUMBER(30,15) CONSTRAINT Commember_longitude_nn NOT NULL, -- 경도
        CONSTRAINT Commember_id_pk  PRIMARY KEY(id),
        CONSTRAINT Commember_id_fk FOREIGN KEY(id)REFERENCES Member(id)
);
-- 1 - 4. 관리자
CREATE TABLE Admin (
		id VARCHAR2(20) CONSTRAINT Admin_id_nn NOT NULL, -- 아이디
        CONSTRAINT Admin_id_pk  PRIMARY KEY(id),
        CONSTRAINT Admin_id_fk FOREIGN KEY(id)REFERENCES Member(id)
);
-- 1 - 5. 이력서
CREATE TABLE rsum (
		rsum_seq NUMBER(10) CONSTRAINT rsum_rsum_seq_nn NOT NULL, -- 일련번호,
		id VARCHAR2(20) CONSTRAINT rsum_id_nn NOT NULL, -- 아이디,
		title VARCHAR2(60), -- 제목,
		name VARCHAR2(15),  -- 이름,
		academic_ability VARCHAR2(10),  -- 학력,
		local VARCHAR2(20),  -- 희망 근무지,
		business_type VARCHAR2(20),  -- 업종,
		work_type VARCHAR2(20),  -- 근무형태,
		work_time CHAR(10),  -- 근무일시,
		work_date VARCHAR2(50),  -- 근무기간
        work_content VARCHAR2(2000),  -- 이력서 내용
        CONSTRAINT rsum_id_fk FOREIGN KEY(id)REFERENCES Member(id)
);
-- 1 - 6. 게시판 테이블
CREATE TABLE BOARD (
		BOARD_CD VARCHAR2(4) CONSTRAINT BOARD_BOARD_CD_nn NOT NULL, -- 게시판코드,
		BOARD_NM VARCHAR2(100) CONSTRAINT BOARD_BOARD_NM_nn NOT NULL, -- 게시판명
        CONSTRAINT BOARD_BOARD_CD_pk  PRIMARY KEY(BOARD_CD)
);
-- 1 - 7. 댓글 테이블
CREATE TABLE boardcomment (
		comment_seq NUMBER(10) CONSTRAINT comment_comment_seq_nn NOT NULL, -- 댓글번호,
		comment_content VARCHAR2(1000) CONSTRAINT comment_comment_content_nn NOT NULL, -- 댓글내용,
		regDate DATE CONSTRAINT comment_regDate_nn NOT NULL, -- 등록날짜
        CONSTRAINT comment_comment_seq_pk  PRIMARY KEY(comment_seq)
);
-- 1 - 8. 알바토크게시판
CREATE TABLE BOARDTALK (
        BOARDTALK_seq NUMBER(10) CONSTRAINT BOARDTALK_BOARDTALK_seq_nn NOT NULL,     -- 알바토크 게시판 글번호(수정된 부분)
		BOARD_CD VARCHAR2(4) CONSTRAINT BOARDTALK_BOARD_CD_nn NOT NULL, -- 게시판코드,
		comment_seq NUMBER(4), -- 댓글번호,
        TITLE VARCHAR2(200) CONSTRAINT BOARDTALK_TITLE_nn NOT NULL,-- 글제목,
		WRITER VARCHAR2(100) CONSTRAINT BOARDTALK_WRITER_nn NOT NULL, -- 게시자,
		READNUM NUMBER(8) CONSTRAINT BOARDTALK_READNUM_nn NOT NULL, -- 조회수,
		REGDATE DATE CONSTRAINT BOARDTALK_REGDATE_nn NOT NULL, -- 등록날짜,
		CONTENT VARCHAR2(3000) CONSTRAINT BOARDTALK_CONTENT_nn NOT NULL, -- 내용
		id VARCHAR(20), -- 아이디
        CONSTRAINT BOARDTALK_BOARD_CD_pk  PRIMARY KEY(BOARDTALK_seq),
        CONSTRAINT BOARDTALK_BOARD_CD_fk FOREIGN KEY(BOARD_CD) REFERENCES BOARD(BOARD_CD),
        CONSTRAINT BOARDTALK_comment_seq_fk FOREIGN KEY(id)REFERENCES ALBAMEMBER(id)
);
-- 1 - 9. 공고 게시판
CREATE TABLE BOARDALBA (
        BOARDALBA_seq NUMBER(10) CONSTRAINT BOARDALBA_BOARDALBA_seq_nn NOT NULL, -- 공고 게시판 글번호(수정된 부분)
		BOARD_CD VARCHAR2(4) CONSTRAINT BOARDALBA_BOARD_CD_nn NOT NULL, -- 게시판코드,
		id VARCHAR(20), -- 아이디,
        TITLE VARCHAR2(200) CONSTRAINT BOARDALBA_TITLE_nn NOT NULL,-- 글제목,
		WRITER VARCHAR2(100) CONSTRAINT BOARDALBA_WRITER_nn NOT NULL, -- 게시자,
		READNUM NUMBER(8) CONSTRAINT BOARDALBA_READNUM_nn NOT NULL, -- 조회수,
		REGDATE DATE CONSTRAINT BOARDALBA_REGDATE_nn NOT NULL, -- 등록날짜,
		CONTENT VARCHAR2(3000) CONSTRAINT BOARDALBA_CONTENT_nn NOT NULL, -- 내용
		CORPLOC VARCHAR2(500) CONSTRAINT BOARDALBA_CORPLOC_nn NOT NULL, --  회사주소,
		WORKDATE VARCHAR2(50) CONSTRAINT BOARDALBA_WORKDATE_nn NOT NULL, -- 근무기간,
		WORKTIME VARCHAR2(700) CONSTRAINT BOARDALBA_WORKTIME_nn NOT NULL, -- 근무일시,
		WOKRTYPE VARCHAR2(500) CONSTRAINT BOARDALBA_WOKRTYPE_nn NOT NULL, -- 근무형태,
		SAL NUMBER(10) CONSTRAINT BOARDALBA_SAL_nn NOT NULL, -- 급여
        CONSTRAINT BOARDALBA_BOARDALBA_seq_pk  PRIMARY KEY(BOARDALBA_seq),
        CONSTRAINT BOARDALBA_BOARD_CD_fk FOREIGN KEY(BOARD_CD) REFERENCES BOARD(BOARD_CD),
        CONSTRAINT BOARDALBA_id_fk FOREIGN KEY(id)REFERENCES COMMEMBER(id)
);
-- 1 - 11. 고객센터 테이블
CREATE TABLE BOARDNOTICE (
        BOARDNOTICE_seq NUMBER(10) CONSTRAINT BOARDNOTICE_BOARDNOTICE_seq_nn NOT NULL, -- 글번호,
		BOARD_CD VARCHAR2(4) CONSTRAINT BOARDNOTICE_BOARD_CD_nn NOT NULL, -- 게시판코드,
		id VARCHAR(20) CONSTRAINT BOARDNOTICE_id_nn NOT NULL, -- 아이디
        TITLE VARCHAR2(200) CONSTRAINT BOARDNOTICE_TITLE_nn NOT NULL,-- 글제목,
		WRITER VARCHAR2(100) CONSTRAINT BOARDNOTICE_WRITER_nn NOT NULL, -- 게시자,
		READNUM NUMBER(8) CONSTRAINT BOARDNOTICE_READNUM_nn NOT NULL, -- 조회수,
		REGDATE DATE CONSTRAINT BOARDNOTICE_REGDATE_nn NOT NULL, -- 등록날짜,
		CONTENT VARCHAR2(3000) CONSTRAINT BOARDNOTICE_CONTENT_nn NOT NULL, -- 내용
        CONSTRAINT BOARDNOTICE_BOARDNOTICE_seq_pk  PRIMARY KEY(BOARDNOTICE_seq),
        CONSTRAINT BOARDNOTICE_BOARD_CD_fk FOREIGN KEY(BOARD_CD) REFERENCES BOARD(BOARD_CD),
        CONSTRAINT BOARDNOTICE_id_fk FOREIGN KEY(id)REFERENCES ADMIN(id)
);
-- 2. 시퀀스 
-- 2 - 1. 이력서 글번호
CREATE SEQUENCE seq_rsum_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999999999
    NOCYCLE;
-- 2 - 2. 알바토크 게시판 글번호
CREATE SEQUENCE seq_BOARDTALK_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999999999
    NOCYCLE;
-- 2 - 3. 댓글 번호
CREATE SEQUENCE seq_COMMENT_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999999999
    NOCYCLE;
-- 2 - 4. 공고 테이블 번호
CREATE SEQUENCE seq_BOARDALBA_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999999999
    NOCYCLE;
-- 2 - 5. 고객센터 테이블 번호
CREATE SEQUENCE seq_BOARDNOTICE_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999999999
    NOCYCLE;

--3. 더미 데이터 입력
--회원 삽입: 개인 회원 1, 기업회원 2, 관리자 0
INSERT INTO MEMBER(id, password, division) --관리자 계정
VALUES('admin', 'admin', 0);
INSERT INTO admin(id)   --관리자를 관리자 테이블에 삽입
VALUES('admin');

INSERT INTO MEMBER(id, password, division)--개인회원
VALUES('jimin', '1234', 1);
INSERT INTO ALBAMEMBER(id, name, email, tel) --개인회원을 개인회원 테이블에 삽입
VALUES('jimin', '한지민','google@google.com','01011111111');

INSERT INTO MEMBER(id, password, division)-- 기업회원
VALUES('company', '1234', 2);
INSERT INTO COMMEMBER(id, company_name, representative, company_num, email, address, latitude, longitude)
VALUES ('company','CU 편의점 괴월동점','김지민','1515456','com@cu.co.kr', '인천시 괴월동', 0,0);
--이력서
INSERT INTO RSUM(RSUM_SEQ, id, title, name, academic_ability, local, business_type, work_type, work_time, work_date, work_content)
VALUES(seq_rsum_seq.NEXTVAL, 'jimin', '이력서1' ,  '한지민' , '고등' , '인천시 부평구' , '서빙' ,'파트타임','3개월' ,'오전' ,'내용내용내용내용내용');

--게시판 테이블: 알바 토크 AT, 고객센터 CC, 공고 게시판 RE
INSERT INTO BOARD(BOARD_CD, BOARD_NM)
VALUES('AT', '알바 토크');
INSERT INTO BOARD(BOARD_CD, BOARD_NM)
VALUES('CC', '고객 센터');
INSERT INTO BOARD(BOARD_CD, BOARD_NM)
VALUES('RE', '공고');
--알바 토크 게시판 댓글
INSERT INTO BOARDCOMMENT(COMMENT_seq, COMMENT_content, regdate)
VALUES(1,'댓글입니다',SYSDATE);
--알바 토크 게시판 글
INSERT INTO BOARDTALK(BOARDTALK_seq, BOARD_CD, COMMENT_seq, TITLE, WRITER, READNUM, REGDATE, CONTENT, ID)
VALUES(1, 'AT', 1, '제목1','글쓴이',0,SYSDATE, '알바토크내용알바토크내용알바토크내용','jimin');
--공고 게시판 댓글
INSERT INTO BOARDALBA(BOARDALBA_seq, BOARD_CD, id, TITLE, WRITER, READNUM, REGDATE, CONTENT, CORPLOC, WORKDATE, WORKTIME,WOKRTYPE,sal )
VALUES(1,'RE','company', '제목1','글쓴이',0,SYSDATE, '알바토크내용알바토크내용알바토크내용','인천시 괴월동', '1개월','오전','내사',0);
--고객센터 게시판은 추가

alter table Commember modify(address varchar2(1000));
--주소 좀더 길게

COMMIT;