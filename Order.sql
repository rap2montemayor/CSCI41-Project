DROP DATABASE orders;

CREATE DATABASE orders;

CREATE TABLE order(
  order_id int PRIMARY KEY NOT NULL,
  agent_id int FOREIGN KEY references agent(agent_id),
  customer_id int FOREIGN KEY references customer(customer_id),
  amount_due int NOT NULL DEFAULT 0,
  order_date date NOT NULL,
  delivery_address varchar(255) NOT NULL DEFAULT ' ',
  gift boolean NOT NULL,
);

CREATE TABLE ordered_product(
  order_id int NOT NULL FOREIGN KEY references order(order_id),
  product_id int NOT NULL FOREIGN KEY references product(product_id),
  personalization varchar(255) NOT NULL,
  discount int NOT NULL DEFAULT 0,
  quantity int NOT NULL DEFAULT 0
);

CREATE TABLE order_recipient(
  order_id int FOREIGN KEY references order(order_number),
  person_id int FOREIGN KEY references person(person_id)
);
