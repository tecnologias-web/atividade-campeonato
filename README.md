# Atividade - Campeonato Parte I

Nessa atividade montaremos um site para acompanhar os resultados de um campeonato de qualquer esporte ou modalidade.

## Regras Gerais

Para o desenvolvimento do site, deve-se atentar à algumas regras gerais:

 - O *backend* da aplicação deve ser feita usando Python (3.x) e o *framework* Flask (1.x). 
 - O arquivo *requirements.txt* contém todas as versões das bibliotecas mínimas necessárias para rodar os testes e a aplicação.
 - O *frontend* pode utilizar quaisquer bibliotecas de CSS e JavaScript que quiserem, fiquem a vontade para explorar as possibilidades.
 - As rotas devem ser controladas pelo Flask (não será permitida uma **Single Page Application**).

### Site Público

Na parte pública do site teremos as informações sobre o placar geral do campeonato, bem como a possiblidade de ver todas as partidas de um determinado time e os detalhes de cada partida. Além disso haverá uma página de login para entrar na área administrativa.

As páginas públicas devem obedecer as seguintes regras:

 - Home ('/'): deve mostrar uma tabela ou lista com o resultado geral atual do campeonato, mostrando as posições de todos os times. Deve ser mostrado o nome do time, a quantidade de partidas, número de vitórias, empates e derrotas e sua posição. O primeiro, segundo e terceiro lugar devem ter estilos diferentes entre si e os demais. Também deve haver um link para mostrar todas as partidas de cada time.
 - Partidas ('/partidas/<id_time>/'): deve mostrar todas as partidas do time especificado, mostrando apenas um resumo de quem contra quem e o resultado da partida. Cada partida deve ter um link para mostrar os seus detalhes.
 - Detalhes Partida ('/partidas/<id_time>/<id_partida>/'): Deve mostrar quem jogou contra quem, a pontuação, o resultado (quem ganhou ou o empate) e os membros de cada time.
 - Entrar ('/entrar'/): deve mostrar o formulário de login, com o campo de e-mail e senha e o botão de entrar.


### Dados

Dentro da pasta SQL já estão os esquemas que usaremos nessa atividade. Existem alguns exemplos de insters no arquivo **2-inserts.sql**, vocês podem alterar eles para os seus próprios dados. Para instalar o banco (ou reiniciá-lo) com os esquemas e dados passados, basta executar o comando `python db.py`.
