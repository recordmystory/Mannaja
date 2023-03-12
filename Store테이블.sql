use master
--drop table gstore
create table gstore(
	seq int identity(1,1) primary key,
	sname nvarchar(50),
	splace nvarchar(300),
	smenu nvarchar(300),
	star nvarchar(20),
	fName nvarchar(30)
)
insert into gstore values('센터커피', '서울특별시 성동구 서울숲2길 28-11','서울숲이 보이는 루프탑 카페','4.41', '1.jpg')
insert into gstore values('라프레플루트','서울특별시 성동구 서울숲길2길 8-8 2층', '과일 요리를 맛보는 프리미엄 과일가게','4.69','2.jpg')

insert into gstore values('H라운지','서울 종로구 자하문로4길 21-9', '커피&브런치 전문점','4.35','3.jpg')
insert into gstore values('독립밀방','서울특별시 종로구 통일로12길 10-18', '콘크리트와 한옥이 조화로운 독립문 브런치 맛집','4.42','4.jpg')
insert into gstore values('피터팬1978','서울특별시 서대문구 증가로 10', '오랜 역사만큼 맛있는 연희동 빵집','4.44','5.jpg')
insert into gstore values('잼잼','서울특별시 마포구 성미산로29길 24 지하1층', '흑임자크림라떼 맛집','4.64','6.jpg')


select * from gstore



use master

create table visit(
	seq int identity(1,1) primary key,
	vid nvarchar(30),
	vname nvarchar(30),
	vtitle nvarchar(150),
	vbody nvarchar(300),
	vdate datetime default(getdate()),
	vstar nvarchar(10),
	ref_id int
)

insert into visit values('aa','홍길동', '가족들과 함께', '바람이 선선하여 루프탑에서 먹기 딱 좋았습니다.', getdate(),'4.8','1')


insert into visit values('bb','이지은', '빙수 맛있어요', '빙수도 맛있는데 케잌도 맛있었습니다.', getdate(),'4.2','2')
insert into visit values('cc','강지현', '여전히 맛있는 곳', '가게 이전하고 다시 방문했는데 뷰도 맛도 더 업그레이드 된 느낌!', getdate(),'4.5','2')
insert into visit values('dd','김현수', '망고빙수가 유명한 곳', '망고가 아낌없이 올라간 빙수가 맛있고 테라스 앞 뷰가 멋진 카페.', getdate(),'4.7','2')

insert into visit values('cc','강지현', '인테리어가 멋있습니다', '음식은 그저 그랬는데 인테리어는 정말 이쁩니다.', getdate(),'3.8','3')
insert into visit values('ee','우성연', '아이들과 같이 가기 좋은 곳', '후기가 좋길래 아이들과 함께 갔는데 성공! 음식도 맛있고 매장도 넓음', getdate(),'4.6','3')
insert into visit values('ff','임서율', '테라스에서 먹는걸 추천', '날씨 좋은 날 테라스에서 브런치 먹기에 너무 좋은 곳', getdate(),'4.2','3')

insert into visit values('bb','이지은', '매번 맛있게 먹고 갑니다', '친구들과도 자주 오고 가족들과도 왔었는데 항상 칭찬이 자자합니다 ㅎㅎ', getdate(),'4.8','4')
insert into visit values('gg','김민석', '자주 오고싶어지는 곳', '직원분들도 친절하시고 음식이 빨리 나와서 만족했습니다', getdate(),'4.3','4')

insert into visit values('hh','고지한', '가장 좋아하는 베이커리', '마포구에 올 때마다 들립니다, 팥 카스테라가 가장 맛있어요!', getdate(),'4.9','5')


insert into visit values('ii','김연아', '흑임자크림라떼 먹으러', '흑임자 라떼 먹으러 갔는데 크림 떡볶이도 맛있었어요.', getdate(),'4.5','6')
insert into visit values('kk','서지연', '파스타 완전 맛있음', '바질페스토파스타 너무 맛있어서 또 올 것 같아요.', getdate(),'4.6','6')


select * from visit
