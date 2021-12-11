DROP DATABASE agents;
CREATE DATABASE agents;

CREATE TABLE agent(
  agent_id int PRIMARY KEY NOT NULL,
  person_id int NOT NULL,
  customer_count int DEFAULT '0',
  FOREIGN KEY (person_id) REFERENCES person(person_id)
);
