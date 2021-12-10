DROP DATABASE orders;

CREATE DATABASE orders;

CREATE TABLE order(
  order_number int PRIMARY KEY NOT NULL,
  customer_id int,
  agent_id int,  
  amount_due float(2) DEFAULT 0.00,
  dt DATE NOT NULL FORMAT 'mm.dd.yyyy',
  delivery_address varchar(255) NOT NULL DEFAULT ' ',
  gift bit DEFAULT 0, -- 0 if false, 1 if true bc there no booleans apparently
  recipient varchar(255) NOT NULL DEFAULT ' ',
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (agent_id) REFERENCES agent(agent_id),
  CHECK 
   (gift IN (0,1))
);
