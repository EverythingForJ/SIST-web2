CREATE TABLE Telephone
(
	SEQ	INT	AUTO_INCREMENT		PRIMARY KEY,
	kind	TINYINT	NOT NULL,
	tel	CHAR(8)	NOT NULL,
	NAME	VARCHAR(20) NOT NULL,
	quantity	INT	NOT NULL,
	defaultfee SMALLINT,
	fee		INT,
	tax		INT,
	total		INT
)

