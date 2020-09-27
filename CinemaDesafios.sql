use cinema;

#1
select * from ator where nome_ator like 'a%';

#2
select max(duracao) from filme;

#3
select min(duracao) from filme where ano_lancamento > 2000 and ano_lancamento < 2010;

#4
select * from filme where FK_id_genero = 2;

#5
select * from filme where FK_id_genero = 4 and ano_lancamento > 2010;

#6
select * from filme order by ano_lancamento desc, nome_filme;

#7
select sum(duracao) soma from filme where ano_lancamento > 2010 and ano_lancamento <2018 and FK_id_genero = 6;

#8
select * from filme where ano_lancamento < 2000 order by ano_lancamento;

#9
select avg(duracao) media_duracao_filmes from filme where ano_lancamento > 2000;

#10
select FK_id_genero, count(*) Contagem_de_filmes_por_genero from filme where FK_id_genero group by FK_id_genero;

#11
select * from ator order by nome_ator, data_nascimento > '1960' and data_nascimento < '1980';
select * from ator;

#12
select * from ator order by data_nascimento desc;

#13
select * from filme;
select * from ator;
select * from filme_e_ator;
select FK_id_ator, count(*) contagem_de_atores_filme from filme_e_ator where FK_id_ator group by FK_id_ator;

#14
select FK_id_filme, count(*) contagem_de_filmes_ator from filme_e_ator where FK_id_filme group by FK_id_filme;

#15
select ano_lancamento, count(*) total_filmes_ano from filme where ano_lancamento group by ano_lancamento;

#16
select nacionalidade, count(*) diretor_cada_pais from diretor where nacionalidade like '%' group by nacionalidade;
select * from diretor;

#17
select FK_id_genero, count(nome_filme) total_filmes, sum(duracao) duracao_total, avg(duracao) media_duracao from filme where FK_id_genero group by FK_id_genero order by duracao;
select * from filme;

#18
select * from filme where nome_filme like '%DE%' order by nome_filme desc;



