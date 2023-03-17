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
insert into student values ('노유리', 27, 159, '전북 전주시 완산구', '010-3721-6017');
insert into student values ('권혁', 25, 174, '경남 창원시 성산구', '010-4464-7092');
insert into student values ('김도영', 28, 165, '강원도 원주시 반곡동', '010-8789-0987');
insert into student values ('유영민', 42, 167, '경기도 부천시 소사본3동', '010-3059-8059');
insert into student values ('정주비', 29, 162, '서울시 서초구 방배동', '010-5026-7714');
insert into student values ('오세화', 30, 168, '경기도 안산시 상록구', '010-8746-7747');
insert into student values ('김도환', 29, 177, '충북 청주시 방서동', '010-4154-3586');
insert into student values ('이주은', 31, 160, '서울시 관악구', '010-8007-8636');
insert into student values ('백수정', 29, 157, '경기도 고양시 일산서구', '010-2190-6865');

# 수정은 배우진 않았는데 update를 사용해야해요. 그런데 현재는 그냥 삭제만하구 재입력할께요.alter
# 삭제는 delete를 사용합니다. 이렇게 하면, name 속성의 값이 권혁인거만 삭제될꺼에요.
# 그런데 옵션이 뭔가 적용안되서 그런건데 그거만 풀ㄲ용

select * from student;
delete from student where name='권혁';
delete from student where name='노유리';

# 이름, 키, 휴대폰 번호 출력
SELECT name, height, tel FROM student;

# 별칭을 사용해서 출력 (name -> '이름', address -> '주소', tel -> '전화번호')
SELECT name as '이름', address as '주소', tel as '전화번호' FROM student;

# 나이와 키를 곱해서 출력 (컬럼간의 데이터 정수형이라면, 산술연산(+,-,*,/)가 가능)
SELECT age * height as '나이와 키를 곱한 결과' from student;

# age와 height 컬럼을 연결연산자로 출력 파이프 기호(shift + \)) --> 오라클 DB 문법
SELECT age || height FROM student;

# MYSQL에 맞춰서 사용 --> CONCAT() 함수를 이용
SELECT CONCAT(age, height) FROM student;
# CONCAT() 응용 / 함수
SELECT name, CONCAT('의 나이는', age, '이고, 키는', height, '입니다.') as '신체정보' FROM student;

# 중복 데이터 제거 -> distinct
SELECT distinct age FROM student;

# 데이터 정렬 -> ORDER BY, 나이를 오름차순으로 정렬
SELECT * FROM student order BY age asc;

# 데이터 정렬 -> 이름을 내림차수으로 정렬 ( 한국어도 지원된다. )
SELECT name FROM student ORDER BY name desc;

# 데이터 정렬 -> 이름은 오름차순, 나이는 내림차순으로 정렬, 출력되는 컬럼은 전체 모두
SELECT * FROM student ORDER BY name asc, age desc;

# 아래 결가와 같이 출력되게 쿼리문을 구성하시오.
SELECT * FROM student ORDER BY age desc, name asc;