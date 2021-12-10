DROP DATABASE customers;
CREATE DATABASE customers;

CREATE TABLE customer(
  customer_id int PRIMARY KEY NOT NULL,
  name varchar(255) NOT NULL DEFAULT ' ',
  agent_id int,
  FOREIGN KEY (agent_id) REFERENCES agent(agent_id)

);
