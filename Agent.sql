CREATE TABLE agent (
    PRIMARY KEY (agent_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id),
    agent_id       int NOT NULL,
    person_id      int NOT NULL,
    customer_count int NOT NULL DEFAULT 0
);
