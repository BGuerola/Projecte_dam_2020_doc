INSERT INTO CANDIDATO (carta_presentación, nombre, apellido1, apellido2, año_nacimiento, sexo) values
	('Mi perfil profesional corresponde a HR partner con amplia experiencia en Selección, formación y organización', 'Bernat', 'Guerola', 'Trull', '1968-07-20', 'hombre'),
    ('Mi vocación profesional es la orientaciòn laboral a personas desempleadas o en búsqueda de un mejor empleo', 'Susana', 'Flor', 'Giralt', '1974-04-14', 'mujer'),
    ('Buscando un empleo en el que pueda realizarme profesionalmente', 'Sergio', 'Naya', 'Ballester', '1998-01-22', 'hombre');
select * from CANDIDATO;
INSERT INTO OTROS_DATOS (situacion_laboral, vehículo, nacionalidad, permiso_trabajo, autonomo) VALUES
	('Estoy trabajando', 'si','Española', 'si', 'si'),
    ('buscando una mejora', 'si','Española', 'si', 'no'),
    ('No tengo trabajo','no','Extranjera', 'si', 'no');
select * from OTROS_DATOS;
insert into CANDIDATO (id_cand, id_otrosdatos) VALUES
	('4','1'),
    ('5','2'),
    ('6','3');
update CANDIDATO 
set id_otrosdatos = '1'
where id_cand= '4';
update CANDIDATO 
set id_otrosdatos = '2'
where id_cand= '5';
update CANDIDATO 
set id_otrosdatos = '3'
where id_cand= '6';
insert into EXPERIENCIA (nomEmpr_exp, nomPuesto, funciones, CIF, id_sal, fchaInicio, fchaFin, personal_a_cargo, id_cand) values
	('Velarte', 'Director de RRHH', 'Organización, formación, selección de personal, coaching mandos intermedios', '20854356K', '360000','2008-10-01', '2016-02-8','3','4'),
    ('Bigmat', 'Responsable de RRHH y calidad', 'Organización, formación, selección de personal, sistemas de calidad', '20854356K', '280000','2005-11-01', '2008-02-10','1','4'),
    ('Induplas', 'Responsable de RRHH y Prevención', 'Organización, formación, selección de personal, sistemas de calidad', '20854356K', '280000','2005-11-01', '2008-02-10','2','4'),
    ('ACCO', 'Técnico de Inserción', 'Diseño cursos on-line, prospección empresarial, orientación laboral', '25463559H', '26000', '2020-02-15','2020-09-30','0','5'),
    ('Ajuntament Aldaia','Técnico de Orientación', 'Itinerarios laborales, orientación laboral, impartición charlas de temas laborales', '25463559H', '1950', '2020-10-01','2019-12-31','0','5'),
    ('Unió General de Treballadors', 'Técnico de Orientación', 'Orientación laboral a usuarios, impartición charlas de temas laborales', '25463559H', '26000', '2010-01-01','2018-06-30','0','5'),
    ('Primitivo Ballestas', 'chapista', 'pintar y arreglar la chapa de los vehículos', '23245798U', '16000', '2020-02-01', '2020-09-20','0','6'),
    ('Concesionario de Mercedes', 'ayudante de mecánico', 'Asistir a los mecánicos en las tareas','23245798U', '14500', '2019-01-31', '2020-01-31','0','6'),
    ('Restaurante Villamor', 'camarero de sala', 'Atender al cliente, servir y limpiar las mesas', '23245798U', '50', '2018-07-01', '2018-08-31', '0','6');
    select * from EXPERIENCIA;
INSERT INTO ESTUDIOS_REGLADOS(nivel, título, fchaInicio, fchaFin, Centro, id_cand) values
	(),
    (),
    ();
INSERT INTO ESTUDIOS_NO_REGLADOS(curso, fchaInicio, fchaFin, Centro, id_cand) VALUES
	(),
    (),
    (),
    (),
    (),
    ();
INSERT INTO IDIOMAS (Nivel, id_cand) VALUES
	(),
    (),
    (),
    (),
    (),
    ();
INSERT INTO CONOCIMIENTOS (compt_pers, compt_soc, compt_dig, id_cand) values
    (),
    (),
    ();
insert into EMPRESA(CIF, logo, nombreEmp, nombreCont, apellido1Cont, apellido2Cont, telfEmpre, empresaSelec, descripEmp) values
insert into AUTENTICACION(email, contrasena, metodo, tipo) values
insert into DIRECCION(localidad, calle, provincia, código_postal) values
update CANDIDATO 
set id_direc = ''
where id_cand= '';
update CANDIDATO 
set email = ''
where id_cand= '';
update EMPRESA 
set id_direc = ''
where id_cand= '';
update EMPRESA 
set email = ''
where id_cand= '';
insert into OFERTA_TRABAJO() values
insert into SALARIO()values
insert into PUESTO() values
insert into MENSAJES() values
