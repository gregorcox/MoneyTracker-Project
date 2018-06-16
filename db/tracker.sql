DROP TABLE transactions;
DROP TABLE tags;
DROP TABLE merchants;

CREATE table tags(
  id SERIAL4 primary key,
  name VARCHAR(255)
);
