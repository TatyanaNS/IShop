-- create data base
-- application roles dictionary
create table TANOVIKOVA.roles (
	id        varchar(200) DEFAULT sys_guid() PRIMARY KEY,
	role_name varchar(50) not null
);

-- application users dictionary
create table TANOVIKOVA.users (
	id         varchar(200) DEFAULT sys_guid() PRIMARY KEY,
	email      varchar(100) not null,
	password   varchar(100) not null,
	last_name  varchar(100) not null,
	first_name varchar(100) not null
);

-- user_role
create table TANOVIKOVA.user_role(
	user_id varchar(200) not null,
	role_id varchar(200) not null,
	CONSTRAINT fk_users_user_id FOREIGN KEY(user_id) REFERENCES TANOVIKOVA.users(id) ON DELETE CASCADE,
	CONSTRAINT fk_roles_role_id FOREIGN KEY(role_id) REFERENCES TANOVIKOVA.roles(id) ON DELETE CASCADE
);

-- application users dictionary
create table TANOVIKOVA.manufacturers (
	id        varchar(200) DEFAULT sys_guid() PRIMARY KEY,
	manufacturer_name varchar(250) not null
);

-- application products dictionary
create table TANOVIKOVA.products (
	id              varchar(200) DEFAULT sys_guid() PRIMARY KEY,
	product_name    varchar(250) not null,
	price		    decimal not null,
	manufacturer_id varchar(200) not null,
	CONSTRAINT fk_manufacturer_id FOREIGN KEY(manufacturer_id) REFERENCES TANOVIKOVA.manufacturers(id) ON DELETE CASCADE
);