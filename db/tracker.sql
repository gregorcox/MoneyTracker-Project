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
