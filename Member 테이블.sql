use Master;
create Table Member
(
UserID varchar(30) primary key,
Password varchar(20) not null,
Name varchar(20) not null,
Phone varchar(30),
Address varchar(40),
bank varchar(30)
)
insert into Member Values('admin', '1111', '관리자', '010-1111-1111', '서울시 서초구 내곡동', '카카오뱅크 3333208720938')
insert into Member Values('hong', '1111', '홍길동', '010-2222-2222', '인천시 부평구 십정동', '국민은행 463502392817')

select * from Member

--drop table member