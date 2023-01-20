DROP DATABASE IF EXISTS planilla;

CREATE DATABASE IF NOT EXISTS planilla CHARACTER SET utf8mb4 COLLATE UTF8MB4_SPANISH2_CI;

USE planilla;

DROP TABLE IF EXISTS `tbl_agencias`;
DROP TABLE IF EXISTS `tbl_departamentos`;
DROP TABLE IF EXISTS `tbl_puestos`;
DROP TABLE IF EXISTS `tbl_usuarios`;
DROP TABLE IF EXISTS `tbl_bancos`;
DROP TABLE IF EXISTS `tbl_cuentas`;
DROP TABLE IF EXISTS `tbl_empleados`;
DROP TABLE IF EXISTS `tbl_prestamos`;
DROP TABLE IF EXISTS `tbl_comisiones`;
DROP TABLE IF EXISTS `tbl_conceptos`;
DROP TABLE IF EXISTS `tbl_operaciones`;
DROP TABLE IF EXISTS `tbl_tipo_planillas`;
DROP TABLE IF EXISTS `tbl_planillas`;
DROP TABLE IF EXISTS `tbl_detalle_planillas`;
DROP TABLE IF EXISTS `tbl_rutas`;
DROP TABLE IF EXISTS `tbl_permisos_usuarios`;

