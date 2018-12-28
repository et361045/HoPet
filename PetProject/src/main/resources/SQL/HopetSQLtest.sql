CREATE DATABASE HoPet;
use HoPet;



Create TABLE member--會員資料
(	
	memberId int Identity,--會員編號流水號ID
	email varchar(30) Unique,--信箱/會員帳號
	psw  varchar(20),--密碼
	memberName nvarchar(10),--會員名稱
	address nvarchar(50),--地址* 商城必要欄位
	memberPhone char(10),--連絡電話
	memberPermission varchar(20)　default'user',--權限 管理者/遊客/會員
	point varchar(5),--扣分點
	punishDay date,--處罰時間
	checkSuccess varchar(2),--會員認證  YSE/NO
	memberPicture varbinary(MAX), --照片
	PRIMARY KEY (memberid)
)

Create TABLE VerificationCode--驗證碼
(
	memberId int NOT NULL, --會員ID
	randomverificationcode char(15) Unique,--驗證亂碼JAVA寫
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
	PRIMARY KEY (memberid)
)
Create Table TravelInformation--旅遊
(
	 TravelInformationid int Identity,--旅遊編號 
	 Travelname nvarchar(50),--景點名稱
     addr   nvarchar(80),--景點地址
     Introduction nvarchar(MAX), --景點介紹
	 Latitude varchar(max),--經緯度
	hospitalgooglemap nvarchar(max),--googlemap鑲嵌
    primary key(TravelInformationid)
)
Create Table Travelpicture--旅遊照片編號
(
TravelPictureId int Identity,--旅遊照片編號
 TravelInformationid int,--旅遊編號
 picture varbinary(MAX),--照片

 primary key(TravelPictureId),
 FOREIGN KEY (TravelInformationid) REFERENCES TravelInformation(TravelInformationid)
)


Create TABLE hospital--醫院資料
(
	hospitalId int Identity,  --醫院編號流水號
	hospitalName nvarchar(30),--醫院名稱
	hospitalAddress nvarchar(100),--醫院地址
	hospitalphone varchar(15),--醫院電話
	hospitalowner nvarchar(5),--醫院負責人
	hospitalgooglemap nvarchar(max),--googlemap鑲嵌
	Latitude varchar(max)--經緯度
	PRIMARY KEY (hospitalid)
)
Create TABLE BusinessInformation--商家資料
(
	businessId int Identity,--商家標號流水號
	PointNumber int,--評分人數
	externalname nvarchar(50),--對外名稱
	companyname nvarchar(50),--公司名稱
	idname nvarchar(20), --負責人
	businessproject nvarchar(20),--營業項目
	businessPhone varchar(15),--電話
	region nvarchar(30),--行政區
	businessAddress nvarchar(30),--地址
	businessScore decimal(2,1),--評分
	businessGooglemap nvarchar(max),--googlemap鑲嵌
	Latitude varchar(max)--經緯度
	PRIMARY KEY (businessid)
)
Create TABLE Petencyclopedia--寵物百科
(
	petencyclopediaId int Identity,--寵物百科標號流水號
	petvariety nvarchar(10),--寵物名稱	
	scientific varchar(50),--寵物學名
	petSize nvarchar(10),--寵物種類 大型犬/小型犬/中型犬
	petPicture varbinary(MAX),--寵物照片
	petData nvarchar(MAX),	--書面資料
	remarks nvarchar(MAX),--備註
	PRIMARY KEY (petencyclopediaid)
)
Create TABLE Pet--會員寵物資料
(
	petId int Identity unique,--寵物編號流水號
	petName nvarchar(30), --寵物名子
	memberid int,--會員(寵物主)編號
	petSize nvarchar(10),--寵物種類 大型犬/小型犬/中型犬
	petVariety nvarchar(20),--寵物品種
	age int,--寵物年紀
	petRemarks nvarchar(MAX),--備註	
	vaccine nvarchar(MAX),--疫苗TEXT
	Wafer nvarchar(Max),--晶片TEXT
	owner int,--有無主人
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)

Create TABLE  ProductInformation--會員拍賣商品
(
	productid int Identity,--商品標號
	memberid int,--賣家會員編號
	productName nvarchar(50),--產品名稱
	productMoney int,--金額
	pday date,--上架到期日
	PRIMARY KEY (productid),
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)

Create TABLE  Activity--活動
(
	activityid int Identity,--活動編號流水號
	Activitymemberid int unique,--活動發起人 會員編號
	ActivityName nvarchar(MAX),--活動名稱
	activities nvarchar(MAX), --活動內容
	Limit int,--限制人數
	Signup int,--報名人數
	Status nvarchar(50),--狀態
	PRIMARY KEY (activityid),
	FOREIGN KEY (Activitymemberid) REFERENCES member(memberid),  
	
)
Create Table  ActivityRegistrationForm--活動報名表
(
	activityregistrationformid int Identity,--活動報名表流水號
	participate int,--活動報名表填寫人會員id
	remarks nvarchar(MAX), --備註
	activityid int,--活動編號
	mnumber int,--參加人數
	PRIMARY KEY (activityregistrationformid),
	FOREIGN KEY (participate) REFERENCES member(memberid),
	FOREIGN KEY (activityid) REFERENCES Activity(activityid),
)



