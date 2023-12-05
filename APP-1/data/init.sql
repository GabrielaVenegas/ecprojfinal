create table datos_csv(estado varchar(80),
                       municipio varchar(80),
                       cve_inegi int,
                       Pob_Indigena float,
                       Mayoria_indigena varchar(80),
                       grado_escolar float,
                       grado_escolar_h float,
                       grado_escolar_m float,
                       Entre_3_5_En_escuela float,
                       Entre_3_5_En_escuela_Hombres float,
                       Entre_3_5_En_escuela_Mujeres float,
                       Mas_15_con_Sec float,
                       Mas15H float,
                       Mas15M float,
                       PEA float,
                       PEA_H float,
                       PEA_M float
                       );
COPY datos_csv
FROM '/data/inafed_bd_1701145840.csv'
DELIMETER ','
CSV HEADER
NULL AS 'NA';
