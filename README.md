<h1 align="center">Exercícios Lab de Banco de Dados</h1>
<h2 align="center">Laboratório de Banco de Dados</h2>

## 📊 Relatórios
### Exercício II Group By
1. O primeiro relatório contém a quantidade total de vendas por cada cliente, visualizando o nome do cliente e o total ordenado de maneira descendente.
   
`select c.nome as nomeCliente,` \
`sum(v.total) as totalCliente` \
   `from venda v` \
   `inner join cliente c on c.id = v.clienteID` \
   `group by nome` \
   `order by totalCliente desc`

2. O segundo relatório consiste em mostrar a quantidade do total de cada produto comprado por cada cliente.

`select c.nome as nomeCliente,` \
`p.nome as nomeProduto,` \
`sum(vp.quantidade) as quantidadeTotal` \
   `from (((vendaProduto vp` \
   `inner join venda v on v.id = vp.vendaId) inner join produto p on vp.produtoID = p.id)` \
   `inner join cliente c on c.id = v.clienteID)` \
   `group by nomeCliente, nomeProduto`

### Exercício II Having
1. O primeiro relatório contém a quantidade total de vendas por cada cliente, sendo que deve aparecer o nome do cliente, o total ordenado por aquele que comprou mais para o que comprou menos, desde que a quantidade compras seja maior do que 1.

`select c.nome as nomecliente, count(v.codigocliente) as totalvendas` \
   `from cliente c` \
   `inner join venda v on id_cliente = codigoCliente` \
   `inner join produto p on id_produto = codigoProduto` \
   `group by c.nome` \
   `having count(c.nome) > 1` \
   `order by totalvendas desc`

2. O segundo relatório mostra a quantidade o total de cada produto comprado por cada cliente, desde que a quantidade de produtos comprados seja maior do que 1.

`select c.nome, sum(v.quantidade) as qntproduto, p.nome` \
   `from cliente c` \
   `inner join venda v on id_cliente = codigoCliente` \
   `inner join produto p on id_produto = codigoProduto` \
   `group by c.nome, p.nome` \
   `having sum(v.quantidade) > 1` \
   `order by qntproduto desc`

3. O terceiro relatório mostra a quantidade de produtos comprados por cada cliente, desde que a quantidade de produtos seja maior do que 10.

`select c.nome nomecliente, sum(v.quantidade) as quantproduto` \
   `from cliente c` \
   `inner join venda v on id_cliente = codigoCliente` \
   `inner join produto p on id_produto = codigoProduto` \
   `group by nomecliente` \
   `order by quantproduto desc`

### Exercícios Union
1. O primeiro relatório contém a informação de quais são os códigos e os nomes dos produtos e a quantidade que tiveram pelo menos 10 vendas, ou que tiveram somente 1 venda

`(select p.id_produto as idprod, p.nome as produto, sum(v.quantidade)` \
	`from produto p` \
	`inner join venda v on p.id_produto = codigoProduto` \
	`group by idprod, produto` \
	`having sum(v.quantidade) >= 10)` \
`union` \
`(select p.id_produto as idprod, p.nome as produto, sum(v.quantidade)` \
	`from produto p` \
	`inner join venda v on p.id_produto = codigoProduto` \
	`group by idprod, produto` \
	`having sum(v.quantidade) = 1)` 

2. O segundo relatório recupera as informações do cliente que mais gastou na loja, juntamente com o cliente que menos gastou na loja

`(select c.nome, v.codigoCliente, sum(p.preco) as maiorGasto` \
	`from produto p` \
	`inner join venda v on p.id_produto = v.codigoProduto` \
	`inner join cliente c on c.id_cliente = v.codigoCliente` \
	`group by v.codigoCliente, c.nome` \
	`order by maiorGasto desc` \
	`limit 1)` \
`union` \
`(select c.nome, v.codigoCliente, sum(p.preco) as maiorGasto` \
	`from produto p` \
	`inner join venda v on p.id_produto = v.codigoProduto` \
	`inner join cliente c on c.id_cliente = v.codigoCliente` \
	`group by v.codigoCliente, c.nome` \
	`order by maiorGasto asc` \
	`limit 1)`
 
### Exercício I Case
1. Recuperar todos os nomes de todos os estados de todos os países, mostrando o nome do país e o nome do estado, contudo quando for o Brasil o relatório deverá mostrar somente a sigla do país e a sigla do estado.

`select` \
	`case` \
		`when p.nome = 'Brasil' then p.sigla` \
		`else p.nome` \
	`end as nomepais,` \
	`case` \
		`when p.nome = 'Brasil' then e.sigla` \
		`else e.nome` \
	`end as nomeestado` \
