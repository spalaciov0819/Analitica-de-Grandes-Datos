CREATE TABLE `VENTA` (
  `IdTransaccion` Int,
  `FechaTransaccion` Date,
  `HoraTransaccion` Int,
  `CdRegistradora` Int,
  `ConsecTransaccionPOS` Int,
  `IdCliente` Int,
  `CdDependencia` Int,
  `IdPLU` Int,
  `NroUnidades` Int,
  `VlrCostoTotal` Int,
  `VlrVentasConImpuestos` Int,
  `VlrVentasSinImpuestos` Int,
  `VlrIVA` Int,
  `VlrImpoconsumo` Int,
  `CdCanal` Int,
  `ConsecutivoFiscal` Nvarchar(20),
  PRIMARY KEY (`IdTransaccion`)
);

CREATE TABLE `ALMACEN` (
  `CdDependencia` Int,
  `NombreDependencia` Nvarchar(30),
  `IdZona` Int,
  `NombreZona` Nvarchar(60),
  `IdCiudad` Int,
  `NombreCiudad` Nvarchar(60),
  `CdCadena` Nvarchar(1),
  `NombreCadena` Nvarchar(30),
  PRIMARY KEY (`CdDependencia`)
);

CREATE TABLE `PRODUCTO` (
  `IdPLU` Int,
  `CdPLU` Int,
  `NombrePLU` Nvarchar(60),
  `CdGEN` Int,
  `NombreGEN` Nvarchar(60),
  `CdUEN` Int,
  `NombreUEN` Nvarchar(60),
  `CdSublinea` Int,
  `NombreSublinea` Nvarchar(60),
  `CdCategoria` Int,
  `NombreCategoria` Nvarchar(60),
  `CdSubcategoria` Int,
  `NombreSubcategoria` Nvarchar(60),
  `CdMarca` Int,
  `NombreMarca` Nvarchar(60),
  PRIMARY KEY (`IdPLU`)
);

CREATE TABLE `CANAL` (
  `CdCanal` Int,
  `Canal` Nvarchar(15),
  PRIMARY KEY (`CdCanal`)
);

CREATE TABLE `TIPO DOCUMENTO` (
  `CdTipoDocIdCliente` Nvarchar(2),
  `NombreDocumento` Nvarchar(20),
  PRIMARY KEY (`CdTipoDocIdCliente`)
);

CREATE TABLE `ENTIDAD` (
  `IdCliente` Int,
  `NumeroDocIdCliente` Nvarchar(18),
  `CdTipoDocIdCliente` Nvarchar(2),
  `NombreCompleto` Nvarchar(60),
  `DireccionResidencia` Nvarchar(200),
  `NombreBarrioResidencia` Nvarchar(60),
  `CdDANEDepartamentoResidencia` Nvarchar(2),
  `NombreDepartamento` Nvarchar(50),
  `CdDANECiudadResidencia` Int,
  `NombreDANECiudadResidencia` Nvarchar(60),
  `NroTelefonoContacto` Nvarchar(16),
  `NroTelefonoCelular` Nvarchar(20),
  `EMail` Nvarchar(60),
  `HabeasData` Nvarchar(1),
  `FechaActualizaHabeasData` Date,
  `Edad` Int,
  `FechaCumpleanos` Date,
  `CdGenero` Nvarchar(1),
  `NumeroHijos` Int,
  `NivelSocioEconomico` Nvarchar(2),
  PRIMARY KEY (`IdCliente`)
);