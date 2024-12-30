CREATE DATABASE crud_bdii;

\connect crud_bdii;

CREATE TABLE aluno(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE disciplina(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE matriucla(
    aluno_id INTEGER REFERENCES aluno(id),
    disciplina_id INTEGER REFERENCES disciplina(id),
    PRIMARY KEY (aluno_id, disciplina_id)
);