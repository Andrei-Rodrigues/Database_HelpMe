create database Helpme1000;

use Helpme1000;

create table usuario(
idusuario int auto_increment not null,
nome varchar(200) not null,
cpf varchar(50) not null,
telefone varchar(20) not null,
sexo varchar(1) not null,
email varchar(250) not null,
constraint pk_usuario primary key(idusuario));

create table veiculo(
idveiculo int auto_increment not null,
marca varchar(200) not null,
modelo varchar(200) not null,
cor varchar(50) not null,
ano varchar(8) not null,
portas varchar(2) not null,
chassi varchar(50) not null,
placa varchar(7) not null,
combustivel varchar(50) not null,
constraint pk_veiculo primary key(idveiculo));

create table problema(
idproblema int auto_increment not null,
descrever_problema varchar(1000) not null,
rua varchar(200) not null,
ponto_referencia varchar(200) not null,
constraint pk_problema primary key(idproblema));

create table usuarioveiculo(
idusuario int not null,
idveiculo int not null,
datacadastro date not null,
constraint pk_usuarioveiculo primary key(idusuario,idveiculo,datacadastro),
constraint fk_usuariov foreign key(idusuario) references usuario(idusuario),
constraint fk_veiculov foreign key(idveiculo) references veiculo(idveiculo));

create table usuarioproblema(
idusuario int not null,
idproblema int not null,
datacadastro date not null,
constraint pk_usuarioproblema primary key(idusuario,idproblema),
constraint fk_usuarioa foreign key(idusuario) references usuario(idusuario),
constraint fk_problemaa foreign key(idproblema) references problema(idproblema));

insert into usuario values (null, "Rafael", "594.564.000-00","25(94)264-34-2724","M","rafael@gmail.com"),
						   (null, "Marcos", "637.372.000-41","64(03)059-49-0291","M","marcos@gmail.com"),
                           (null, "Bruna", "152.172.360-51","70(54)459-45-3224","F","ana@gmail.com"),
                           (null, "Fabricio","471.188.640-05","75(12)924-96-8808","M","fabricio@gmail.com"),
                           (null, "Lucio","501.382.290-40","25(83)907-03-9992","M","rafael_fortes@gmail.com"),
                           (null, "Bruno","577.656.390-99","87(19)845-39-7455","M","bruno@gmail.com"),
						   (null, "Luisa","689.447.080-45","50(09)664-81-2473","F","luisa@gmail.com"),
						   (null, "Gabriel","552.416.160-12","11(25)846-03-1942","M","gabriel@gmail.com"),
						   (null, "Alexandre","897.340.270-69","74(34)008-99-8764","M","alexandre@gmail.com"),
						   (null, "Bruno Oliveira","313.425.810-24","94(95)851-73-8231","M","bruno_oliveira@gmail.com"),
						   (null, "Raquel","018.249.650-36","38(92)179-68-7589","F","raquel@gmail.com"),
						   (null, "Andrei","750.771.650-33","35(07)534-53-6582","M","andrei@gmail.com");
                           
insert into veiculo values(null, "Fiat", "Brava ","Preto","2000","4","1e25LL6V8F23K4862","JJW3F41","Gasolina"),
						  (null, "Citroen", "C3","Prata","2014","4","37LRCVt4VrWts0319","KFJ4R98","Flex"),
                          (null, "BMW", "730i","Cinza","1991","4","2ZzA5Y5pA7ebv9734","KKK8U96","Gasolina"),
                          (null, "Audi", "A4","Vermelho","1997","4","61ZDRlD5tsvh54058","HSY9W47","Gasolina"),
                          (null, "Ford", "Fusion","Vermelho","2006","4","76RwJDum5fZAF6684","JRM2G46","Gasolina"),
                          (null, "Volkswagen", "Polo","Cinza","2021","4","4T7ee4pAA801C8722","GCX5I97","Gasolina"),
                          (null, "Dodge", "Dakota","Prata","1998","2","46V6ZAAz5JAf63738","MOW3C25","Álcool"),
                          (null, "Honda", "Fit","Prata","2015","2","75Rmj8vlWNWaH4381","MUD6R46","Gasolina"),
                          (null,"Chevrolet","Cruze","Vermelho","2012","4","7Dg1z8mzlg88E8812","INB2S48","Gasolina"),
                          (null,"Mercedes-Benz","C-250 ","Dourado","2003","4","56Y4Lh24JThwA5266","NAK9T81","Gasolina"),
                          (null,"Ford","Ford Ka","Preto","2018","2","7U6h4V59k55rH1841","IQZ4S26","Álcool"),
                          (null,"Toyota","Hilux ","Preto","2002","2","7K2KbNNFrD4AC0525","AVM2R95","Gasolina");
                          
