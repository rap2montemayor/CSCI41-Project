DROP DATABASE customers;
CREATE DATABASE customers;

CREATE TABLE customer(
  customer_id int PRIMARY KEY NOT NULL,
  person_id int NOT NULL,
  agent_id int NOT NULL,
  FOREIGN KEY (agent_id) REFERENCES agent(agent_id),
  FOREIGN KEY (person_id) REFERENCES person(person_id)
);
