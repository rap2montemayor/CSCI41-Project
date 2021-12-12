INSERT INTO person (person_id, name)
VALUES (1001, 'Diluc Ragnvindr'),
       (1002, 'Venti'),
       (1003, 'Victor Magtanggol'),
       (1004, 'Maria Ressa'),
       (1005, 'Osana Azuma'),
       (1006, 'Hoh Lee'),
       (1007, 'Yoshi P.');

INSERT INTO agent (agent_id, person_id, customer_count)
VALUES (2001, 1001, 0),
       (2010, 1002, 0),
       (2002, 1003, 20),
       (2020, 1007, 0);

INSERT INTO customer (customer_id, agent_id, person_id)
VALUES (3002, 2001, 1002),
       (3004, 2010, 1004),
       (3006, 2002, 1006),
       (3008, 2020, 1007);

INSERT INTO product (product_id, category, name, personalization_limit, price)
VALUES (4001, 'planners', 'yung ninakaw na notebook ni albedo', 30, 12345),
       (4002, 'folders', 'mga harana ni venti', 32, 31415),
       (4003, 'pen organizers', 'pencil case ni xinqiu', 32, 12345);

INSERT INTO product_features (product_id, feature)
VALUES (4001, 'with instructions on how to make another albedo'),
       (4001, 'includes sketches of sucrose'),
       (4002, 'venti sadboi vibes'),
       (4002, 'may kasamang paboritong kanta ni barbara'),
       (4002, 'pampatulog ni xiao'),
       (4003, 'may kasamang pencil sharpener');

INSERT INTO product_pen_organizers (product_id, slots)
VALUES (4003, 5);

INSERT INTO product_folders (product_id, height, length, width)
VALUES (4002, 10, 4, 20);

INSERT INTO product_planners (product_id, height, length, width)
VALUES (4001, 9, 8, 7);

INSERT INTO product_color_stock (product_id, color, stock)
VALUES (4001, 'red', 3),
       (4001, 'orange', 1),
       (4001, 'yellow', 4),
       (4002, 'green', 1),
       (4002, 'blue', 5),
       (4002, 'purple', 9),
       (4003, 'pink', 2),
       (4003, 'black', 6),
       (4003, 'red', 8);

INSERT INTO orders (order_id, agent_id, customer_id, amount_due, order_date, delivery_address, gift)
VALUES (5001, 2001, 3002, 20000, '2021-12-12', 'Windrise Tree', false),
       (5002, 2020, 3008, 12300, '2021-12-12', 'Loyola Heights', false);

INSERT INTO ordered_product (order_id, product_id, discount, personalization, quantity)
VALUES (5001, 4002, 0, 'XxBarbatosxX', 1),
       (5002, 4003, 0, 'Cloud_Strife', 1);

INSERT INTO order_recipient (order_id, person_id)
VALUES (5001, 1002),
       (5002, 1007);
