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
    INSERT INTO member
    VALUES(v_userid,v_passwd, v_name, v_email, v_gender, v_city, v_age);
    COMMIT;
END;