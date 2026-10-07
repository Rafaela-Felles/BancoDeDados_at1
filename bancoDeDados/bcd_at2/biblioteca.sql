CREATE DATABASE biblioteca_senai;

USE biblioteca_senai;

CREATE TABLE aluno(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    curso VARCHAR(100) NOT NULL
);

CREATE TABLE emprestimo(
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,

    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

CREATE TABLE livros(
    id_livros INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicado DATE NOT NULL
);

SELECT * FROM aluno;

INSERT INTO aluno (nome, email, curso)
VALUES ("Mayara Lopes", "MayaraLopes@gmail.com", "Desenvolvimento De Sistema");

INSERT INTO aluno (nome, email, curso)
VALUES ("Maria Lopes", "MariaLopes@gmail.com", "Desenvolvimento De Sistema");

SELECT * FROM emprestimo;

INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES (1, 1, "2026-10-07", "2026-10-20");

INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES (2, 2, "2026-10-02", "2026-11-01");

SELECT * FROM livros;

INSERT INTO livros (titulo, autor, ano_publicado)
VALUES ("Diario De Um Banana", "Jeff Kinney", "2009-01-13");

INSERT INTO livros (titulo, autor, ano_publicado)
VALUES ("Asas Reluzentes", "Allison Saft", "2025-03-05");


/* mudei o nome */
UPDATE aluno SET nome = "Leticia" WHERE id_livro = 2;

/* Apagando o aluno 3 */
DELETE FROM aluno WHERE id_aluno = 2;



