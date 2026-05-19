create database olojinha;
use olojinha;
create table categorias
(
    catid int primary key auto_increment,
    catnome varchar(150),
    catativo boolean default 1
);
create table subcategorias
(
    subid int primary key auto_increment,
    subnome varchar(150),
    subcatid int,
    subativo boolean default 1,
    constraint fksubcatid foreign key (subcatid) references categorias (catid)
);
create table produtos
(
    proid int primary key auto_increment,
    pronome varchar(150),
    prodescricao varchar(1024),
    provalorcusto double,
    provalorvenda double,
    proquantidade int,
    prosubid int,
    proativo boolean default 1,
    constraint fkprosubid foreign key (prosubid) references subcategorias (subid)
);
create table fotosproduto
(
    fotid int primary key auto_increment,
    fotcaminho varchar(1024),
    fotdescricao varchar(150),
    fotproid int,
    fotprincipal boolean default 0,
    fotativo boolean default 1,
    constraint fkfotproid foreign key (fotproid) references produtos (proid)
);
insert into categorias (catnome) values
('Acessórios para Veículos'),
('Agro'),
('Alimentos e Bebidas'),
('Pet Shop'),
('Antiguidades e Coleções'),
('Arte, Papelaria e Armarinho'),
('Bebês'),
('Beleza e Cuidado Pessoal'),
('Brinquedos e Hobbies'),
('Calçados, Roupas e Bolsas'),
('Câmeras e Acessórios'),
('Carros, Motos e Outros'),
('Casa, Móveis e Decoração'),
('Celulares e Telefones'),
('Construção'),
('Eletrodomésticos'),
('Eletrônicos, Áudio e Vídeo'),
('Esportes e Fitness'),
('Ferramentas'),
('Festas e Lembrancinhas'),
('Games'),
('Imóveis'),
('Indústria e Comércio'),
('Informática'),
('Ingressos'),
('Instrumentos Musicais'),
('Joias e Relógios'),
('Livros, Revistas e Comics'),
('Música, Filmes e Seriados'),
('Saúde'),
('Serviços'),
('Mais Categorias');


select 
    proid,
    pronome,
    prodescricao,
    provalorcusto,
    provalorvenda,
    proquantidade,
    prosubid,
    subnome,
    subcatid,
    catnome,
    proativo
from
    produtos,
    subcategorias,
    categorias
where
    prosubid = subid
and
    subcatid = catid

    Insert into subcategorias
(subnome, subcatid)
VALUES
("Gatos","4"),
("Coelho","4");

Insert into subcategorias
(subnome, subcatid)
VALUES
("Maquiagem","8"),
("Perfume","8");

insert into produtos
(pronome, prodescricao, provalorcusto, provalorvenda, proquantidade, prosubid)
values
('Ração para gatos', 'Ração seca premium para gatos adultos', 20.00, 35.00, 50, 1),
('Areia sanitária para gatos', 'Areia higiênica com controle de odor', 15.00, 28.00, 80, 1),
('Ração para coelhos', 'Ração balanceada para coelhos adultos', 18.00, 32.00, 40, 2),
('Brinquedo para coelhos', 'Brinquedo de madeira para roer', 10.00, 22.00, 30, 2),
('Base líquida', 'Base de maquiagem com acabamento matte', 25.00, 49.90, 70, 3),
('Batom vermelho', 'Batom cremoso de longa duração', 12.00, 29.90, 90, 3),
('Perfume floral', 'Fragrância feminina suave e marcante', 40.00, 89.90, 40, 4),
('Perfume amadeirado', 'Fragrância masculina intensa e elegante', 45.00, 99.90, 35, 4);

INSERT INTO fotosproduto
(fotcaminho, fotproid, fotprincipal )
VALUES
('midias_produtos/Racaogato.jpg','1','1');
('midias_produtos/areia.jpg','','1');
