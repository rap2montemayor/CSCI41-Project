DROP DATABASE orders;

CREATE DATABASE orders;

CREATE TABLE order(
  order_number int PRIMARY KEY NOT NULL,
  amount_due int NOT NULL DEFAULT '0',
  dt date NOT NULL FORMAT 'mm.dd.yyyy',
  delivery_address varchar(255) NOT NULL DEFAULT ' ',
  gift varchar(255) NOT NULL DEFAULT 'False',
  recipient varchar(255) NOT NULL DEFAULT ' '
);