`from estado e` \
`inner join pais p on e.codigoPais = p.id_pais;` \

2. Recuperar todos os nomes de todos as cidades, mostrando o nome da cidade e o nome do estado, contudo quando não for o Brasil, o relatório deverá mostrar somente o nome da cidade e a sigla do país

`select` \
	`case` \
		`when p.nome != 'Brasil' then c.nome` \
		`else p.nome` \
	`end as nomecidade,` \
	`case` \
		`when p.nome != 'Brasil' then p.sigla` \
		`else e.nome` \
	`end as nomeestado` \
`from estado e` \
`inner join cidade c on c.codigoEstado = e.id_estado` \
`inner join pais p on e.codigoPais = p.id_pais;`

### Exercício II Case
1. Crie um conjunto de relações Categoria Carteira de Motorista x Aluno: Fazer a consulta para saber quais são os alunos e suas respectivas carteiras que estão almejando, retornando o nome do cliente, e a categoria ao qual ele deseja, sendo que no banco só existem as categorias A, B, C, D ou E, e o relatório deverá retornar Moto, Carro, Caminhão, Ônibus e Eixo, para as respectivas categorias.

`select a.nome,` \
	`case` \
		`when cm.tipocarteira = 'A' then 'Moto'` \
		`when cm.tipocarteira = 'B' then 'Carro'` \
		`when cm.tipocarteira = 'C' then 'Caminhão'` \
		`when cm.tipocarteira = 'D' then 'Ônibus'` \
		`when cm.tipocarteira = 'E' then 'Eixo'` \
		`else 'other'` \
	`end as tipoCarteira` \
`from aluno a` \
`inner join carteiraMotorista cm on a.codigoCarteira = cm.id_carteira`

### Exercício I View
1. Mostre o nome do fabricante e a bebidas que ele vende

`create view nomes_fabricantes_bebidas as` \
	`select f.nome as fabricantes, b.descricao as bebidas` \
	`from fabricante f` \
	`inner join bebida b on f.id_fabricante = b.codigoFabricante` 

`select *` \
`from nomes_fabricantes_bebidas` 

2. Mostre o nome do fabricante, o nome da cidade e o nome da bebida que fabrica

`create view nomes_fabricantes_cidades_bebidas as` \
	`select f.nome as fabricantes, c.nome as cidades, b.descricao as bebidas` \
	`from fabricante f` \
	`inner join bebida b on f.id_fabricante = b.codigoFabricante` \
	`inner join cidade c on c.id_cidade = f.codigoCidade` 

`select *` \
`from nomes_fabricantes_cidades_bebidas` 

3. Mostre os nomes das bebidas e o nome dos produtos em uma única consulta

`create view nomes_bebidas_produtos as` \
	`select b.descricao as bebidas, p.descricao as produtos` \
	`from fabricante f` \
	`inner join bebida b on f.id_fabricante = b.codigoFabricante` \
	`inner join produto p on f.id_fabricante = p.codigoFabricante` 

`select *` \
`from nomes_bebidas_produtos` 

### Exercício II View
1. Mostre o nome dos alunos, disciplinas e dos professores

`create view nomes_alunos_disciplinas_professores as` \
	`select a.nome as alunos, d.nome as disciplinas, p.nome as professores` \
	`from aluno a` \
	`inner join matricula m on a.id_aluno = m.codigoAluno` \
	`inner join turma t on t.id_turma = m.codigoTurma` \
	`inner join disciplina d on d.id_disciplina = t.codigoDisciplina` \
	`inner join professor p on p.id_professor = t.codigoProfessor` 

`select *` \
`from nomes_alunos_disciplinas_professores` 

2. Mostre o nome das turmas, das disciplinas e dos professores

`create view nomes_turmas_disciplinas_professores as` \
	`select t.nome as turmas, d.nome as disciplinas, p.nome as professores` \
	`from turma t` \
	`inner join disciplina d on t.codigoDisciplina = d.id_disciplina` \
	`inner join professor p on t.codigoProfessor = p.id_professor` 

`select *` \
`from nomes_turmas_disciplinas_professores` 

3. Mostre o nome das turmas, dos professores e quantos alunos tem por turma

`create view nomes_turmas_professor_qntAlunos as` \
	`select t.nome as turmas, p.nome as professores, count(a.id_aluno) as qntAlunos` \
	`from turma t` \
	`inner join professor p on t.codigoProfessor = p.id_professor` \
	`inner join matricula m on t.id_turma = m.codigoTurma` \
	`inner join aluno a on m.codigoAluno = a.id_aluno` \
	`group by t.nome, p.nome` 

