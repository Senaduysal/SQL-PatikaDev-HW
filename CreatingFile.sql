CREATE TABLE goods (
    product_no INTEGER,
    name TEXT,
    price NUMERIC,
    CHECK (price > 0),
    discounted_price NUMERIC,
    CHECK (discounted_price > 0), // price and discounted price must be higher than 0 
    CHECK (price > discounted_price) //price cannot be higher than discounted price
);
SELECT * FROM goods;
