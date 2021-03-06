CREATE TABLE Member (
	userid CHAR(14) NOT NULL, /* 아이디 */
	passwd CHAR(10) NOT NULL, /* 비밀번호 */
	name VARCHAR2(20) NOT NULL, /* 회원이름 */
	email VARCHAR2(50) NOT NULL, /* 회원이메일 */
	gender CHAR(1) DEFAULT 2 NOT NULL, /* 성별 */
	city VARCHAR2(20), /* 거주지 */
	age NUMBER(3) /* 나이 */
);

CREATE UNIQUE INDEX PK_Member
	ON Member (
		userid ASC
	);

ALTER TABLE Member
	ADD
		CONSTRAINT PK_Member
		PRIMARY KEY (
			userid
		);

CREATE OR REPLACE PROCEDURE sp_member_login
(
    v_userid IN member.userid%TYPE,
    login_record OUT SYS_REFCURSOR
)
IS
BEGIN
    open login_record FOR
    SELECT passwd
    FROM member
    WHERE userid = v_userid;    
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE sp_member_insert
(
    v_userid IN member.userid%TYPE,
    v_passwd IN member.passwd%TYPE,
    v_name IN member.name%TYPE,
    v_email IN member.email%TYPE,
    v_gender IN member.gender%TYPE,
    v_city IN member.city%TYPE,
    v_age IN member.age%TYPE
)
IS
BEGIN
    INSERT INTO member(userid, passwd, name, email, gender, city, age, flag)
    VALUES(v_userid,v_passwd, v_name, v_email, v_gender, v_city, v_age, 1);
    COMMIT;
END;

create or replace procedure sp_member_select
(
    v_userid IN member.userid%TYPE,
    member_record OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN member_record FOR
    SELECT name, email, gender, city, age, flag
    FROM member
    WHERE userid = v_userid;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE sp_member_delete
(
    v_userid IN member.userid%TYPE
)
IS
BEGIN
    DELETE FROM Member
    WHERE userid=v_userid;
    
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE sp_member_update
(
    v_userid IN member.userid%TYPE,
    v_email IN member.email%TYPE,
    v_city IN member.city%TYPE,
    v_age IN member.age%TYPE
)
IS
BEGIN
    UPDATE Member
    SET email = v_email, city=v_city, age = v_age
    WHERE userid = v_userid;
    
    COMMIT;
END;

ALTER TABLE Member
ADD flag NUMBER(1) DEFAULT 1 NOT NULL;

INSERT INTO Member(userid, passwd, name, email, gender, city, age, flag)
VALUES('admin', 'admin', '관리자', 'admin@example.com', '2', null, null, 0);

CREATE OR REPLACE PROCEDURE sp_member_select_all
(
    member_record OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN member_record FOR
    SELECT userid, name, email, gender, city, age
    FROM member
    COMMIT;
END;

create or replace procedure sp_member_idcheck
(
    v_userid IN member.userid%TYPE,
    member_record OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN member_record FOR
    SELECT userid FROM Member
    WHERE userid=v_userid;
END;

