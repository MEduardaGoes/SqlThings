CREATE TABLE curso (
    idcurso INTEGER PRIMARY KEY,
    nome VARCHAR(50) UNIQUE
);


CREATE TABLE aluno (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE aluno_curso (
    alunoid INTEGER,
    cursoid INTEGER,
    PRIMARY KEY (alunoid, cursoid),
	
    FOREIGN KEY (alunoid) 
	REFERENCES aluno (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
	,
	
    FOREIGN KEY (cursoid) REFERENCES curso (idcurso)
	ON DELETE CASCADE
);

-- Inserir curso
INSERT INTO curso (idcurso, nome) VALUES (2, 'Matemática');

-- Inserir aluno
INSERT INTO aluno (id, nome) VALUES (1, 'Eduarda');

-- Relacionar o aluno com o curso
INSERT INTO aluno_curso (alunoid, cursoid) VALUES (1, 2);

DROP TABLE aluno_curso;