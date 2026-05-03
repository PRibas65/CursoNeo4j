# CursoNeo4j

Projetos do curso Neo4J da DIO

PROJETO DO MÓDULO 1

O primeiro passo consistiu na criação de um modelo no Arrows com a seguinte estrutura de nós e relações. 

Na imagem está um exemplo de real de um nó.   

<img width="1046" height="816" alt="imagem" src="https://github.com/user-attachments/assets/db4c95a7-1fb6-4fa7-baa0-0d99b374ce94" />
<br/>
O segundo passo consistiu na criação de um script de criação de uma base de dados com dados relativos a 10 filmes.
<br/>

<br/>

QUERYS Para verificar informação
<br/>

Query para ver os directores por filme

MATCH (d:Director)-[:DIRECTED]->(m:Movie)
RETURN m.titulo AS Filme, m.ano AS Ano, d.nome AS Realizador
ORDER BY m.ano ASC

Resultado

<img width="1920" height="1032" alt="imagem" src="https://github.com/user-attachments/assets/c9d41250-21e0-451c-ac82-1c7fa9eccba6" />
