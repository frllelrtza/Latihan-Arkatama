CREATE TABLE USER(
	id int NOT null AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(100)not null UNIQUE,
	nama VARCHAR(255) NOT null,
	PASSWORD VARCHAR(64) NOT null,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NULL DEFAULT current_timestamp
	);
	
	DESC user;
	
	INSERT INTO user(username, nama, PASSWORD)
	VALUES('user1', 'user1', 'pw');
	
	SELECT * FROM user;
	
	INSERT INTO user(username, nama, PASSWORD)
	VALUES('user2', 'user2', 'pw'), ('user3','user3', 'pw'),
	('user4', 'user4', 'pw'), ('user5','user5', 'pw');
	