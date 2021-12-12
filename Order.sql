CREATE TABLE orders (
    PRIMARY KEY (order_id),
    FOREIGN KEY (agent_id)    REFERENCES agent(agent_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    order_id         INT            NOT NULL,
    agent_id         INT            NOT NULL,
    customer_id      INT            NOT NULL,
    amount_due       NUMERIC(19, 2) NOT NULL DEFAULT 0,
    order_date       DATE           NOT NULL,
    delivery_address VARCHAR(255)   NOT NULL DEFAULT ' ',
    gift             BOOLEAN        NOT NULL
);

CREATE TABLE ordered_product (
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    order_id        INT          NOT NULL,
    product_id      INT          NOT NULL,
    discount        INT          NOT NULL DEFAULT 0,
    personalization VARCHAR(255) NOT NULL,
    quantity        INT          NOT NULL DEFAULT 0
);

CREATE TABLE order_recipient (
    FOREIGN KEY (order_id)  REFERENCES orders(order_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id),
    order_id  INT NOT NULL,
    person_id INT NOT NULL
);
