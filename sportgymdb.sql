CREATE DATABASE IF NOT EXISTS sportgymdb;
USE sportgymdb;

-- -----------------------------------------------------
-- Table `sportgymdb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportgymdb`.`Usuarios` (
  `idUsuario` INT(11) NOT NULL,
  `documentoIdentidad` INT(45) NOT NULL,
  `primerNombre` VARCHAR(45) NOT NULL,
  `segundoNombre` VARCHAR(45) NULL,
  `primerApellido` VARCHAR(45) NOT NULL,
  `segundoApellido` VARCHAR(45) NULL,
  `eps` VARCHAR(45) NOT NULL,
  `rh` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  `telefono` INT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `contrasena` VARCHAR(45) NOT NULL,
  `tipoUsuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sportgymdb`.`Personalizados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportgymdb`.`Personalizados` (
  `idPersonalizado` INT(11) NOT NULL,
  `entrenador` VARCHAR(45) NOT NULL,
  `horaInicio` VARCHAR(45) NOT NULL,
  `horaFinal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPersonalizado`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sportgymdb`.`Planes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportgymdb`.`Planes` (
  `idSuscripciones` INT(11) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `precio` INT(45) NOT NULL,
  `idPersonalizado` INT(11) NOT NULL,
  `idUsuario` INT(11) NOT NULL,
  `fechaInicio` DATE NULL,
  `fechaFinal` DATE NULL,
  PRIMARY KEY (`idSuscripciones`),
  INDEX `horarios_idx` (`idPersonalizado` ASC),
  INDEX `idUsuarios_idx` (`idUsuario` ASC),
  CONSTRAINT `fk_horarios`
    FOREIGN KEY (`idPersonalizado`)
    REFERENCES `sportgymdb`.`Personalizados` (`idPersonalizado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idUsuarios_planes`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `sportgymdb`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sportgymdb`.`EstadoCarrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportgymdb`.`EstadoCarrito` (
  `idEstadoCarrito` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstadoCarrito`),
  INDEX `idUsuario_idx` (`idUsuario` ASC),
  CONSTRAINT `fk_idUsuario_estadoCarrito`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `sportgymdb`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sportgymdb`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportgymdb`.`Productos` (
  `idProductos` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  `precio` INT(30) NOT NULL,
  `contenido` VARCHAR(45) NULL,
  `cantidad` INT(30) NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProductos`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sportgymdb`.`Carrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportgymdb`.`Carrito` (
  `idCarrito` INT NOT NULL,
  `idEstadoCarrito` INT NOT NULL,
  `idProducto` INT NOT NULL,
  `cantidad` INT(30) NULL,
  `precioTotal` INT(30) NULL,
  PRIMARY KEY (`idCarrito`),
  INDEX `idEstadoCarrito_idx` (`idEstadoCarrito` ASC),
  INDEX `idProducto_idx` (`idProducto` ASC),
  CONSTRAINT `fk_idEstadoCarrito`
    FOREIGN KEY (`idEstadoCarrito`)
    REFERENCES `sportgymdb`.`EstadoCarrito` (`idEstadoCarrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idProducto_carrito`
    FOREIGN KEY (`idProducto`)
    REFERENCES `sportgymdb`.`Productos` (`idProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sportgymdb`.`Tienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sportgymdb`.`Tienda` (
  `idTienda` INT(11) NOT NULL,
  `idUsuarios` INT(11) NOT NULL,
  `idCarrito` INT NOT NULL,
  `idProducto` INT NOT NULL,
  PRIMARY KEY (`idTienda`),
  INDEX `idUsuarios_idx` (`idUsuarios` ASC),
  INDEX `idCarrito_idx` (`idCarrito` ASC),
  INDEX `idProductos_idx` (`idProducto` ASC),
  CONSTRAINT `fk_idUsuarios_tienda`
    FOREIGN KEY (`idUsuarios`)
    REFERENCES `sportgymdb`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idCarrito_tienda`
    FOREIGN KEY (`idCarrito`)
    REFERENCES `sportgymdb`.`Carrito` (`idCarrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idProducto_tienda`
    FOREIGN KEY (`idProducto`)
    REFERENCES `sportgymdb`.`Productos` (`idProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


INSERT INTO sportgymdb.usuarios (idUsuario, documentoIdentidad, primerNombre, segundoNombre, primerApellido, segundoApellido, eps, rh, fechaNacimiento, telefono, correo, contrasena, tipoUsuario)
VALUES (1, 2839494, 'Nelson', 'Manuel', 'Vargas', 'Godoy', 'sanitas', 'B+', '2005-01-10', 31248459, 'nelson@gmail.com', 'jsujfj', 'usuario');

INSERT INTO sportgymdb.usuarios (idUsuario, documentoIdentidad, primerNombre, segundoNombre, primerApellido, segundoApellido, eps, rh, fechaNacimiento, telefono, correo, contrasena, tipoUsuario)
VALUES (2, 2839494, 'Nelson', 'Manuel', 'Vargas', 'Godoy', 'sanitas', 'B+', '2005-01-10', 31248459, 'nelson@gmail.com', 'jsujfj', 'usuario');

SELECT * FROM sportgymdb.usuarios;












