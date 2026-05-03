// =============================================================
//  Neo4j Dio Projeto 1 — Grafo de Filmes de Ficção Científica
//  Labels: User | Genre | Movie | Series | Director | Actor
//  Relações: WATCHED | IN_GENRE | DIRECTED | ACTED_IN ! LIKES
// =============================================================

// LIMPEZA — remover dados anteriores

MATCH (n) DETACH DELETE n;

// 1. CRIAR NÓS — User

CREATE (:User {
  id:            'usr-01',
  nome:          'Pedro Ribeiro',
  nacionalidade: 'Portugues',
  nascimento:    1965
});

// 2. CRIAR NÓS — Genre

CREATE (:Genre {
  id:     'gen-01',
  genero: 'Ficção Cientifica'
});

// 3. CRIAR NÓS — Series

CREATE (:Series {
  id:     'ser-01',
  titulo: 'Space 1999'
});

// 4. CRIAR NÓS — Director

CREATE (:Director {
  id:            'dir-01',
  nome:          'Christopher Nolan',
  nacionalidade: 'British-EUA',
  nascimento:    1970
});

CREATE (:Director {
  id:            'dir-02',
  nome:          'Denis Villeneuve',
  nacionalidade: 'Canadian',
  nascimento:    1967
});

CREATE (:Director {
  id:            'dir-03',
  nome:          'Ridley Scott',
  nacionalidade: 'British',
  nascimento:    1937
});

CREATE (:Director {
  id:            'dir-04',
  nome:          'James Cameron',
  nacionalidade: 'Canadian',
  nascimento:    1954
});

CREATE (:Director {
  id:            'dir-05',
  nome:          'Steven Spielberg',
  nacionalidade: 'EUA',
  nascimento:    1946
});

CREATE (:Director {
  id:            'dir-06',
  nome:          'Andy Wachowski',
  nacionalidade: 'EUA',
  nascimento:    1967
});

// 5. CRIAR NÓS — Movie

CREATE (:Movie {
  id:      'mov-01',
  titulo:  'Interstellar',
  ano:     2014,
  genero:  'Ficção Científica',
  sumario: 'Um grupo de astronautas viaja por um buraco de minhoca em busca de um novo lar para a humanidade.'
});

CREATE (:Movie {
  id:      'mov-02',
  titulo:  'Dune',
  ano:     2021,
  genero:  'Ficção Científica',
  sumario: 'Um jovem nobre assume o controlo de um planeta desértico, fonte do recurso mais valioso do universo.'
});

CREATE (:Movie {
  id:      'mov-03',
  titulo:  'Blade Runner 2049',
  ano:     2017,
  genero:  'Ficção Científica',
  sumario: 'Um blade runner descobre um segredo que pode mergulhar a sociedade no caos.'
});

CREATE (:Movie {
  id:      'mov-04',
  titulo:  'Arrival',
  ano:     2016,
  genero:  'Ficção Científica',
  sumario: 'Uma linguista é recrutada para comunicar com alienígenas que chegam à Terra.'
});

CREATE (:Movie {
  id:      'mov-05',
  titulo:  'The Martian',
  ano:     2015,
  genero:  'Ficção Científica',
  sumario: 'Um astronauta fica preso em Marte e tem de sobreviver usando apenas a ciência e o engenho.'
});

CREATE (:Movie {
  id:      'mov-06',
  titulo:  'Alien',
  ano:     1979,
  genero:  'Ficção Científica',
  sumario: 'A tripulação de uma nave espacial enfrenta uma criatura extraterrestre letal.'
});

CREATE (:Movie {
  id:      'mov-07',
  titulo:  'Avatar',
  ano:     2009,
  genero:  'Ficção Científica',
  sumario: 'Um marine paralítico vai a Pandora e enfrenta um conflito entre humanos e os nativos.'
});

CREATE (:Movie {
  id:      'mov-08',
  titulo:  'The Matrix',
  ano:     1999,
  genero:  'Ficção Científica',
  sumario: 'Um hacker descobre que a realidade é uma simulação controlada por máquinas.'
});

