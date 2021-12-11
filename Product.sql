CREATE TABLE product (
    PRIMARY KEY (product_id),
    product_id            INT            NOT NULL,
    category              VARCHAR(255)   NOT NULL,
    name                  VARCHAR(255)   NOT NULL,
    personalization_limit INT            NOT NULL,
    price                 NUMERIC(19, 2) NOT NULL,
    product_type          VARCHAR(255)   NOT NULL,
);

CREATE TABLE product_features (
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    product_id INT          NOT NULL,
    feature    VARCHAR(255) NOT NULL,
);

CREATE TABLE product_slotted (
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    product_id INT NOT NULL,
    slots      INT NOT NULL,
);

CREATE TABLE product_dimensional (
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    product_id INT NOT NULL,
    height     INT NOT NULL,
    length     INT NOT NULL,
    width      INT NOT NULL,
);

CREATE TABLE product_color_stock (
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    product_id INT          NOT NULL,
    color      VARCHAR(255) NOT NULL,
    stock      INT          NOT NULL,
);