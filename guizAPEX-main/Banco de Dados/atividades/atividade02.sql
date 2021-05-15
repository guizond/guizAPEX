CREATE TABLE produtos(
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR (30),
  marca VARCHAR (30),
  valor DOUBLE
);
INSERT INTO
  produtos
VALUES
  (null, "Galaxy S10", "Samsung", 5000),
  (null, "iPhone 11", "Apple", 6000),
  (null, "Moto G7", "Motorola", 1500),
  (null, "Galaxy Note 10", "Samsung", 6500),
  (null, "iPhone 8", "Apple", 3000);
SELECT
  *
FROM
  produtos;
SELECT
  marca
FROM
  produtos
GROUP BY
  marca;
SELECT
  marca,
  count(*)
FROM
  produtos
GROUP BY
  marca;
SELECT
  *
FROM
  produtos
WHERE
  marca = "Samsung"
  or marca = "Apple";
SELECT
  *
FROM
  produtos
WHERE
  (
    marca = "Samsung"
    or marca = "Apple"
  )
  AND valor < 6000;
INSERT INTO
  produtos
VALUES
  (null, "iPhone 11 MAX", "Apple", 6500);
SELECT
  *
FROM
  produtos
WHERE
  valor =(
    SELECT
      MAX(valor)
    FROM
      produtos
  );
DELETE FROM
  produtos
WHERE
  marca = "Samsung";
INSERT INTO
  produtos
VALUES
  (null, "Samsung A7", "Samsung", 2000);
INSERT INTO
  produtos
VALUES
  (null, "Samsung A8", "Samsung", 2350);
TRUNCATE TABLE produtos;
DROP TABLE produtos;