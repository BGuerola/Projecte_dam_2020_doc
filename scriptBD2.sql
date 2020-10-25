-- CREATE database BDJobSenior;
USE BDJobSenior;
drop table if exists CANDIDATO;
create table CANDIDATO (
	id_cand int auto_increment PRIMARY KEY,
    carta_presentación text(1700),
    nombre char(30) not null,
    apellido1 char(50) not null,
    apellido2 char(50),
    año_nacimiento date,
    sexo enum('hombre', 'mujer')
	/*id_otrosdatos int default null,
    id_direc int default null,
    email char(50) not null,
	FOREIGN KEY (id_otrosdatos) references OTROS_DATOS(id_otrosdatos) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_direc) references DIRECCION(id_direc) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (email) references AUTENTICACION(email) ON DELETE CASCADE ON UPDATE CASCADE*/
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists EMPRESA;
create table EMPRESA (
	CIF char (9) not null PRIMARY KEY,
    logo varchar (255),
    nombreEmp char(50) not null,
    nombreCont char(30) not null,
    apellido1Cont char(50) not null,
    apellido2Cont char(50),
    telfEmpre char(15),
    empresaSelec set ('si', 'no'),
    descripEmp text (1700)
    /*id_direc int auto_increment,
	email char(50) not null,
	FOREIGN KEY (id_direc) references DIRECCION(id_direc) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (email) references AUTENTICACION(email) ON DELETE CASCADE ON UPDATE CASCADE*/
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists AUTENTICACION;
create table AUTENTICACION(
	email char (30) not null primary key,
    contrasena char(40),
	metodo char(5),
    tipo enum ('empresa', 'candidato')
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists DIRECCION;
create table DIRECCION(
	id_direc int auto_increment PRIMARY KEY,
    localidad char (30),
    calle char (30),
    provincia char (30),
    código_postal char (5)
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists OFERTA_TRABAJO;
create table OFERTA_TRABAJO(
	id_ofertatreball int auto_increment primary KEY,
    publicada date,
    nomPuesto char(50), 
	experiencia_mín varchar (200),
	requisitos text (1200),
	estudios_mínimos text(1200),
    residencia_en char(50),
	Conoc_necesarios varchar (200),
	funciones text (1700),
	personal_a_cargo int,
	vacantes int,
	duración_contrato varchar (200),
	horario varchar (200)
	/*CIF CHAR (9),
    id_puesto int,
    id_sal int,
    FOREIGN KEY (CIF) references EMPRESA (CIF) ON DELETE no action ON update no action,
    FOREIGN KEY (id_puesto) references PUESTO (id_puesto) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_sal) references SALARIO (id_sal) ON DELETE CASCADE ON UPDATE CASCADE*/
	) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists EXPERIENCIA;
create table EXPERIENCIA(
	id_exp int auto_increment primary KEY,
	nomEmpr_exp char(50) not null,
	nomPuesto char(50), 
    funciones text (1700),
    CIF CHAR (9),
    id_sal int,
	fchaInicio date,
    fchaFin date,
	personal_a_cargo int
    -- id_cand int,
    -- FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists OTROS_DATOS;
 create table OTROS_DATOS(
	id_otrosdatos int auto_increment primary KEY,
    situacion_laboral enum ('Estoy trabajando', 'No tengo trabajo', 'buscando una mejora'), 
	vehículo enum ('si', 'no'),
	nacionalidad enum ('Española', 'Europea', 'Extranjera'),
	permiso_trabajo enum ('si', 'no'),
	autonomo enum ('si', 'no')
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists ESTUDIOS_REGLADOS;
create table ESTUDIOS_REGLADOS(
	id_estreglados int auto_increment primary KEY,
	nivel enum ('Estudios Universitarios', 'FPII/CFGS', 'Bachillerato/FP1/CFGM', 'ESO', 'Certificado de escolaridad/básica', 'Sin estudios'), 
	título varchar(50),
	fchaInicio date,
    fchaFin date,
	Centro char(70)
	-- id_cand int,
    -- FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists ESTUDIOS_NO_REGLADOS;
create table ESTUDIOS_NO_REGLADOS(
	id_estnoreglados int auto_increment primary KEY,
    curso char(50),
	fchaInicio date,
    fchaFin date,
	Centro char(70)
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists PUESTO;
create table PUESTO(
	id_puesto int auto_increment PRIMARY KEY,
    sector enum ('1.Agraria', '2.Marítimo-Pesquera', '3.Industrias Alimentarias', '4.Química', 
    '5. Imagen Personal', '6. Sanidad', '7. Seguridad y Medio Ambiente', '8. Fabricación Mecánica', 
    '9. Instalación y Mantenimiento','10. Electricidad y Electrónica', '11. Energía y Agua','12. Transporte y Mantenimiento de Vehículos',
    '13. Industrias Extractivas', '14. Edificación y Obra Civil','15. Vidrio y Cerámica','16. Madera, Mueble y Corcho', 
    '17. Textil, Confección y Piel','18. Artes Gráficas','19. Imagen y Sonido', '20. Informática y Comunicaciones',
    '21. Administración y Gestión', '22. Comercio y Marketing','23. Servicios Socioculturales y a la Comunidad', '24. Hostelería y Turismo',
    '25. Actividades Físicas y Deportivas','26. Artes y Artesanías'),
    Categoría enum('Administrativo', 'Administrativo de empresa', 'Atención al cliente', 'Calidad, producción e I+D', 'Comercial y ventas',
    'Compras, logística y almacén', 'Diseño y artes gráficas', 'Educación y formación', 'Finanzas y bancos', 'Informática y telecomunicaciones',
    'Ingenieros y técnicos', 'mantenimiento electromecánico y general', 'Legal', 'Marketing y Comunicación', 'Profesiones, artes y oficios', 
    'Recursos Humanos', 'PRL y Salud', 'Farmacia y laboratorio', 'Turismo y restauración', 'Venta al detalle'),
	Nivel enum ( '1 Ingenieros y Licenciados','2 Ingenieros Técnicos, Peritos y Ayudantes Titulados',
    '3 Jefes Administrativos y de Taller','4 Ayudantes no Titulados','5 Oficiales Administrativos',
    '6 Subalternos','7 Auxiliares Administrativos','8 Oficiales de primera y segunda','9 Oficiales de tercera y Especialistas',
    '10 Peones','11 Trabajadores < 18 años')
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists CONOCIMIENTOS;
create table CONOCIMIENTOS(
	id_conoc int auto_increment primary KEY,
	compt_pers set('Trabajo en equipo', 'Resolución de conflictos', 'Toma de decisiones', 'Pensamiento positivo', 'Adaptación al cambio', 
    'Comunicación eficaz', 'Proactividad', 'Liderazgo', 'Creatividad', 'Tolerancia a la presión', 'Orientación a resultados'),
	compt_soc set('Escucha activa', 'Asertividad', 'Empatía', 'Capacidad de negociación', 'Tolerancia', 'Honestidad', 
    'Receptividad/apertura de mente', 'Control emocional', 'Extroversión', 'Saber expresarse'),
	compt_dig enum('Dominio de programas informáticos profesionales y redes sociales',
    'Tramites on-line de nivel avanzado',
    'Destreza en programas informáticos, APPs',
    'Acceso a información de interés, envio email',
    'Manejo básico de ordenador')
	/*id_cand int,
    id_ofertatreball int,
    FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_ofertatreball) references OFERTA_TRABAJO(id_ofertatreball) ON DELETE CASCADE ON UPDATE CASCADE*/
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists IDIOMAS;
create table IDIOMAS(
	Id_idiomas int auto_increment primary KEY,
    Nivel enum ('A1', 'A2', 'B1','B2', 'C1', 'C2')
	/*id_cand int,
    id_ofertatreball int,
    FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_ofertatreball) references OFERTA_TRABAJO(id_ofertatreball) ON DELETE CASCADE ON UPDATE CASCADE*/
    ) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists SALARIO;
create table SALARIO(
	id_sal int auto_increment primary KEY,
	tipo_salario enum ('Bruto año', 'Bruto mes', 'Bruto día'),
    max_salario int,
	min_salario int,
	beneficios_sociales varchar(500)
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
-- drop table if exists CAND_IDIOMAS;
-- drop table if exists CAND_PUESTO;
-- drop table if exists CAND_ESTNOREGLADOS;
-- drop table if exists CAND_CONOCIMIENTOS;
-- drop table if exists CAND_SALARIO;
-- drop table if exists CAND_ESTREGLADOS;
-- drop table if exists OF_ESTREGLADOS;
-- drop table if exists OF_ESTNOREGLADOS;
-- drop table if exists OF_CONOCIMIENTOS;
-- drop table if exists OF_SALARIO;
-- drop table if exists OF_IDIOMAS;
-- drop table if exists FAVORITO;
create table FAVORITO(
	id_cand int,
    id_ofertatreball int,
    PRIMARY KEY (id_cand, id_ofertatreball),
    FOREIGN KEY (id_cand) references CANDIDATO (id_cand),
    FOREIGN KEY (id_ofertatreball) references OFERTA_TRABAJO (id_ofertatreball)
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
drop table if exists INSCRITO;
create table INSCRITO(
	id_cand int,
    id_ofertatreball int,
    estado enum ('Finalista', 'Reservado', 'Descartado'),
    PRIMARY KEY (id_cand, id_ofertatreball),
    FOREIGN KEY (id_cand) references CANDIDATO (id_cand),
    FOREIGN KEY (id_ofertatreball) references OFERTA_TRABAJO (id_ofertatreball)
    )ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
create TABLE MENSAJES (
	id_missatges int auto_increment PRIMARY KEY, 
	id_cand int,
    CIF char (9),
	data_missatge date,
	missatge text (1700),
    FOREIGN KEY (CIF) references EMPRESA (CIF) ON DELETE no action ON update no action,
    FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;
alter table CANDIDATO
	ADD id_otrosdatos int,
    ADD id_direc int,
    ADD email char (30),
	ADD FOREIGN KEY (id_otrosdatos) references OTROS_DATOS(id_otrosdatos) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY (id_direc) references DIRECCION(id_direc) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY (email) references AUTENTICACION(email) ON DELETE CASCADE ON UPDATE CASCADE;
alter TABLE EMPRESA
    ADD id_direc int,
    ADD email char (30), 
	ADD FOREIGN KEY (id_direc) references DIRECCION(id_direc) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY (email) references AUTENTICACION(email) ON DELETE CASCADE ON UPDATE CASCADE;
alter table OFERTA_TRABAJO
	ADD CIF char (9),
	ADD id_puesto int,
	ADD id_sal int,
    ADD FOREIGN KEY (CIF) references EMPRESA (CIF) ON DELETE no action ON update no action,
    ADD FOREIGN KEY (id_puesto) references PUESTO (id_puesto) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY (id_sal) references SALARIO (id_sal) ON DELETE CASCADE ON UPDATE CASCADE;
alter table EXPERIENCIA
	ADD id_cand int,
    ADD FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE;
alter table ESTUDIOS_REGLADOS
	ADD id_cand int,
    ADD FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE;
alter table ESTUDIOS_NO_REGLADOS
	ADD id_cand int,
    ADD FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE;
alter table CONOCIMIENTOS
	ADD id_cand int,
    ADD id_ofertatreball int,
    ADD FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY (id_ofertatreball) references OFERTA_TRABAJO(id_ofertatreball) ON DELETE CASCADE ON UPDATE CASCADE;
alter table	IDIOMAS
	ADD id_cand int,
    ADD id_ofertatreball int,
    ADD FOREIGN KEY (id_cand) references CANDIDATO(id_cand) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD FOREIGN KEY (id_ofertatreball) references OFERTA_TRABAJO(id_ofertatreball) ON DELETE CASCADE ON UPDATE CASCADE;
