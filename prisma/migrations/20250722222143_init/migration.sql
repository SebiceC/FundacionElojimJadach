-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `lastName` VARCHAR(20) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(100) NOT NULL,
    `rolId` INTEGER NOT NULL,

    UNIQUE INDEX `users_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `roles` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `posts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `content` VARCHAR(191) NULL,
    `authorId` INTEGER NOT NULL,
    `images` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_mujer_vulnerable` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `tipoDocumento` ENUM('CC', 'TI', 'CE', 'Pasaporte') NOT NULL,
    `numeroDocumento` VARCHAR(20) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `direccion` VARCHAR(30) NOT NULL,
    `esMadreCabeza` BOOLEAN NOT NULL DEFAULT false,
    `numeroHijos` INTEGER NOT NULL DEFAULT 0,
    `conviveConOtrasPersonas` BOOLEAN NOT NULL DEFAULT false,
    `conQuienesConvive` VARCHAR(100) NULL,
    `nivelEducativo` ENUM('Primaria', 'Secundaria', 'Tecnica_Tecnologica', 'Universitaria', 'Especializacion', 'Maestria', 'Doctorado', 'Ninguno') NOT NULL,
    `tieneEmpleo` BOOLEAN NOT NULL DEFAULT false,
    `actividadLaboral` VARCHAR(100) NULL,
    `fuenteIngresos` VARCHAR(100) NULL,
    `areasApoyo` TEXT NOT NULL,
    `otrasAreas` VARCHAR(100) NULL,
    `tieneApoyoGubernamental` BOOLEAN NOT NULL DEFAULT false,
    `tipoApoyoGubernamental` VARCHAR(100) NULL,
    `motivacion` VARCHAR(191) NOT NULL,
    `tiempoSemanalDisponible` VARCHAR(50) NOT NULL,
    `expectativas` VARCHAR(191) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `registros_mujer_vulnerable_numeroDocumento_key`(`numeroDocumento`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_semillero_innovacion` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `tipoDocumento` ENUM('CC', 'TI', 'CE', 'Pasaporte') NOT NULL,
    `numeroDocumento` VARCHAR(20) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `direccion` VARCHAR(30) NOT NULL,
    `tipoVinculacion` ENUM('INSTITUCION_EDUCATIVA', 'COMUNIDAD') NOT NULL,
    `nombreEntidadVinculacion` VARCHAR(191) NOT NULL,
    `nivelEducativo` ENUM('Primaria', 'Secundaria', 'Tecnica_Tecnologica', 'Universitaria', 'Especializacion', 'Maestria', 'Doctorado', 'Ninguno') NOT NULL,
    `participacionPrevia` BOOLEAN NOT NULL DEFAULT false,
    `areasInteres` TEXT NOT NULL,
    `otrasAreas` VARCHAR(191) NULL,
    `tieneProyecto` BOOLEAN NOT NULL DEFAULT false,
    `descripcionProyecto` VARCHAR(100) NULL,
    `habilidades` VARCHAR(100) NOT NULL,
    `disponibilidad` VARCHAR(100) NOT NULL,
    `motivacion` VARCHAR(100) NOT NULL,
    `expectativas` VARCHAR(100) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `registros_semillero_innovacion_numeroDocumento_key`(`numeroDocumento`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_taller_steam` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `institucionEducativa` VARCHAR(100) NOT NULL,
    `cursoGrado` VARCHAR(50) NOT NULL,
    `direccion` VARCHAR(100) NOT NULL,
    `nombreAcudiente` VARCHAR(100) NOT NULL,
    `relacionNino` VARCHAR(50) NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `participacionPrevia` BOOLEAN NOT NULL DEFAULT false,
    `actividadesInteres` TEXT NOT NULL,
    `otrasActividades` VARCHAR(100) NULL,
    `disponibilidad` VARCHAR(100) NOT NULL,
    `accesoComputadora` BOOLEAN NOT NULL DEFAULT false,
    `accesoInternet` BOOLEAN NOT NULL DEFAULT false,
    `motivacion` VARCHAR(191) NOT NULL,
    `expectativa` VARCHAR(191) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_seguridad_alimentaria` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreResponsable` VARCHAR(100) NOT NULL,
    `tipoDocumento` ENUM('CC', 'TI', 'CE', 'Pasaporte') NOT NULL,
    `numeroDocumento` VARCHAR(20) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `telefono` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `direccion` VARCHAR(100) NOT NULL,
    `barrio` VARCHAR(100) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `esAgricultor` BOOLEAN NOT NULL DEFAULT false,
    `tieneTierras` BOOLEAN NOT NULL DEFAULT false,
    `hectareas` DOUBLE NULL,
    `pisoTermico` VARCHAR(50) NULL,
    `tieneCultivo` BOOLEAN NOT NULL DEFAULT false,
    `tiposCultivo` VARCHAR(100) NULL,
    `participacionPrevia` BOOLEAN NOT NULL DEFAULT false,
    `proyectosAnteriores` VARCHAR(100) NULL,
    `tieneRiego` BOOLEAN NOT NULL DEFAULT false,
    `tieneHerramientas` BOOLEAN NOT NULL DEFAULT false,
    `tiposHerramientas` VARCHAR(100) NULL,
    `tieneAsistenciaTecnica` BOOLEAN NOT NULL DEFAULT false,
    `motivacion` VARCHAR(191) NOT NULL,
    `tiempoSemanal` VARCHAR(100) NOT NULL,
    `expectativas` VARCHAR(191) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_refuerzo_escolar` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `institucionEducativa` VARCHAR(100) NOT NULL,
    `cursoGrado` VARCHAR(50) NOT NULL,
    `direccion` VARCHAR(100) NOT NULL,
    `nombreAcudiente` VARCHAR(100) NOT NULL,
    `relacionNino` VARCHAR(50) NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `areasAyuda` TEXT NOT NULL,
    `otrasAreas` VARCHAR(100) NULL,
    `refuerzoPrevio` BOOLEAN NOT NULL DEFAULT false,
    `dificultadesAcademicas` VARCHAR(191) NOT NULL,
    `disponibilidad` VARCHAR(100) NOT NULL,
    `accesoMateriales` BOOLEAN NOT NULL DEFAULT false,
    `apoyoHabitos` BOOLEAN NOT NULL DEFAULT false,
    `motivacion` VARCHAR(191) NOT NULL,
    `expectativas` VARCHAR(191) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_software_factory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `tipoDocumento` ENUM('CC', 'TI', 'CE', 'Pasaporte') NOT NULL,
    `numeroDocumento` VARCHAR(20) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `direccion` VARCHAR(100) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `modalidadVinculacion` VARCHAR(50) NOT NULL,
    `institucionEducativa` VARCHAR(100) NOT NULL,
    `programaAcademico` VARCHAR(100) NOT NULL,
    `semestreNivel` VARCHAR(50) NOT NULL,
    `tiempoDisponible` VARCHAR(100) NOT NULL,
    `tecnologias` TEXT NOT NULL,
    `proyectosRealizados` VARCHAR(191) NULL,
    `areasInteres` TEXT NOT NULL,
    `otrasAreas` VARCHAR(100) NULL,
    `experienciaAgile` VARCHAR(191) NULL,
    `motivacion` VARCHAR(191) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `registros_software_factory_numeroDocumento_key`(`numeroDocumento`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_voluntariado` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `tipoDocumento` ENUM('CC', 'TI', 'CE', 'Pasaporte') NOT NULL,
    `numeroDocumento` VARCHAR(20) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `direccion` VARCHAR(100) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `nivelEducativo` ENUM('Primaria', 'Secundaria', 'Tecnica_Tecnologica', 'Universitaria', 'Especializacion', 'Maestria', 'Doctorado', 'Ninguno') NOT NULL,
    `profesionOcupacion` VARCHAR(20) NOT NULL,
    `disponibilidadTipo` ENUM('TIEMPO_COMPLETO', 'TIEMPO_PARCIAL', 'FINES_DE_SEMANA', 'DIAS_ESPECIFICOS') NOT NULL,
    `diasEspecificos` VARCHAR(191) NULL,
    `horasDisponibles` INTEGER NOT NULL,
    `areasInteres` TEXT NOT NULL,
    `otrasAreas` VARCHAR(100) NULL,
    `habilidades` VARCHAR(191) NOT NULL,
    `fundacion` VARCHAR(25) NOT NULL,
    `funcion` VARCHAR(25) NOT NULL,
    `tiempo` VARCHAR(25) NOT NULL,
    `motivacion` VARCHAR(191) NOT NULL,
    `referencia1Nombre` VARCHAR(25) NULL,
    `referencia1Telefono` VARCHAR(25) NULL,
    `referencia2Nombre` VARCHAR(25) NULL,
    `referencia2Telefono` VARCHAR(25) NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `registros_voluntariado_numeroDocumento_key`(`numeroDocumento`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_cultural` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `direccion` VARCHAR(100) NOT NULL,
    `documentoIdentidad` VARCHAR(20) NOT NULL,
    `municipioDepartamento` VARCHAR(20) NOT NULL,
    `nivelEducativo` ENUM('Primaria', 'Secundaria', 'Tecnica_Tecnologica', 'Universitaria', 'Especializacion', 'Maestria', 'Doctorado', 'Ninguno') NOT NULL,
    `ocupacion` VARCHAR(20) NOT NULL,
    `areaInteresPrincipal` ENUM('Musica', 'Danza', 'Manualidades', 'Maquillaje', 'Dibujo', 'Otro') NOT NULL,
    `otraAreaInteres` VARCHAR(100) NULL,
    `formacionPrevia` BOOLEAN NOT NULL DEFAULT false,
    `detalleFormacion` VARCHAR(100) NULL,
    `perteneceGrupo` BOOLEAN NOT NULL DEFAULT false,
    `detalleGrupo` VARCHAR(100) NULL,
    `diasDisponibles` VARCHAR(191) NOT NULL,
    `motivacion` VARCHAR(191) NOT NULL,
    `expectativas` VARCHAR(191) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `registros_cultural_documentoIdentidad_key`(`documentoIdentidad`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registros_economia_plateada` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `nombreCompleto` VARCHAR(100) NOT NULL,
    `fechaNacimiento` DATETIME(3) NOT NULL,
    `comuna` VARCHAR(50) NOT NULL,
    `estratoSocial` ENUM('E1', 'E2', 'E3', 'E4', 'E5', 'E6') NOT NULL,
    `edad` INTEGER NOT NULL,
    `grupoEtnico` ENUM('Ninguno', 'Afrodescendiente', 'Indigena', 'Raizal', 'Rom_Gitano', 'Palenquero', 'Otro') NOT NULL,
    `telefonoContacto` VARCHAR(15) NOT NULL,
    `correoElectronico` VARCHAR(100) NULL,
    `direccion` VARCHAR(100) NOT NULL,
    `tipoDocumento` ENUM('CC', 'TI', 'CE', 'Pasaporte') NOT NULL,
    `numeroDocumento` VARCHAR(20) NOT NULL,
    `genero` ENUM('FEMENINO', 'MASCULINO') NOT NULL,
    `esPensionado` BOOLEAN NOT NULL DEFAULT false,
    `actividadEconomica` VARCHAR(100) NULL,
    `trabajoAnterior` BOOLEAN NOT NULL DEFAULT false,
    `sectorTrabajo` VARCHAR(100) NULL,
    `ingresosAdicionales` BOOLEAN NOT NULL DEFAULT false,
    `fuenteIngresos` VARCHAR(100) NULL,
    `areasInteres` TEXT NOT NULL,
    `otrasAreas` VARCHAR(100) NULL,
    `habilidades` VARCHAR(191) NOT NULL,
    `tiempoSemanal` VARCHAR(100) NOT NULL,
    `motivacion` VARCHAR(191) NOT NULL,
    `expectativas` VARCHAR(191) NOT NULL,
    `aceptaTerminos` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `registros_economia_plateada_numeroDocumento_key`(`numeroDocumento`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `eventos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `programId` ENUM('mujer-vulnerable', 'semillero-innovacion', 'seguridad-alimentaria', 'voluntariado', 'economia-plateada', 'cultural', 'taller-steam', 'refuerzo-escolar', 'software-factory') NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `date` DATETIME(3) NOT NULL,
    `location` VARCHAR(191) NOT NULL,
    `duration` VARCHAR(191) NOT NULL,
    `capacity` INTEGER NOT NULL,
    `registered` INTEGER NOT NULL DEFAULT 0,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `inscripciones_por_evento` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombreCompleto` VARCHAR(191) NOT NULL,
    `numeroDocumento` VARCHAR(191) NULL,
    `programId` VARCHAR(191) NOT NULL,
    `eventoId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `inscripciones_por_evento_numeroDocumento_eventoId_key`(`numeroDocumento`, `eventoId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_rolId_fkey` FOREIGN KEY (`rolId`) REFERENCES `roles`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `posts` ADD CONSTRAINT `posts_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_mujer_vulnerable` ADD CONSTRAINT `registros_mujer_vulnerable_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_semillero_innovacion` ADD CONSTRAINT `registros_semillero_innovacion_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_taller_steam` ADD CONSTRAINT `registros_taller_steam_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_seguridad_alimentaria` ADD CONSTRAINT `registros_seguridad_alimentaria_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_refuerzo_escolar` ADD CONSTRAINT `registros_refuerzo_escolar_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_software_factory` ADD CONSTRAINT `registros_software_factory_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_voluntariado` ADD CONSTRAINT `registros_voluntariado_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_cultural` ADD CONSTRAINT `registros_cultural_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registros_economia_plateada` ADD CONSTRAINT `registros_economia_plateada_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
