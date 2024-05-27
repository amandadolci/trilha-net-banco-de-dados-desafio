-- Criação das tabelas com constraints de chave estrangeira
CREATE TABLE Atores (
  	Id INTEGER PRIMARY KEY AUTOINCREMENT,
    PrimeiroNome VARCHAR(20),
    UltimoNome VARCHAR(20),
    Genero VARCHAR(1)
);

CREATE TABLE Filmes (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT NOT NULL,
    Ano INTEGER NOT NULL,
    Duracao INTEGER NOT NULL
);

CREATE TABLE Generos (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Genero TEXT NOT NULL
);

CREATE TABLE FilmesGenero (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    IdFilme INTEGER NOT NULL,
    IdGenero INTEGER NOT NULL,
    FOREIGN KEY (IdFilme) REFERENCES Filmes (Id),
    FOREIGN KEY (IdGenero) REFERENCES Generos (Id)
);

CREATE TABLE ElencoFilme (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    IdAtor INTEGER NOT NULL,
    IdFilme INTEGER NOT NULL,
  	Papel VARCHAR(30),
    FOREIGN KEY (IdAtor) REFERENCES Atores (Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes (Id)
);

-- Inserções de dados
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (1, 'James', 'Stewart', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (2, 'Deborah', 'Kerr', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (3, 'Peter', 'OToole', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (4, 'Robert', 'DeNiro', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (6, 'Harrison', 'Ford', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (7, 'Stephen', 'Baldwin', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (8, 'Jack', 'Nicholson', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (9, 'Mark', 'Wahlberg', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (10, 'Woody', 'Allen', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (11, 'Claire', 'Danes', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (12, 'Tim', 'Robbins', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (13, 'Kevin', 'Spacey', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (14, 'Kate', 'Winslet', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (15, 'Robin', 'Williams', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (16, 'Jon', 'Voight', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (17, 'Ewan', 'McGregor', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (18, 'Christian', 'Bale', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (19, 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (20, 'Dev', 'Patel', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (21, 'Sigourney', 'Weaver', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (22, 'David', 'Aston', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (23, 'Ali', 'Astin', 'F');

INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (1, 1, 1, 'John Scottie Ferguson');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (2, 2, 2, 'Miss Giddens');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (3, 3, 3, 'T.E. Lawrence');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (4, 4, 4, 'Michael');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (5, 6, 6, 'Rick Deckard');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (6, 7, 8, 'McManus');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (7, 9, 10, 'Eddie Adams');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (8, 10, 11, 'Alvy Singer');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (9, 11, 12, 'San');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (10, 12, 13, 'Andy Dufresne');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (11, 13, 14, 'Lester Burnham');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (12, 14, 15, 'Rose DeWitt Bukater');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (13, 15, 16, 'Sean Maguire');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (14, 16, 17, 'Ed');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (15, 17, 18, 'Renton');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (16, 19, 20, 'Elizabeth Darko');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (17, 20, 21, 'Older Jamal');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (18, 21, 22, 'Ripley');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (19, 13, 23, 'Bobby Darin');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (20, 8, 9, 'J.J. Gittes');
INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel) VALUES (21, 18, 19, 'Alfred Borden');

INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (1, 'Um Corpo que Cai', 1958, 128);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (2, 'Os Inocentes', 1961, 100);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (3, 'Lawrence da Arábia', 1962, 216);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (4, 'O Franco Atirador', 1978, 183);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (5, 'Amadeus', 1984, 160);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (6, 'Blade Runner', 1982, 117);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (7, 'De Olhos Bem Fechados', 1999, 159);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (8, 'Os Suspeitos', 1995, 106);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (9, 'Chinatown', 1974, 130);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (10, 'Boogie Nights - Prazer Sem Limites', 1997, 155);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (11, 'Noivo Neurótico, Noiva Nervosa', 1977, 93);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (12, 'Princesa Mononoke', 1997, 134);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (13, 'Um Sonho de Liberdade', 1994, 142);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (14, 'Beleza Americana', 1999, 122);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (15, 'Titanic', 1997, 194);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (16, 'Gênio Indomável', 1997, 126);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (17, 'Amargo pesadelo', 1972, 109);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (18, 'Trainspotting - Sem Limites', 1996, 94);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (19, 'O Grande Truque', 2006, 130);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (20, 'Donnie Darko', 2001, 113);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (21, 'Quem Quer Ser um Milionário?', 2008, 120);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (22, 'Aliens, O Resgate', 1986, 137);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (23, 'Uma Vida sem Limites', 2004, 118);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (24, 'Avatar', 2009, 162);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (25, 'Coração Valente', 1995, 178);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (26, 'Os Sete Samurais', 1954, 207);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (27, 'A Viagem de Chihiro', 2001, 125);
INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES (28, 'De Volta para o Futuro', 1985, 116);

-- Continuando com os INSERTs restantes em dbo.FilmesGenero
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (1, 1, 22);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (2, 2, 17);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (3, 2, 3);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (4, 3, 12);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (5, 5, 11);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (6, 6, 8);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (7, 6, 13);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (8, 7, 26);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (9, 7, 28);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (10, 7, 18);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (11, 7, 21);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (12, 8, 2);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (13, 9, 23);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (14, 10, 7);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (15, 10, 27);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (16, 10, 1);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (17, 11, 14);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (18, 12, 6);
INSERT INTO FilmesGenero (Id, IdGenero, IdFilme) VALUES (19, 13, 4);

-- Continuando com os INSERTs restantes em dbo.Generos
INSERT INTO Generos (Genero) VALUES ('Ação');
INSERT INTO Generos (Genero) VALUES ('Aventura');
INSERT INTO Generos (Genero) VALUES ('Animação');
INSERT INTO Generos (Genero) VALUES ('Biografia');
INSERT INTO Generos (Genero) VALUES ('Comédia');
INSERT INTO Generos (Genero) VALUES ('Crime');
INSERT INTO Generos (Genero) VALUES ('Drama');
INSERT INTO Generos (Genero) VALUES ('Horror');
INSERT INTO Generos (Genero) VALUES ('Musical');
INSERT INTO Generos (Genero) VALUES ('Mistério');
INSERT INTO Generos (Genero) VALUES ('Romance');
INSERT INTO Generos (Genero) VALUES ('Suspense');
INSERT INTO Generos(Genero) VALUES('Guerra');
