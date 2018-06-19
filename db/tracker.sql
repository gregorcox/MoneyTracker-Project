DROP TABLE transactions;
DROP TABLE tags;
DROP TABLE merchants;

CREATE TABLE tags(
  id SERIAL4 primary key,
  name VARCHAR(255)
);

CREATE TABLE merchants(
  id SERIAL4 primary key,
  name VARCHAR(255)
);

CREATE TABLE transactions(
  id SERIAL4 primary key,
  merchant_id INT4 REFERENCES merchants(id) ON DELETE CASCADE,
  tag_id INT4 REFERENCES tags(id) ON DELETE CASCADE,
  amount INT4,
  day DATE 
);
