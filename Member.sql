use master;
Create Table schedule01(
	seq	int Identity(1,1)  Primary Key,
	userID	nvarchar(30)  not null,
	sDate	date not null,
	sTime	nvarchar(12)  not null,
	toDo	nvarchar(max) not null,
	hasDone	char(1)  Default('N')
)

select * from schedule01;




USE master;
CREATE TABLE board01(
	seq int IDENTITY(1,1)primary key,
	userID nvarchar(30),
	name nvarchar(50) NOT NULL,
	pwd nvarchar(50) NOT NULL,
	title nvarchar(100) NOT NULL,
	body nvarchar(max),
	ref_id int default(0),
	inner_id int default(0),
	depth int default(0),
	hit int default(0),
	deleted char(1) default('N'),
	wDate datetime,
	fName nvarchar(50),
	fSize int default(0),
	hitDown int default(0)
)

select * from board01;