`select *` \
`from nomes_turmas_professor_qntAlunos` 

### Exercício I Stored Procedures
1. Crie uma função que dado um número calcule seu fatorial.

`create or replace function fazendo_fatorial(numero int)` \
`returns int as $$` \
`declare` \
	`i int := 1;` \
	`calculandoFatorial int := 1;` \
`begin` \
	`if numero < 0 then` \
        `raise exception 'Não é possível calcular fatorial de números negativos';` \
    `end if;` \
	`while numero >= i loop` \
	`calculandoFatorial := calculandoFatorial * i;` \
	`i := i + 1;` \
	`end loop;` \
	`return calculandoFatorial;` \
`end;` \
`$$ language plpgsql;` \

`select fazendo_fatorial(5);`

2. Dados quatro números distintos, desenvolva uma função que determine e retorne a soma dos três menores.

`create or replace function soma_tres_menores(n1 real, n2 real, n3 real, n4 real)` \
`returns real as $$` \
`declare` \
    `menor1 real;` \
	`menor2 real;` \
	`menor3 real;` \
`begin` \
    `menor1 := n1;` \
	`menor2 := n2;` \
	`menor3 := n3;` \                                         
	`if menor2 < menor1 then` \
		`menor1 := n2;` \
		`menor2 := n1;` \
	`end if;` \
	`if menor3 < menor1 then` \                          
		`menor2 := menor1;` \
		`menor1 := n3;` \
	`elsif menor3 < menor2 then` \                        
		`menor2 := n3;` \
	`end if;` \
	`if n4 < menor1 then` \
		`menor3 := menor2;` \
		`menor2 := menor1;` \
		`menor1 := n4;` \
	`elsif n4 < menor2 then` \
		`menor3 := menor2;` \
		`menor2 := n4;` \
	`elsif n4 < menor3 then` \
		`menor3 := n4;` \
	`end if;` \
	`return menor1 + menor2 + menor3;` \
`end;` \
`$$ language plpgsql;` \

`select soma_tres_menores(10, 8, 6, 4);` \


3. Faça uma função que dado um número de 4 dígitos calcule e retorne se ele possui ou não esta característica.

`create or replace function caracteristica_numero(numero varchar)` \
`returns varchar as $$` \
`declare` \
	`num1 int;` \
	`num2 int;` \
	`somaNum int;` \
	`potNum int;` \
	`temCaracteristica varchar;` \
`begin` \
	`num1 := cast(substring(numero from 1 for 2 )as int);` \
	`num2 := cast(substring(numero from 3 for 2) as int);` \
	`somaNum = num1 + num2;` \
	`potNum = somaNum * somaNum;` \
	`if potNum = cast(numero as int) then` \
		`temCaracteristica := 'Tem caracteristica';` \
	`else` \
		`temCaracteristica := 'Não tem a característica';` \
	`end if;` \
	`return temCaracteristica;` \ 
`end;` \
`$$ language plpgsql;` \

select caracteristica_numero('3030');`

4. Escreva uma função que receba um valor N inteiro e positivo, e que calcula o valor de E. `E = 1 + 1/1! + 1/2! + 1/3! ... + 1/N!`

`create or replace function valor_de_E(N int)` \
`returns float as $$` \
`declare` \
	`i int := 1;` \
	`fat int := 1;` \
	`somaNum float := 1;` \
`begin` \
	`while i <= N loop` \
		`somaNum = (somaNum + (1.0/fat));` \
		`i := i + 1;` \
		`fat := fat * i;` \
	`end loop;` \
	`return somaNum;` \
`end;` \
`$$ language plpgsql;`

`select valor_de_E(5);`

### Exercício II Stored Procedures
1. Crie uma função que receba o nome do aluno e retorne a média das suas notas utilizando alguma estrutura de loop.

`create or replace function media_notas_aluno(nomeAluno varchar)` \
`returns float as $$` \
`declare` \
	`somaNotas float := 0.0;` \
	`i int = 0;` \
	`media float;` \
	`notaAtual float;` \
`begin` \
	`media := 0;`
	`for notaAtual in select nota from nota where aluno = nomeAluno loop` \
		`somaNotas := somaNotas + notaAtual;` \
		`i := i+1;` \
	`end loop;` \
	`if(i > 0) then` \
		`media = somaNotas / i;` \
	`end if;`
	`return media;` \
`end;` \
`$$ language plpgsql;`

`select media_notas_aluno('Asafe');`
