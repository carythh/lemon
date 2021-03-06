

-------------------------------------------------------------------------------
--  vehicle task
-------------------------------------------------------------------------------
CREATE TABLE VEHICLE_TASK(
        ID BIGINT NOT NULL,
	CODE VARCHAR(50),
	TYPE VARCHAR(50),
	NAME VARCHAR(100),
	LOCATION VARCHAR(200),
	DESCRIPTION VARCHAR(200),
	USER_ID VARCHAR(64),
	INFO_ID BIGINT,
	START_TIME DATETIME,
	END_TIME DATETIME,
	STATUS INTEGER,
	TENANT_ID VARCHAR(64),
        CONSTRAINT PK_VEHICLE_TASK PRIMARY KEY(ID),
        CONSTRAINT FK_VEHICLE_TASK_INFO FOREIGN KEY(INFO_ID) REFERENCES VEHICLE_INFO(ID)
) ENGINE=INNODB CHARSET=UTF8;

