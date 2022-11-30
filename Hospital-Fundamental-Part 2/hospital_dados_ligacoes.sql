INSERT INTO Receitas(ID_Receita, Nome_Remedio, Quantidade_Remedio, Hora_Remedio, Tipo_Remedio, Medico_Receitas)
VALUES(1,"Vinicius",10,10-20-05,"Tarja Preta",1);


ALTER TABLE Receitas ADD foreign key (Medico_Receitas)
references Medicos(ID_Medico);

alter table Consultas add foreign key (Medico_Consulta)
references Medicos(ID_Medico);

alter table Consultas add foreign key (Consulta_Paciente)
references Pacientes(ID_Paciente);

alter table Receitas add foreign key (Receita_Paciente)
references Pacientes(ID_Paciente);

alter table Convenios add foreign key (Convenio_Paciente)
references Pacientes(ID_Paciente);

alter table Quarto ADD FOREIGN KEY (Quarto_Paciente)
REFERENCES Pacientes(ID_Paciente);

ALTER TABLE Internaçao ADD FOREIGN KEY (Internaçao_Paciente)
REFERENCES Pacientes(ID_Paciente);

ALTER TABLE Enfermeiro ADD FOREIGN KEY (Enfermeiro_Paciente)
REFERENCES Pacientes(ID_Paciente);

ALTER TABLE Tipo_Quarto ADD FOREIGN KEY (Tipo_Quarto)
REFERENCES Quarto(ID_Quarto);

SELECT * FROM Pacientes;

INSERT INTO Pacientes(ID_Paciente, Nome_Paciente, Endereço_Paciente, DataNascimento_Paciente, CPF_Paciente, Email_Paciente, Consulta_Paciente, Receita_Paciente, Conevenio_Paciente, Quarto_Paciente, Internaçao_Paciente, Enfermeiro_Paciente)
VALUES(1,"Maria Alice","Rua Mario Quintana",'04-01-02',411474148,"_maria_alice@email.com",1,1,1,1,1,1);





