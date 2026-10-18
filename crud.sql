

CREATE TABLE roles(
    idrol INT PRIMARY KEY AUTO_INCREMENT,
    rol VARCHAR(20) NOT NULL,
    estado INT DEFAULT 1
);

INSERT INTO roles(rol) VALUES('Administrador'),('Operador');

CREATE TABLE usuarios(
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    passw VARCHAR(255) NOT NULL,
    idrol INT,
    estado TINYINT DEFAULT 1
);

ALTER TABLE usuarios ADD FOREIGN KEY (idrol) REFERENCES roles(idrol) ON DELETE SET NULL ON UPDATE CASCADE;

INSERT INTO usuarios(usuario,email,passw,idrol) VALUES
('admin','admin@gmail.com','$2y$10$SKsFKFNa9ehxByZaTThn4.fIXEoZjE6SrIyn49oYwWnDB1KhaXJK.',1)

