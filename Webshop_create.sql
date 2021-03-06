-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-11 11:27:45.679




-- tables
-- Table CATEGORY
CREATE TABLE CATEGORY (
    ID int    NOT NULL ,
    CATEGORY_CODE varchar(50)  ,
    NAME varchar(50)    ,
    DESCRIPTION varchar(50) ,
    CONSTRAINT CATEGORY_pk PRIMARY KEY (ID)
);

-- Table ORDERS
CREATE TABLE ORDERS (
    ID int    NOT NULL ,
    ORDER_NO varchar(50)    ,
    ORDER_DATE timestamp   ,
    SHIPPING_ADRESS varchar(50)   ,
    SHIPPING_CITY varchar(50)   ,
    STATUS varchar(50)    ,
    USER_ID int    ,
    CONSTRAINT ORDERS_pk PRIMARY KEY (ID)
);

-- Table PRODUCTS
CREATE TABLE PRODUCTS (
    ID int    NOT NULL ,
    NAME varchar(50)    ,
    DESCRIPTION varchar(50)    ,
    PRICE varchar(50)    ,
    PRODUCT_CATEGORY_ID int   ,
	PRODUCT_ORDER_ID INT,
    CONSTRAINT PRODUCTS_pk PRIMARY KEY (ID)
);

-- Table ROLE
--CREATE TABLE ROLE (
 --   ID int    ,
 --   NAME varchar(50)   ,
  --  CONSTRAINT ROLE_pk PRIMARY KEY (ID)
--);

-- Table USERS
CREATE TABLE USER (
    ID int    NOT NULL ,
    FIRST_NAME varchar(50)    ,
    LAST_NAME varchar(50)    ,
    EMAIL varchar(50)    ,
    USERNAME varchar(50)    ,
    PASSWORD varchar(50)    ,
    ADDRESS varchar(50)   ,
    CITY varchar(50)   ,
	STATE varchar(50)   ,
	COUNTRY varchar(50)    ,
	USER_ROLE_ID int,
    CONSTRAINT USERS_pk PRIMARY KEY (ID)
);

-- Table USER_ROLE
CREATE TABLE USER_ROLE (
    ID int    ,
    ROLE_NAME  varchar(50) ,
    ROLE_DESCRIPTION varchar(50)     ,
    CONSTRAINT USER_ROLE_pk PRIMARY KEY (ID)
);


CREATE TABLE  ORDER_PRODUCT (
    ID int    NOT NULL ,
    ORDER_ID  INT,
	PRODUCT_ID INT,
	PRICE INT,
    CONSTRAINT PRODUCTS_pk PRIMARY KEY (ID)
);
-- Sequence

-- foreign keys

ALTER TABLE PRODUCTS
ADD FOREIGN KEY (PRODUCT_CATEGORY_ID) REFERENCES CATEGORY (ID);


ALTER TABLE USER
ADD FOREIGN KEY (USER_ROLE_ID) REFERENCES USER_ROLE (ID);


ALTER TABLE ORDERS
ADD FOREIGN KEY (USER_ID) REFERENCES USER (ID);


ALTER TABLE PRODUCTS
ADD FOREIGN KEY (PRODUCT_ORDER_ID) REFERENCES ORDERS(ID);
-- Reference:  ORDERS_USERS (table: ORDERS)


--ALTER TABLE ORDERS ADD CONSTRAINT ORDERS_USERS FOREIGN KEY ORDERS_USERS (USERS_ID)
 --   REFERENCES USERS (ID);
-- Reference:  PRODUCTS_CATEGORY (table: PRODUCTS)


--ALTER TABLE PRODUCTS ADD CONSTRAINT PRODUCTS_CATEGORY FOREIGN KEY PRODUCTS_CATEGORY ()
 --   REFERENCES CATEGORY ();
-- Reference:  USER_ROLE_ROLE (table: USER_ROLE)


--ALTER TABLE USER_ROLE ADD CONSTRAINT USER_ROLE_ROLE FOREIGN KEY USER_ROLE_ROLE ()
 --   REFERENCES ROLE ();
-- Reference:  USER_ROLE_USERS (table: USER_ROLE)


--ALTER TABLE USER_ROLE ADD CONSTRAINT USER_ROLE_USERS FOREIGN KEY USER_ROLE_USERS (USERS_ID)
  --  REFERENCES USERS (ID);

create sequence webshopseq
start with 1 
nomaxvalue; 

-- End of file.

