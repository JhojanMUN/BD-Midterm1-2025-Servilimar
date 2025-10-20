# BD-Midterm1-2025-Servilimar
A database created to simulate a BDMS with Docker, DML &amp; DDL for the Midterm 1 of the Database Subject

#TOOLS
-Docker
-PostgreSQL
-pgAdmin 4
-SQL (DDL & DML)

#SET UP
Open Docker console & write the Next: (You can change "JhojanM" with a name that you want)
> docker run --name JhojanM -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14
> docker run --rm -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" dpage/pgadmin4

Acces pgAdmin -> http://localhost:5050

#LOGIN
Email: usuario@servilimar.com
Password: limar#123

Register a new server and paste or create the DDL in QUERY TOOL (THE TABLES)

-ciudad
-usuario
-cliente
-empleado
-servicio
-turno
-notificacion

All tables connected with primary and foreign keys.

#DATA (DML)
Each table was filled using INSERT INTO statements in pgAdmin’s Query Tool.



#AUTHOR
Jhojan Moreno
Midterm 1 – Database Systems (2025)