insert into problema values(null, "Falta de combustível","Rua Nazaré","Proximo ao bar do Zé"),
						   (null, "Pneu furado","Rua Carvalho","Próximo ao mercado Feliz"),
                           (null, "Bateria descarregada","Rua Veranópolis","Próximo a rotatoria"),
                           (null, "Pneu furado","Rua Santana","Próximo ao colegio Mesquita"),
                           (null, "Aquecimento do veículo","Avenida Assis Brasil","Próximo a escola QI"),
                           (null, "Radiador sem água","Rua Julio Antônio","Próximo ao hospital"),
                           (null, "Pneu Furado","Rua Catarina","Próximo ao ponto de onibus"),
                           (null, "Falta de combustível","Rua Margarida","Próximo ao colegio Militar"),
                           (null, "Pane elétrica","Rua Malibu","Próximo ao cruzamento"),
                           (null, "Precisando chave de roda","Avenida Baltazar","Próximo a fruteira Miranda"),
                           (null, "Aquecimento do veículo","Rua Orlando","Próximo ao colegio Bento"),
                           (null, "Pneu furado","Rua Cascavel","Próximo ao semáforo");
                           
insert into usuarioveiculo values
(9,4,"2020/11/02"),
(12,3,"2019/02/17"),
(10,2,"2021/01/20"),
(2,5,"2021/07/13"),
(8,10,"2020/05/28"),
(11,12,"2021/02/18"),
(1,8,"2018/03/02"),
(7,9,"2021/05/06"),
(3,7,"2020/09/11"),
(5,6,"2021/05/02"),
(4,11,"2019/01/02"),
(6,1,"2021/07/03");

insert into usuarioproblema values
(10,11,"2020/12/02"),
(11,5,"2019/06/14"),
(6,4,"2021/07/23"),
(12,6,"2021/07/13"),
(2,10,"2020/05/28"),
(7,12,"2021/05/13"),
(1,7,"2018/07/05"),
(5,3,"2021/06/06"),
(8,1,"2020/07/19"),
(3,9,"2021/06/25"),
(9,2,"2019/02/03"),
(4,8,"2021/03/07");

UPDATE usuario
SET nome = "Fabrício"
WHERE cpf = "471.188.640-05";

UPDATE usuario
SET email = "lucio.silveira@gmail.com"
WHERE cpf = "501.382.290-40";

UPDATE veiculo
SET portas = "2"
WHERE placa = "INB2S48";

UPDATE veiculo
SET cor = "Verde"
WHERE placa = "JRM2G46";

UPDATE problema
SET descrever_problema = "problema no câmbio"
WHERE idproblema = "3";

UPDATE problema
SET descrever_problema = "Radiador sem água"
WHERE idproblema = "2";

UPDATE usuarioveiculo
SET datacadastro = "2020/04/28"
WHERE idveiculo = "1";

UPDATE usuarioveiculo
SET datacadastro = "2021/07/03"
WHERE idveiculo = "6";

UPDATE usuarioproblema
SET datacadastro = "2019/02/15"
WHERE idproblema = "8";

UPDATE usuarioproblema
SET datacadastro = "2018/06/17"
WHERE idproblema = "12";

SELECT * FROM veiculo WHERE combustivel = "Gasolina";

SELECT * FROM veiculo WHERE cor = "Prata";

SELECT * FROM veiculo WHERE ano = "2015";

SELECT u.nome AS usuario, p.descrever_problema AS prblema
FROM usuarioproblema AS up
INNER JOIN usuario AS u
ON up.idusuario = u.idusuario
INNER JOIN problema AS p
ON up.idproblema = p.idproblema
WHERE p.idproblema = 8;

SELECT * FROM veiculo WHERE marca = "Ford";

SELECT * FROM problema WHERE descrever_problema = "Pneu furado";

SELECT * FROM veiculo WHERE ano = "2000";

SELECT * FROM veiculo WHERE chassi = "2ZzA5Y5pA7ebv9734";

SELECT u.nome AS usuario, p.descrever_problema AS problema, p.ponto_referencia
FROM usuarioproblema AS up
INNER JOIN usuario AS u
ON up.idusuario = u.idusuario
INNER JOIN problema AS p
ON up.idproblema = p.idproblema
WHERE p.idproblema = 4;

SELECT u.nome AS usuario, v.modelo AS veiculo, v.ano, v.chassi, v.cor, v.combustivel, v.placa, v.portas
FROM usuarioveiculo AS uv
INNER JOIN usuario AS u
ON uv.idusuario = u.idusuario
INNER JOIN veiculo AS v
ON uv.idveiculo = v.idveiculo
WHERE v.idveiculo = 7;

DELETE FROM usuario WHERE nome = "Bruno Oliveira";
DELETE FROM veiculo WHERE chassi = "37LRCVt4VrWts0319";
DELETE FROM usuarioveiculo WHERE datacadastro = "2020/05/28";
DELETE FROM usuarioproblema WHERE datacadastro = "2021/06/25";
