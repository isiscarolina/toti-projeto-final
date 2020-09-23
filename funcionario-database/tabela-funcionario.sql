CREATE TABLE funcionario (
	funcionario_id SERIAL PRIMARY KEY,
	name VARCHAR (50) NOT NULL,
	cargo VARCHAR (200) NOT NULL,
	departamento VARCHAR (200) NOT NULL,
	armario_num INTEGER NOT NULL,
	data_de_ocupacao TIMESTAMP WITHOUT TIME ZONE	
	
	
)