use master;

--drop table MMemo;
Create Table MMemo(
	
	nID int IDENTITY(1,1) primary key,
	userID nvarchar(20),
	name nvarchar(20),
	content nvarchar(max),
	nDate datetime default(getDate())
)

insert into MMemo(name, userID, content) Values ('admin','admin', '신기한 메모장');
insert into MMemo(name, userID, content) Values ('admin','admin', '우와');

select* from MMemo;