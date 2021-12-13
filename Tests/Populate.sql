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
       (2020, 1004, 10),
       (2003, 1005, 0),
       (2030, 1006, 0),
       (2004, 1007, 15);

INSERT INTO customer (customer_id, agent_id, person_id)
VALUES (3002, 2001, 1002),
       (3004, 2010, 1004),
       (3006, 2002, 1006),
       (3008, 2004, 1007),
       (3010, 2004, 1001);

INSERT INTO product (product_id, category, name, personalization_limit, price)
VALUES (4001, 'planners', 'yung ninakaw na notebook ni albedo', 30, 12345),
       (4002, 'folders', 'mga harana ni venti', 32, 31415),
       (4003, 'pen organizers', 'pencil case ni xinqiu', 32, 12345),
       (4004, 'folders', 'flipper', 8, 745),
       (4005, 'folders', 'filer', 8, 995),
       (4006, 'folders', 'keeper', 8, 895),
       (4007, 'pen organizers', 'slinger', 5, 95),
       (4008, 'pen orgaonizers', 'shifter', 8, 295),
       (4009, 'pen organizers', 'wrapper', 6, 345),
       (4010, 'planners', 'doodler', 8, 595),
       (4011, 'planners', 'scribbler', 8, 595);
       

INSERT INTO product_features (product_id, feature)
VALUES (4001, 'reversible'),
       (4001, 'slim and compact'),
       (4001, 'leatherette material'),
       (4001, 'magnetic corners'),
       (4001, 'magnetic clipboard'),
       (4001, 'envelope pocket'),
       (4001, 'pen loop (2)'),

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

INSERT INTO orders (order_id, agent_id, customer_id, order_date, schedule, delivery_address, gift)
VALUES (5001, 2001, 3002, '2021-12-12', '2022-1-4', 'Windrise Tree', false),
       (5002, 2004, 3008, '2021-12-12', '2022-1-10', 'Loyola Heights', false),
       (5003, 2004, 3010, '2021-12-13', '2022-1-11', 'Summoners Rift', true);

INSERT INTO ordered_product (order_id, product_id, discount, personalization, color, quantity)
VALUES (5001, 4002, 0, 'XxBarbatosxX', 'blue', 1),
       (5002, 4003, 0, 'Cloud_Strife', 'red', 1),
       (5003, 4001, 0, 'Vi', 'pink', 3);

INSERT INTO order_recipient (order_id, person_id)
VALUES (5001, 1002),
       (5002, 1007),
       (5003, 1002);
