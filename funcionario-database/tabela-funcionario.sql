CREATE TABLE IF NOT EXISTS funcionario (
	funcionario_id SERIAL,
	nome VARCHAR (50) NOT NULL,
	cpf CHAR(11) NOT NULL UNIQUE,
	cargo VARCHAR (200) NOT NULL,
	telefone CHAR(11) UNIQUE,
	setor VARCHAR (200) NOT NULL,
	data_de_registro TIMESTAMP WITHOUT TIME ZONE,
	PRIMARY KEY(funcionario_id)
	
);

CREATE TABLE IF NOT EXISTS locker (
	locker_id SERIAL,
	locker_num INTEGER NOT NULL UNIQUE,
	tipo_locker VARCHAR (60) NOT NULL,
	serial_locker CHAR(15) UNIQUE,
	observacao VARCHAR (400),
	data_de_ocupacao TIMESTAMP WITHOUT TIME ZONE,
	PRIMARY KEY(locker_id),
	funcionario_id INTEGER references funcionario(funcionario_id)
);

CREATE TABLE IF NOT EXISTS responsavel_funcionario (	
	responsavel_id SERIAL,
	nome VARCHAR (50) NOT NULL,
	cpf CHAR(11) NOT NULL UNIQUE,
	cargo VARCHAR (200) NOT NULL,
	telefone CHAR(11) UNIQUE,
	setor VARCHAR (200) NOT NULL,
	data_de_registro TIMESTAMP WITHOUT TIME ZONE,
	PRIMARY KEY(responsavel_id),
	locker_id INTEGER references locker(locker_id)
);

CREATE TABLE IF NOT EXISTS empresa (	
	empresa_id SERIAL,
	razao_social VARCHAR (50) NOT NULL,
	cnpj CHAR(11) NOT NULL UNIQUE,
	logradouro VARCHAR (200) NOT NULL,
	bairro VARCHAR (100) NOT NULL,
	cidade VARCHAR (50) NOT NULL,
	numero CHAR(4) NOT NULL,
	pais VARCHAR (50) NOT NULL,
	telefone CHAR(11) UNIQUE,
	email VARCHAR (60) NOT NULL,
	data_registro TIMESTAMP WITHOUT TIME ZONE,
	PRIMARY KEY(empresa_id),
	responsavel_id INTEGER references responsavel_funcionario(responsavel_id)
);
