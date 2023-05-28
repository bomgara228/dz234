CREATE TABLE predpr(
	id int IDENTITY(1,1) PRIMARY KEY,

);

CREATE TABLE felial(
	id int IDENTITY(1,1) PRIMARY KEY,
	felialid int NOT NULL,
	FOREIGN KEY (felialid) REFERENCES predpr(id)
);


CREATE TABLE otdel(
	id int IDENTITY(1,1) PRIMARY KEY,
	otdelid int NOT NULL,
	FOREIGN KEY (otdelid) REFERENCES felial(id)
);


CREATE TABLE sotr(
	id int IDENTITY(1,1) PRIMARY KEY,
	theirid int NOT NULL,
	FOREIGN KEY (theirid) REFERENCES otdel(id)
);
