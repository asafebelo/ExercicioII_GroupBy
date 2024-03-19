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
1. Faça a quantidade total de vendas por cada cliente, sendo que deve aparecer o nome do cliente, o total ordenado por aquele que comprou mais para o que comprou menos, desde que a quantidade compras seja maior do que 1.

`select c.nome as nomecliente, count(v.codigocliente) as totalvendas` \
`from cliente c` \
`inner join venda v on id_cliente = codigoCliente` \
`inner join produto p on id_produto = codigoProduto` \
`group by c.nome` \
`having count(c.nome) > 1` \
`order by totalvendas desc`

2. Crie um relatório que mostre a quantidade o total de cada produto comprado por cada cliente, desde que a quantidade de produtos comprados seja maior do que 1.

`select c.nome, sum(v.quantidade) as qntproduto, p.nome` \
`from cliente c` \
`inner join venda v on id_cliente = codigoCliente` \
`inner join produto p on id_produto = codigoProduto` \
`group by c.nome, p.nome` \
`having sum(v.quantidade) > 1` \
`order by qntproduto desc`

3. Crie um relatório que mostre a quantidade de produtos comprados por cada cliente, desde que a quantidade de produtos seja maior do que 10.

`select c.nome nomecliente, sum(v.quantidade) as quantproduto` \
`from cliente c` \
`inner join venda v on id_cliente = codigoCliente` \
`inner join produto p on id_produto = codigoProduto` \
`group by nomecliente` \
`order by quantproduto desc`
