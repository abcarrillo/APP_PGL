create database app_pgl;
use app_pgl;

create table categories (
    id int not null AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(40),
    descripcion varchar(100)
);

create table products (
    id int not null AUTO_INCREMENT,
    nombre varchar(90),
    descripcion varchar(290),
    imagen varchar(50),
    precio double,
    idCategoria int not null,
    PRIMARY KEY (id),
    CONSTRAINT FK_category_product FOREIGN KEY (idCategoria)
    REFERENCES Categories(id)
);

create table users (
    id int not null AUTO_INCREMENT PRIMARY KEY,
    username varchar(50),
    password varchar(60),
    roll varchar(30)
);

INSERT INTO `categories`(`nombre`, `descripcion`) VALUES ('Ordenadores', 'Amplia gama de ordenadores para varios usos.');
INSERT INTO `categories`(`nombre`, `descripcion`) VALUES ('Portátiles', 'Amplia gama de portátiles para varios usos.');
INSERT INTO `categories`(`nombre`, `descripcion`) VALUES ('Teléfonos', 'Amplia gama de teléfonos para varios usos.');

INSERT INTO `products`(`nombre`, `descripcion`, `imagen`, `precio`, `idCategoria`) VALUES ('PC GAMING 100', 'El mejor PC de la nueva generación en España', 'images/pcgaming.png', 999.99, 1);
INSERT INTO `products`(`nombre`, `descripcion`, `imagen`, `precio`, `idCategoria`) VALUES ('Portatil GAMING 100', 'El mejor portátil de la nueva generación en España', 'images/portatilgaming.png', 999.99, 2);
INSERT INTO `products`(`nombre`, `descripcion`, `imagen`, `precio`, `idCategoria`) VALUES ('Portátil ofimático', 'Gran portátil para trabajos de oficina.', 'images/ofimatica.png', 399.99, 2);
INSERT INTO `products`(`nombre`, `descripcion`, `imagen`, `precio`, `idCategoria`) VALUES ('HUAWEI P9 LITE', '', 'images/huawei.png', 99.99, 3);

INSERT INTO `users`(`username`, `password`, `roll`) VALUES ('admin', '1234', 'admin');
INSERT INTO `users`(`username`, `password`, `roll`) VALUES ('alberto', '1234', 'user');