 create database school; # 학생 데이터베이스 생성

show databases; # 데이터베이스 확인

use school; # 학교 데이터베이스 접근

show tables; # 접근한 학교 데이터베이스의 테이블 목록을 확인

create table student (
	name varchar(20),
    age int,
    height int,
    address varchar(50),
    tel varchar(50)
); # student 테이블 생성

desc student; # student 테이블의 구조 확인

insert into student values ('신동진', 35, 170, '경기도 안양시 만안구', '010-6438-9300');
insert into student values ('노유리', 27, 159, '서울 구로구', '010-3721-6017');
insert into student values ('권혁', 25, 174, '경남 창언시 성산구', '010-4464-7092');
insert into student values ('김도영', 28, 165, '강원도 원주시 반곡동', '010-8789-0987');
insert into student values ('유영민', 42, 167, '경기도 부천시 소사본3동', '010-3059-8059');
insert into student values ('정주비', 29, 162, '서울시 서초구 방배동', '010-5026-7714');
insert into student values ('오세화', 30, 168, '경기도 안산시 상록구', '010-8746-7747');
insert into student values ('김도환', 29, 177, '충북 청주시 방서동', '010-4154-3586');
insert into student values ('이주은', 31, 160, '서울시 관악구', '010-8007-8636');
insert into student values ('백수정', 29, 157, '경기도 고양시 일산서구', '010-2190-6865');