CREATE TABLE IF NOT EXISTS `tbl_agencias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `direccion` TEXT,
  `telefono` VARCHAR(25),
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

DELETE FROM `tbl_agencias`;

INSERT INTO `tbl_agencias` VALUES
(NULL, 'AGENCIA OLIMPICA', '71 Avenida Sur 3719, San Salvador', '2561-2300', NOW(), NOW()),
(NULL, 'AGENCIA MERLIOT', 'Centro Comercial Plaza Merliot Tercer Nivel Local #396', '2288-2103', NOW(), NOW()),
(NULL, 'AGENCIA ROOSEVELT', 'Alameda Roosevelt y 37 Av.Norte,N° 2002, 2300, PBX.2239, San Salvador', '2561-2300', NOW(), NOW());

CREATE TABLE IF NOT EXISTS `tbl_departamentos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) DEFAULT NULL,
  `descripcion` TEXT,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_puestos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tbl_puestos_tbl_departamentos` FOREIGN KEY (`id_departamento`) REFERENCES `tbl_departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_bancos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `direccion` TEXT NOT NULL,
  `telefono` VARCHAR(11) NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_cuentas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `num_cuenta` VARCHAR(25) NOT NULL,
  `id_banco` INT NOT NULL,
  `estado` ENUM('A', 'I') NOT NULL DEFAULT 'A',
  CONSTRAINT `fk_tbl_cuentas_tbl_bancos` FOREIGN KEY (`id_banco`) REFERENCES `tbl_bancos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_empleados`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `num_cliente` VARCHAR(25) NOT NULL,
  `nombres` VARCHAR(255) NOT NULL,
  `apellidos` VARCHAR(255) NOT NULL,
  `correo_institucional` TEXT DEFAULT NULL,
  `correo_personal` TEXT DEFAULT NULL,
	`telfijo`  VARCHAR(11) NULL, 
	`telfijo_per`  VARCHAR(11) NULL,
	`celular`  VARCHAR(11) NULL,
	`celular_per`  VARCHAR(11) NULL,
	`direccion` TEXT DEFAULT NULL, 
  `dui` VARCHAR(25) NOT NULL,
  `nit` VARCHAR(25) NOT NULL,
  `num_isss` VARCHAR(25) NOT NULL,
  `num_afp` VARCHAR(25) NOT NULL,
  `num_ipsfa` VARCHAR(25) NOT NULL,
  `sexo` ENUM('F', 'M', 'D') NOT NULL,
  `fecha_ingreso` DATE NOT NULL,
  `fecha_nacimiento` DATE DEFAULT NULL,
  `estado` ENUM('A', 'I') NOT NULL,
  `sueldo` DECIMAL(10, 2) NOT NULL,
  `id_agencia` INT,
  `id_puesto` INT,
  `id_cuenta` INT,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tbl_empleados_tbl_agencias` FOREIGN KEY (`id_agencia`) REFERENCES `tbl_agencias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_empleados_tbl_puestos` FOREIGN KEY (`id_puesto`) REFERENCES `tbl_puestos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_empleados_tbl_cuentas` FOREIGN KEY (`id_cuenta`) REFERENCES `tbl_cuentas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_usuarios`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(25) NOT NULL,
  `contrasenia` VARCHAR(255),
  `vencimiento_contrasenia` DATE NOT NULL,
  `id_empleado` INT NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tbl_usuarios_tbl_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_prestamos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `num_cliente` VARCHAR(25) NOT NULL,
  `num_prestamo` VARCHAR(25) NOT NULL,
  `saldo_prestamo` DECIMAL(10, 2),
  `cuota_mensual` DECIMAL(10, 2),
	`cuota_quincena` DECIMAL(10, 2),
	`valor_descuento` DECIMAL(10, 2),
  `tipo_prestamo` ENUM('E', 'I') NOT NULL DEFAULT 'I',
  `estado` ENUM('A', 'I') NOT NULL DEFAULT 'A',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_comisiones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `num_cliente` VARCHAR(25) NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `comision` DECIMAL(10, 2),
  `observaciones` TEXT DEFAULT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_conceptos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `detalle` TEXT,
  `tipo` ENUM('Ingreso', 'Descuento', 'Bono'),
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_tipo_asignaciones`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL, 
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`) 
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_asignaciones`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_empleado` INT NOT NULL,
  `id_concepto` INT NOT NULL,
	`id_tipo_asignacion` INT NOT NULL,
	`monto`  DECIMAL(10,2) DEFAULT 0,
  `estado` ENUM('A', 'I') NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tbl_asignaciones_tbl_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_asignaciones_tbl_conceptos` FOREIGN KEY (`id_concepto`) REFERENCES `tbl_conceptos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_tbl_tipo_asignaciones` FOREIGN KEY (`id_tipo_asignacion`) REFERENCES  `tbl_tipo_asignaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_operaciones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` TEXT,
  `desde` DECIMAL(10, 2) DEFAULT 0,
  `hasta` DECIMAL(10, 2) DEFAULT 0,
  `porcentaje_min` DECIMAL(10, 2) DEFAULT 0,
  `porcentaje_max` DECIMAL(10, 2) DEFAULT 0,
  `sobre_exceso` DECIMAL(10, 2) DEFAULT 0,
  `cuota` DECIMAL(10, 2) DEFAULT 0,
  `id_concepto` INT NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tbl_operaciones_tbl_conceptos` FOREIGN KEY (`id_concepto`) REFERENCES `tbl_conceptos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_tipo_planillas` (
  `id`  INT NOT NULL AUTO_INCREMENT, 
  `nombre` VARCHAR(50) NOT NULL, 
  `detalle` TEXT NOT NULL, 
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_planillas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(25) NOT NULL,
  `f_inicio_planilla` DATE NOT NULL,
  `f_fin_planilla` DATE NOT NULL,
  `total_planilla` DECIMAL(10, 2) DEFAULT NULL,
	`id_tipo_planilla` INT NOT NULL,
	`estado` ENUM('A', 'P') NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
	CONSTRAINT fk_tbl_tipo_planillas FOREIGN KEY (id_tipo_planilla) REFERENCES tbl_tipo_planillas(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_detalle_planillas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sueldo_mensual` DECIMAL(10, 2) DEFAULT 0,
	`sueldo_quincenal` DECIMAL(10, 2) DEFAULT 0,
	`dias` INT NOT NULL,
  `bonos` DECIMAL(10, 2) DEFAULT 0,
  `bonos_variables` DECIMAL(10, 2) DEFAULT 0,
  `vacaciones` DECIMAL(10, 2) DEFAULT 0,
  `comision` DECIMAL(10, 2) DEFAULT 0,
  `isss` DECIMAL(10, 2) DEFAULT 0,
  `afp` DECIMAL(10, 2) DEFAULT 0,
  `ipsfa` DECIMAL(10, 2) DEFAULT 0,
	`fosafi` DECIMAL(10, 2) DEFAULT 0,
	`renta` DECIMAL(10, 2) DEFAULT 0,
	`total_descuentos` DECIMAL(10, 2) DEFAULT 0,
  `prestamos` DECIMAL(10, 2) DEFAULT 0,
  `pgr` DECIMAL(10, 2) DEFAULT 0,
  `fsv` DECIMAL(10, 2) DEFAULT 0,
  `anticipos` DECIMAL(10, 2) DEFAULT 0,
  `dv` DECIMAL(10, 2) DEFAULT 0,
	`viaticos` DECIMAL(10, 2) DEFAULT 0,
  `reintegros` DECIMAL(10, 2) DEFAULT 0,
	`sueldo_descuentos` DECIMAL(10, 2) DEFAULT 0,
  `sueldo_liquido` DECIMAL(10, 2) DEFAULT 0,
  `id_empleado` INT NOT NULL,
  `id_planilla` INT NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tbl_detalle_planillas_tbl_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_detalle_planillas_tbl_planillas` FOREIGN KEY (`id_planilla`) REFERENCES `tbl_planillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_rutas`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `icono` VARCHAR(250) NOT NULL,
  `ruta` VARCHAR(150) NOT NULL,
  `descripcion` TEXT NOT NULL,
	-- `estado` ENUM('A', 'I') NOT NULL DEFAULT 'A',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;

CREATE TABLE IF NOT EXISTS `tbl_permisos_usuarios`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `id_ruta` INT NOT NULL,
  `estado` ENUM('A', 'I') NOT NULL DEFAULT 'A',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tbl_permisos_usuarios_tbl_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_permisos_usuarios_tbl_rutas` FOREIGN KEY (`id_ruta`) REFERENCES `tbl_rutas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = UTF8MB4_SPANISH2_CI;