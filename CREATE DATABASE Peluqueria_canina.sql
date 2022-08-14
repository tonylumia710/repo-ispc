CREATE DATABASE peluqueria_caninaDB;
 USE peluqueria_caninaDB;
  CREATE TABLE Dueno;
 (DNI INT,
 Nombre VARCHAR(25) NOT NULL,
 Apellido VARCHAR(25) NOT NULL,
 Telefono INT NOT NULL,
 Direccion VARCHAR(50),
 CONSTRAINT Id_dueno PRIMARY KEY (DNI));

CREATE TABLE Perro;
(ID_perro INT,
Nombre VARCHAR(25) NOT NULL,
Fecha_nac DATE NOT NULL,
Sexo VARCHAR(6),
DNI INT,
CONSTRAINT id_perro PRIMARY KEY (ID_perro),
CONSTRAINT F_DNI FOREIGN KEY (DNI) REFERENCES Dueno(DNI));

CREATE TABLE Historial;
(ID_Historial INT,
Fecha DATE NOT NULL,
Perro INT,
Descripcion VARCHAR(50) NOT NULL,
Monto INT,
CONSTRAINT id_historial PRIMARY KEY (ID_Historial),
CONSTRAINT F_Perro FOREIGN KEY (Perro) REFERENCES Perro(ID_perro));

INSERT INTO Perro(ID_perro,Nombre,Fecha_nac,Sexo,DNI) VALUES
('0001','Capitano','2017-03-25','Macho','32124800'),
('0002','Desmo','2018-08-02','Macho','35966642'),
('0003','Yiyi','2012-06-15','Hembra','39458692'),
('0004','Nano','2015-04-07','Macho','39458692');

INSERT INTO Dueno VALUES
('32124800','Pablo','Dominguez','4565238','Belgrano 122'),
('35966642','Florencia','Perez','4785423','Castilla 645'),
('39458692','Maria','Guzman','4856951','Sarmiento 295');

INSERT INTO Historial VALUES
('001','2022-04-19','0001','Baño','1200'),
('002','2022-05-09','0001','Corte','1800'),
('003','2022-05-25','0002','Baño-Corte','2200'),
('004','2022-07-15','0003','Baño','1200'),
('005','2022-07-18','0004','Baño','1200'),
('006','2022-07-19','0004','Baño','1200');

UPDATE Perro
SET Fecha_nac = '2017-04-25'
WHERE ID_perro = '0001';

SELECT SUM(Monto) AS Venta_Julio
FROM Historial
WHERE Fecha BETWEEN '2022-07-01' AND '2022-07-31';






