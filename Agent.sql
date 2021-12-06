DROP DATABASE agents;
CREATE DATABASE agents;

CREATE TABLE agent(
  agent_id int PRIMARY KEY NOT NULL,
  name varchar(255) NOT NULL DEFAULT ' ',
  customer_count int DEFAULT '0'
);
