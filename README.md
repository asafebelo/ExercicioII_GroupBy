<h1 align="center">Exercício II de Group By</h1>
<h2 align="center">Laboratório de Banco de Dados</h2>

## 📊 Relatórios
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