CREATE (:Movie {
  id:      'mov-09',
  titulo:  'Close Encounters of the Third Kind',
  ano:     1977,
  genero:  'Ficção Científica',
  sumario: 'Um homem torna-se obcecado com visões de uma montanha após um encontro sobrenatural.'
});

CREATE (:Movie {
  id:      'mov-10',
  titulo:  'Inception',
  ano:     2010,
  genero:  'Ficção Científica',
  sumario: 'Um ladrão especializado em roubar segredos do subconsciente recebe a tarefa de plantar uma ideia.'
});

// 6. CRIAR NÓS — Actor

CREATE (:Actor { id: 'act-01', nome: 'Matthew McConaughey', Nascimento: 1969, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-02', nome: 'Anne Hathaway',       Nascimento: 1982, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-03', nome: 'Jessica Chastain',    Nascimento: 1977, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-04', nome: 'Timothée Chalamet',   Nascimento: 1995, nacionalidade: 'EUA-Françes' });
CREATE (:Actor { id: 'act-05', nome: 'Zendaya',             Nascimento: 1996, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-06', nome: 'Oscar Isaac',         Nascimento: 1979, nacionalidade: 'Guatemala-EUA' });
CREATE (:Actor { id: 'act-07', nome: 'Ryan Gosling',        Nascimento: 1980, nacionalidade: 'Canadiano' });
CREATE (:Actor { id: 'act-08', nome: 'Harrison Ford',       Nascimento: 1942, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-09', nome: 'Amy Adams',           Nascimento: 1974, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-10', nome: 'Jeremy Renner',       Nascimento: 1971, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-11', nome: 'Matt Damon',          Nascimento: 1970, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-12', nome: 'Kristen Wiig',        Nascimento: 1973, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-13', nome: 'Sigourney Weaver',    Nascimento: 1949, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-14', nome: 'Tom Skerritt',        Nascimento: 1933, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-15', nome: 'Sam Worthington',     Nascimento: 1976, nacionalidade: 'Australiano' });
CREATE (:Actor { id: 'act-16', nome: 'Zoe Saldana',         Nascimento: 1978, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-17', nome: 'Keanu Reeves',        Nascimento: 1964, nacionalidade: 'Canadiano' });
CREATE (:Actor { id: 'act-18', nome: 'Laurence Fishburne',  Nascimento: 1961, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-19', nome: 'Carrie-Anne Moss',    Nascimento: 1967, nacionalidade: 'Canadiano' });
CREATE (:Actor { id: 'act-20', nome: 'Richard Dreyfuss',    Nascimento: 1947, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-21', nome: 'François Truffaut',   Nascimento: 1932, nacionalidade: 'Françes' });
CREATE (:Actor { id: 'act-22', nome: 'Leonardo DiCaprio',   Nascimento: 1974, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-23', nome: 'Joseph Gordon-Levitt',Nascimento: 1981, nacionalidade: 'EUA' });
CREATE (:Actor { id: 'act-24', nome: 'Ellen Page',          Nascimento: 1987, nacionalidade: 'Canadiano' });

// 7. CRIAR RELAÇÕES — Director DIRECTED Movie

MATCH (d:Director {id:'dir-01'}), (m:Movie {id:'mov-01'}) CREATE (d)-[:DIRECTED {ano: 2014}]->(m);
MATCH (d:Director {id:'dir-02'}), (m:Movie {id:'mov-02'}) CREATE (d)-[:DIRECTED {ano: 2021}]->(m);
MATCH (d:Director {id:'dir-02'}), (m:Movie {id:'mov-03'}) CREATE (d)-[:DIRECTED {ano: 2017}]->(m);
MATCH (d:Director {id:'dir-02'}), (m:Movie {id:'mov-04'}) CREATE (d)-[:DIRECTED {ano: 2016}]->(m);
MATCH (d:Director {id:'dir-03'}), (m:Movie {id:'mov-05'}) CREATE (d)-[:DIRECTED {ano: 2015}]->(m);
MATCH (d:Director {id:'dir-03'}), (m:Movie {id:'mov-06'}) CREATE (d)-[:DIRECTED {ano: 1979}]->(m);
MATCH (d:Director {id:'dir-04'}), (m:Movie {id:'mov-07'}) CREATE (d)-[:DIRECTED {ano: 2009}]->(m);
MATCH (d:Director {id:'dir-06'}), (m:Movie {id:'mov-08'}) CREATE (d)-[:DIRECTED {ano: 1999}]->(m);
MATCH (d:Director {id:'dir-05'}), (m:Movie {id:'mov-09'}) CREATE (d)-[:DIRECTED {ano: 1977}]->(m);
MATCH (d:Director {id:'dir-01'}), (m:Movie {id:'mov-10'}) CREATE (d)-[:DIRECTED {ano: 2010}]->(m);

// 8. CRIAR RELAÇÕES — Actor ACTED_IN Movie

// Interstellar
MATCH (a:Actor {id:'act-01'}), (m:Movie {id:'mov-01'}) CREATE (a)-[:ACTED_IN {personagem: 'Cooper'}]->(m);
MATCH (a:Actor {id:'act-02'}), (m:Movie {id:'mov-01'}) CREATE (a)-[:ACTED_IN {personagem: 'Brand'}]->(m);
MATCH (a:Actor {id:'act-03'}), (m:Movie {id:'mov-01'}) CREATE (a)-[:ACTED_IN {personagem: 'Murph (adulta)'}]->(m);

// Dune
MATCH (a:Actor {id:'act-04'}), (m:Movie {id:'mov-02'}) CREATE (a)-[:ACTED_IN {personagem: 'Paul Atreides'}]->(m);
MATCH (a:Actor {id:'act-05'}), (m:Movie {id:'mov-02'}) CREATE (a)-[:ACTED_IN {personagem: 'Chani'}]->(m);
MATCH (a:Actor {id:'act-06'}), (m:Movie {id:'mov-02'}) CREATE (a)-[:ACTED_IN {personagem: 'Duke Leto Atreides'}]->(m);

// Blade Runner 2049
MATCH (a:Actor {id:'act-07'}), (m:Movie {id:'mov-03'}) CREATE (a)-[:ACTED_IN {personagem: 'K / Joe'}]->(m);
MATCH (a:Actor {id:'act-08'}), (m:Movie {id:'mov-03'}) CREATE (a)-[:ACTED_IN {personagem: 'Rick Deckard'}]->(m);

// Arrival
MATCH (a:Actor {id:'act-09'}), (m:Movie {id:'mov-04'}) CREATE (a)-[:ACTED_IN {personagem: 'Louise Banks'}]->(m);
MATCH (a:Actor {id:'act-10'}), (m:Movie {id:'mov-04'}) CREATE (a)-[:ACTED_IN {personagem: 'Ian Donnelly'}]->(m);

// The Martian
MATCH (a:Actor {id:'act-11'}), (m:Movie {id:'mov-05'}) CREATE (a)-[:ACTED_IN {personagem: 'Mark Watney'}]->(m);
MATCH (a:Actor {id:'act-12'}), (m:Movie {id:'mov-05'}) CREATE (a)-[:ACTED_IN {personagem: 'Annie Montrose'}]->(m);

// Alien
MATCH (a:Actor {id:'act-13'}), (m:Movie {id:'mov-06'}) CREATE (a)-[:ACTED_IN {personagem: 'Ellen Ripley'}]->(m);
MATCH (a:Actor {id:'act-14'}), (m:Movie {id:'mov-06'}) CREATE (a)-[:ACTED_IN {personagem: 'Capitão Dallas'}]->(m);

// Avatar
MATCH (a:Actor {id:'act-15'}), (m:Movie {id:'mov-07'}) CREATE (a)-[:ACTED_IN {personagem: 'Jake Sully'}]->(m);
MATCH (a:Actor {id:'act-16'}), (m:Movie {id:'mov-07'}) CREATE (a)-[:ACTED_IN {personagem: 'Neytiri'}]->(m);
MATCH (a:Actor {id:'act-13'}), (m:Movie {id:'mov-07'}) CREATE (a)-[:ACTED_IN {personagem: 'Dr. Grace Augustine'}]->(m);

// The Matrix
MATCH (a:Actor {id:'act-17'}), (m:Movie {id:'mov-08'}) CREATE (a)-[:ACTED_IN {personagem: 'Neo'}]->(m);
MATCH (a:Actor {id:'act-18'}), (m:Movie {id:'mov-08'}) CREATE (a)-[:ACTED_IN {personagem: 'Morpheus'}]->(m);
MATCH (a:Actor {id:'act-19'}), (m:Movie {id:'mov-08'}) CREATE (a)-[:ACTED_IN {personagem: 'Trinity'}]->(m);

// Close Encounters of the Third Kind
MATCH (a:Actor {id:'act-20'}), (m:Movie {id:'mov-09'}) CREATE (a)-[:ACTED_IN {personagem: 'Roy Neary'}]->(m);
MATCH (a:Actor {id:'act-21'}), (m:Movie {id:'mov-09'}) CREATE (a)-[:ACTED_IN {personagem: 'Claude Lacombe'}]->(m);

// Inception
MATCH (a:Actor {id:'act-22'}), (m:Movie {id:'mov-10'}) CREATE (a)-[:ACTED_IN {personagem: 'Cobb'}]->(m);
MATCH (a:Actor {id:'act-23'}), (m:Movie {id:'mov-10'}) CREATE (a)-[:ACTED_IN {personagem: 'Arthur'}]->(m);
MATCH (a:Actor {id:'act-24'}), (m:Movie {id:'mov-10'}) CREATE (a)-[:ACTED_IN {personagem: 'Ariadne'}]->(m);

// 9. CRIAR RELAÇÕES — User WATCHED Movie

// Interstellar
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-01'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 2014}]->(m);

// Dune
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-02'}) CREATE (a)-[:WATCHED {rating: 5, date_watched: 2021}]->(m);

// Blade Runner 2049
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-03'}) CREATE (a)-[:WATCHED {rating: 5, date_watched: 2021}]->(m);

// Arrival

// The Martian
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-05'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 2015}]->(m);

// Alien
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-06'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 1979}]->(m);

// Avatar
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-07'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 2009}]->(m);

// The Matrix
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-08'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 1999}]->(m);

// Close Encounters of the Third Kind
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-09'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 1979}]->(m);

// Inception
MATCH (a:User {id:'usr-01'}), (m:Movie {id:'mov-10'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 2010}]->(m);

// 10. CRIAR RELAÇÕES — User WATCHED Series

// Space 1999
MATCH (a:User {id:'usr-01'}), (s:Series {id:'Ser-1'}) CREATE (a)-[:WATCHED {rating: 4, date_watched: 1975}]->(s);

// 11. CRIAR RELAÇÕES — User LIKES Genre

// Ficção Cientifíca
MATCH (a:User {id:'usr-01'}), (g:Genre {id:'gen-01'}) CREATE (a)-[:LIKES]->(g);

// 12. CRIAR RELAÇÕES — Movie IN_GENRE Genre

// Interstellar
MATCH (m:Movie {id:'mov-01'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Dune
MATCH (m:Movie {id:'mov-02'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Blade Runner 2049
MATCH (m:Movie {id:'mov-03'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Arrival
MATCH (m:Movie {id:'mov-04'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// The Martian
MATCH (m:Movie {id:'mov-05'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Alien
MATCH (m:Movie {id:'mov-06'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Avatar
MATCH (m:Movie {id:'mov-07'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// The Matrix
MATCH (m:Movie {id:'mov-08'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Close Encounters of the Third Kind
MATCH (m:Movie {id:'mov-09'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Inception
MATCH (m:Movie {id:'mov-10'}), (g:Genre {id:'gen-01'}) CREATE (m)-[:IN_GENRE]->(g);

// Serie Space 1999
MATCH (s:Serie {id:'ser-01'}), (g:Genre {id:'gen-01'}) CREATE (s)-[:IN_GENRE]->(g);