Create TABLE  Blacklist--管理者黑名單
(
	blacklistid int Identity,--黑名單編號
	memberid int,--黑名單內會員編號
	remarks nvarchar(MAX), --檢舉事項
	dayy  date,--懲處時間
	Prohibited int , -- 禁止任何功能
	PRIMARY KEY (blacklistid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	
)

Create Table Messageboard--留言板
(
	Messageboardid int Unique Identity  ,--留言板編號(第幾則貼文)
	memberid int,--留言板主會員編號
	messagetime datetime2,--發文時間
	title  nvarchar(MAX),--發文標題
	message nvarchar(MAX),--發文內容
	permission varchar(20),--瀏覽權限
	totlepoint int,--案讚人數
	PRIMARY KEY (Messageboardid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
)

Create Table Messageboardpoint--競版圖讚數
(
Competitionpointid int identity, --競版圖讚數流水號
Messageboardid int,--圖片編號
memberid int,--按讚會員

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)




Create Table Returnmessage--回留言板內容
( 
     ReturnmessageID int Identity,
	memberid int ,--回文ID
	messagetime datetime2, --回文時間
	message nvarchar(MAX),--回文內容
	Messageboardid int,--留言板編號
	point int,--案讚人數
	PRIMARY KEY (ReturnmessageID),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
)
Create Table Privatemessage--私訊
(
	Privatemessageid int Identity,--訊息編號
	message nvarchar(MAX),--訊息內容
	tomessage varchar(30),--傳給誰
	frommessage varchar(30),--誰傳
	Privatemessagetime datetime2, --訊息時間
	status  nvarchar(30),--已讀/未讀

	FOREIGN KEY (tomessage) REFERENCES member(email),
	FOREIGN KEY (frommessage) REFERENCES member(email),
	PRIMARY KEY (Privatemessageid),
)

Create Table Background--背景
(	
	Backgroundid int identity,--背景編號
	urlpattern varchar(MAX),--路徑
	memberid int,--設背景的人
	PRIMARY KEY (Backgroundid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),		
)
Create Table Competition--競版圖
(
	Competitionmapid int identity,--圖片編號
	memberid int,--發圖人會員編號
	picture varbinary(MAX),--照片
	txt nvarchar(MAX),--照片內容
	totalpoint int, --讚數
    PRIMARY KEY (Competitionmapid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),				
)
Create Table Competitionpoint--競版圖讚數
(
Competitionpointid int identity, --競版圖讚數流水號
Competitionmapid int,--圖片編號
memberid int,--按讚會員

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Competitionmapid) REFERENCES Competition(Competitionmapid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)


Create Table addFriend--好友
(
	addFriendid int identity,--好友邀請編號
	addedFriend varchar(30),--被加的人
	addFriend varchar(30),--加的人
	agree int,--同意與否
	status  nvarchar(30), -- 狀態 已處離/未處理

	FOREIGN KEY (addedFriend) REFERENCES member(email),
	FOREIGN KEY (addFriend) REFERENCES member(email),
	PRIMARY KEY (addFriendid),	
)


Create Table Shoppingcar--購物車
(
 Shoppingcarid int identity,--購物車編號
 owner int ,--購物車傭有者
 productid int,--產品編號
 money int , --總金額
 PRIMARY KEY (Shoppingcarid),
 FOREIGN KEY (owner) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
 			
)

Create Table Detail--明細
(
 DetailId int identity,--明細編號
 buyer  int ,--買家
 seller int , --賣家
 money int , --交易總金額
 productid int,--商品編號
 DetailDate date,--交易時間
 cancel varchar(10) ,--成交於否 
 PRIMARY KEY (DetailId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	

)


Create Table shoporder--訂單
(
 OrderId int identity,--訂單編號
 buyer  int ,--買家
 seller int , --賣家
 money int , --交易總金額
 productid int,--商品編號
 DetailDate date,--交易時間
 OrderStatus  nvarchar(10)--物流狀態
 PRIMARY KEY (OrderId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
)

Create Table FostercareCommission--寄養委託
(
	FostercareCommissionid int unique identity, --寄養委託編號 
	owner int , --寵物主會員編號
	txt nvarchar(max),--寄養事由
	petid int ,--寵物編號
	region nvarchar(20),--區域
	dday  int,--天數
	size nvarchar(30),--寵物大小
	Variety nvarchar(50),--寵物品種

    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
	  primary key(FostercareCommissionid)
)

Create Table FostercareForm--寄養報名表
(
	FostercareFormid int identity,--寄養報名單編號
	FostercareCommissionid int, --寄養編號 
	carer int , --應徵者
	status nvarchar(50),--狀態 (寄養中/寄養完成)
	
	primary key(FostercareFormid),
    FOREIGN KEY (FostercareCommissionid) REFERENCES FostercareCommission(FostercareCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),				
)


Create Table Fostercare--寄養
(
	Fostercareid int unique identity, --寄養編號 

	FostercareCommissionid int,--寄養委託編號
	FostercareFormid int ,--寄養報名單編號
	owner int , --寵物主會員編號
	primary key(Fostercareid),

    FOREIGN KEY (Fostercareid) REFERENCES FostercareForm(FostercareFormid),
    FOREIGN KEY (FostercareCommissionid) REFERENCES FostercareCommission(FostercareCommissionid),	
)




Create Table FosterCommission--送養委託
(
     FosterCommissionid int identity unique,  --送養委託編號
	owner int unique , --送養會員編號
	txt nvarchar(max),--送養事由
	petid int ,--寵物編號
	region nvarchar(20),--區域
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)


Create Table FosterForm--送養報名表
(	
	FosterFormid int identity,--送養報名單編號
	Fosterid int, --送養編號 
	carer int unique, --應徵者
	primary key(FosterFormid),
	FOREIGN KEY (Fosterid) REFERENCES FosterCommission(FosterCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),	
)


Create Table Foster--送養
(	
    Fosterid int unique identity, --送養編號 
    FosterCommissionid int,  --送養委託編號
	FosterFormid int ,--送養報名單編號
	owner int , --送養會員編號
	carer int , --應徵者
	primary key(Fosterid),

    FOREIGN KEY (FosterCommissionid) REFERENCES FosterCommission(FosterCommissionid),
    FOREIGN KEY (FosterFormid) REFERENCES FosterForm(FosterFormid),	
    FOREIGN KEY (owner) REFERENCES FosterCommission(owner),
    FOREIGN KEY (carer) REFERENCES FosterForm(carer),	
)

/*
Create Table FostercareCommission--寄養委託
(
	FostercareCommissionid int unique identity, --寄養委託編號 
	owner int , --寵物主會員編號
	txt nvarchar(max),--寄養事由
	petid int ,--寵物編號
	region nvarchar(20),--區域
	dday  int,--天數
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
	  primary key(FostercareCommissionid)
)


Create Table Fostercare--寄養
(
	Fostercareid int unique identity, --寄養編號 
	owner int , --寵物主會員編號
	txt nvarchar(max),--寄養事由
	petid int ,--寵物編號
	region nvarchar(20),--區域
	primary key(Fostercareid),

    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)



Create Table FosterCommission--送養委託
(
   FosterCommissionid int identity unique,  --送養委託編號
	owner int , --送養會員編號
	txt nvarchar(max),--送養事由
	petid int ,--寵物編號
	region nvarchar(20),--區域
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)

Create Table FostercareForm--寄養報名表
(
	FostercareFormid int identity,--寄養報名單編號
	Fostercareid int, --寄養編號 
	carer int , --應徵者
	primary key(FostercareFormid),
    FOREIGN KEY (Fostercareid) REFERENCES FostercareCommission(FostercareCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),				
)
Create Table FosterForm--送養報名表
(	
	FosterFormid int identity,--送養報名單編號
	Fosterid int, --送養編號 
	carer int , --應徵者
	primary key(FosterFormid),
	FOREIGN KEY (Fosterid) REFERENCES FosterCommission(FosterCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),	
)


Create Table Foster--送養
(	
    Fosterid int unique identity, --送養編號 
	owner int , --送養者編號
	txt nvarchar(max),--送養事由
	petid int ,--寵物編號
	region nvarchar(20),--區域
	primary key(Fosterid),

    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)
*/

Create Table Report--檢舉
(
	Reportid int Identity ,	--檢舉表單ID
	remarks nvarchar(MAX), --檢舉理由
	memberid int ,--檢舉人
	defendant int ,--被檢舉人
	activityid int,--檢舉活動編號
	Messageboardid int , --檢舉留言板編號
	ReturnmessageID int ,--檢舉回文編號
	status  nvarchar(100),--檢舉狀態(以處理/未處理)
	PRIMARY KEY (Reportid),
   	FOREIGN KEY (memberid) REFERENCES member(memberid),
	FOREIGN KEY (defendant) REFERENCES member(memberid),
	FOREIGN KEY (activityid) REFERENCES Activity(activityid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
	FOREIGN KEY (ReturnmessageID)REFERENCES Returnmessage( ReturnmessageID)
)