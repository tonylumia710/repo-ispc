CREATE TABLE perro(
Id_perro int not null UNIQUE,
Nombre varchar(30) not null,
Fecha_nac year,
Sexo varchar(20) not null,
Dni_dueno int not null,
PRIMARY KEY(Id_perro),
FOREIGN KEY(Dni_dueno) references dueno(dni)
);

CREATE TABLE dueno(
dni int unique not null,
Nombre varchar (30) not null,
Apellido varchar (30) not null,
Telefono int not null,
Direccion varchar (50),
primary key(dni)
);

CREATE TABLE Historial(
id_historial int not null unique,
fecha datetime not null,
perro int not null,
descripcion varchar(500) not null,
monto float not null, 
primary key (id_historial),
FOREIGN KEY(perro) references perro(id_perro)
);

INSERT INTO dueno
values (40958673, 'marianela', 'romanoff', 4559086, 'los hornillso 1245');

INSERT INTO perro
values (10, 'canva', '2014', 'hembra', 40958673);

INSERT INTO historial
values (44, current_timestamp(), 77, 'limpieza de orejas, servicio completo de bañado', 6540);

select * from perro;


