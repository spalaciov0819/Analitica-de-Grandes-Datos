CREATE TABLE `venta` (
  `IdTransaccion` INT,
  `FechaTransaccion` DATE,
  `HoraTransaccion` INT,
  `CdRegistradora` INT,
  `ConsecTransaccionPOS` INT,
  `IdCliente` INT,
  `CdDependencia` INT,
  `IdPLU` INT,
  `NroUnidades` INT,
  `VlrCostoTotal` INT,
  `VlrVentasConImpuestos` INT,
  `VlrVentasSinImpuestos` INT,
  `VlrIVA` INT,
  `VlrImpoconsumo` INT,
  `CdCanal` INT,
  `ConsecutivoFiscal` INT,
  PRIMARY KEY (`IdTransaccion`),
    FOREIGN KEY (`IdCliente`) REFERENCES `cliente`(`IdCliente`)
	FOREIGN KEY (`CdDependencia`) REFERENCES `almacen`(`CdDependencia`)
	FOREIGN KEY (`IdPLU`) REFERENCES `producto`(`IdPLU`)
	FOREIGN KEY (`CdCanal`) REFERENCES `canal`(`CdCanal`));

CREATE TABLE `almacen` (
  `CdDependencia` INT,
  `NombreDependencia` NVARCHAR(30),
  `IdZona` INT,
  `NombreZona` NVARCHAR(60),
  `IdCiudad` INT,
  `NombreCiudad` NVARCHAR(60),
  `CdCadena` NVARCHAR(1),
  `NombreCadena` NVARCHAR(30),
  PRIMARY KEY (`CdDependencia`));

CREATE TABLE `producto` (
  `IdPLU` INT,
  `CdPLU` INT,
  `NombrePLU` NVARCHAR(60),
  `CdGEN` INT,
  `NombreGEN` NVARCHAR(60),
  `CdUEN` INT,
  `NombreUEN` NVARCHAR(60),
  `CdSublinea` INT,
  `NombreSublinea` NVARCHAR(60),
  `CdCategoria` INT,
  `NombreCategoria` NVARCHAR(60),
  `CdSubcategoria` INT,
  `NombreSubcategoria` NVARCHAR(60),
  `CdMarca` INT,
  `NombreMarca` NVARCHAR(60),
  PRIMARY KEY (`IdPLU`));

CREATE TABLE `canal`(
  `CdCanal` INT,
  `Canal` NVARCHAR(15),
  PRIMARY KEY (`CdCanal`));
  

CREATE TABLE `tipo_documento`(
  `CdTipoDocIdCliente` NVARCHAR(2),
  `NombreDocumento` VARCHAR(20),
  PRIMARY KEY (`CdTipoDocIdCliente`));
               
               
CREATE TABLE `cliente` (
  `IdCliente` INT,
  `NumeroDocIdCliente` NVARCHAR(18),
  `CdTipoDocIdCliente` NVARCHAR(2),
  `NombreCompleto` NVARCHAR(60),
  `DireccionResidencia` NVARCHAR(60),
  `NombreBarrioResidencia` NVARCHAR(60),
  `CdDANEDepartamentoResidencia` NVARCHAR(2),
  `NombreDepartamento` NVARCHAR(50),
  `CdDANECiudadResidencia` INT,
  `NombreDANECiudadResidencia` NVARCHAR(60),
  `NroTelefonoContacto` NVARCHAR(16),
  `NroTelefonoCelular` VARCHAR(20),
  `EMail` NVARCHAR(60),
  `HabeasData` NVARCHAR(1),
  `FechaActualizaHabeasData` DATE,
  `Edad` INT,
  `FechaCumpleanos` DATE,
  `CdGenero` NVARCHAR(1),
  `NumeroHijos` INT,
  `NivelSocioEconomico` VARCHAR(2),
  `clientecol` VARCHAR(45),
  PRIMARY KEY (`IdCliente`)
  FOREIGN KEY(`CdTipoDocIdCliente`) REFERENCES `tipo_documento`(`CdTipoDocIdCliente`) );
