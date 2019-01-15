create dataBase HoPet

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
	memberPicture varchar(max), --照片路徑
	PRIMARY KEY (memberid)
)  --豪   -sam    --安

Create TABLE VerificationCode--驗證碼
(
	memberid int NOT NULL, --會員ID
	randomverificationcode char(15) Unique,--驗證亂碼JAVA寫
	FOREIGN KEY (memberid) REFERENCES member(memberId), 
	PRIMARY KEY (memberid)
)  --安
Create Table TravelInformation--旅遊
(
	 travelInformationid int Identity,--旅遊編號 
	 travelname nvarchar(50),--景點名稱
     addr   nvarchar(80),--景點地址
     introduction nvarchar(MAX), --景點介紹
	 latitude varchar(max),--經緯度
	hospitalgooglemap nvarchar(max),--googlemap鑲嵌
    primary key(travelInformationid)
)   --豪
Create Table Travelpicture--旅遊照片編號
(
 travelPictureId int Identity,--旅遊照片編號
 travelInformationid int,--旅遊編號
 picture varchar(max),--照片

 primary key(travelPictureId),
 FOREIGN KEY (travelInformationid) REFERENCES TravelInformation(travelInformationid)
) --豪

 
Create TABLE hospital--醫院資料
(
 hospitalId int Identity,  --醫院編號流水號
 hospitalName nvarchar(30),--醫院名稱
 hospitalAddress nvarchar(100),--醫院地址
 hospitalphone varchar(15),--醫院電話
 hospitalowner nvarchar(5),--醫院負責人
 hospitalgooglemap nvarchar(max),--googlemap鑲嵌
 longitude float,--經緯度
 latitude float,
 PRIMARY KEY (hospitalid)
)  --豪
Create TABLE BusinessInformation--商家資料
(
 businessId int Identity,--商家標號流水號
 externalname nvarchar(50),--對外名稱
 companyname nvarchar(50),--公司名稱
 idname nvarchar(20), --負責人
 businessproject nvarchar(20),--營業項目
 businessPhone varchar(15),--電話
 region nvarchar(30),--行政區
 businessAddress nvarchar(30),--地址
 businessGooglemap nvarchar(max),--googlemap鑲嵌
 longitude float,--經度
    latitude float,--緯度
 PRIMARY KEY (businessid))

CREATE TABLE [dbo].[Petencyclopedia]  (     --寵物百科
	[petencyclopediaId] [int] IDENTITY(1,1) NOT NULL,  --寵物百科標號流水號
	[petvariety] [nvarchar](500) NULL,  --寵物名稱	
	[scientific] [varchar](50) NULL,  --寵物學名
	[petSize] [nvarchar](10) NULL,  --寵物種類 大型犬/小型犬/中型犬
	[petPicture] [varchar](max) NULL,  --寵物照片
	[petData] [nvarchar](max) NULL,  --書面資料
	[remarks] [nvarchar](max) NULL,  --備註
	[Place] [nvarchar](50) NULL,   --產地
	[weight] [nvarchar](50) NULL,  -- 體重
	[height] [nvarchar](50) NULL, --身高
	[fur] [nvarchar](50) NULL,  --皮毛
	[color] [nvarchar](100) NULL,  --毛色
	[personality] [nvarchar](max) NULL,  --個性
	[feature] [nvarchar](max) NULL,  --  特徵
	[origin] [nvarchar](max) NULL,  --  起源
	[essentials] [nvarchar](max) NULL,  --飼養要領
PRIMARY KEY CLUSTERED 
(
	[petencyclopediaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Create TABLE Pet--會員寵物資料
(
	petId int Identity unique,--寵物編號流水號
	petPicture varchar(max), --照片路徑
	petName nvarchar(30), --寵物名子
	memberid int,--會員(寵物主)編號
	petSize nvarchar(10),--寵物種類 大型犬/小型犬/中型犬
	petVariety nvarchar(20),--寵物品種
	age int,--寵物年紀
	petRemarks nvarchar(MAX),--備註	
	vaccine nvarchar(MAX),--疫苗TEXT
	wafer nvarchar(Max),--晶片TEXT
	owner int,--有無主人
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)   --sam

Create TABLE  ProductInformation--會員拍賣商品
(
	productid int Identity,--商品標號
	memberid int,--賣家會員編號
	productName nvarchar(50),--產品名稱
	productMoney int,--金額
	pday date,--上架到期日
	PRIMARY KEY (productid),
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)  --安

Create TABLE  ActivityCommission--活動委託
 (
  activityid int Identity,--活動編號流水號
 activitymemberid int unique,--活動發起人 會員編號
 activityname nvarchar(MAX),--活動名稱
 activites nvarchar(MAX), --活動內容
 limit int,--限制人數
 signup int,--報名人數
 phone varchar(20),--電話
 address nvarchar(60),--活動地址
 status  nvarchar(50),--狀態
  PRIMARY KEY (activityid),
FOREIGN KEY (activitymemberid) REFERENCES member(memberid),
	
)  --豪
Create Table  ActivityForm--活動報名表
(
	activityformid int Identity,--活動報名表流水號
	participate int,--活動報名表填寫人會員id
	remarks nvarchar(MAX), --備註
	activityid int,--活動編號
	mnumber int,--參加人數
	PRIMARY KEY (activityformid),
	FOREIGN KEY (participate) REFERENCES member(memberid),
	FOREIGN KEY (activityid) REFERENCES ActivityCommission(activityid),
)  --豪

Create Table  ActivityDetail--活動參與者查詢
(
 activitydetailid int unique identity,  --活動餐與者記錄編號 流水號
 activityid     int ,  --活動編號
 activityformid int ,  --活動報名表流水號
 primary key(activitydetailid),
 FOREIGN KEY (activityid) REFERENCES ActivityCommission(activityid),
 FOREIGN KEY (activityformid) REFERENCES ActivityForm(activityformid),
)

Create Table FostercareCommission--寄養委託
(
	fostercareCommissionid int unique identity, --寄養委託編號 
	name nvarchar(10),--姓名
	variety nvarchar(50),--品種
	area nvarchar(50),--地區
	starttime date,--開始時間
	endtime date,--結束時間
	owner int , --寵物主會員編號
	reason nvarchar(max),--寄養事由
	picture varchar(max), --照片路徑
	remark nvarchar(max),--備註
	petid int ,--寵物編號
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
	  primary key(FostercareCommissionid)
)   --sam


Create Table FostercareForm--寄養報名表
(
	FostercareFormid int identity,--寄養報名單編號
	FostercareCommissionid int, --寄養編號 
	carer int , --應徵者
	status nvarchar(50),--狀態 (寄養中/寄養完成)
	job  nvarchar(50),--職業
	experience  nvarchar(max),--經歷
	pettime  nvarchar(max),--收養經歷
	primary key(FostercareFormid),
    FOREIGN KEY (FostercareCommissionid) REFERENCES FostercareCommission(FostercareCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),				
)      --sam

Create Table Fostercaredetail--寄養
(
	fostercaredetail int unique identity, --寄養編號 
	fostercareCommissionid int,--寄養委託編號
	fostercareFormid int ,--寄養報名單編號
	petid int ,--寵物編號
    owner int , --寵物主會員編號
	carer int, -- 收養人
	primary key(Fostercaredetail),
	FOREIGN KEY (petid) REFERENCES pet(petid),
    FOREIGN KEY (FostercareFormid) REFERENCES FostercareForm(FostercareFormid),
    FOREIGN KEY (FostercareCommissionid) REFERENCES FostercareCommission(FostercareCommissionid),	
	FOREIGN KEY (owner) REFERENCES member(memberId),	
    FOREIGN KEY (carer) REFERENCES member(memberId),	
)        --sam

Create Table FosterCommission--送養委託
(
    FosterCommissionid int identity unique,  --送養委託編號
	name nvarchar(10),--姓名
	variety nvarchar(50),--品種
	area nvarchar(50),--地區
	owner int unique , --送養會員編號
	reason nvarchar(max),--送養事由
	picture varchar(max), --照片路徑
	remark nvarchar(max),--備註
	petid int ,--寵物編號
	  primary key(FosterCommissionid),
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)    --sam


Create Table FosterForm--送養報名表
(	
	FosterFormid int identity,--送養報名單編號
	Fosterid int, --送養編號 
	carer int , --應徵者
	status nvarchar(50),--狀態 (寄養中/寄養完成)
	job  nvarchar(50),--職業
	experience  nvarchar(max),--經歷
	pettime  nvarchar(max),--收養經歷
	primary key(FosterFormid),
	FOREIGN KEY (Fosterid) REFERENCES FosterCommission(FosterCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),	
)   --sam


Create Table Fosterdetail--送養
(	
   Fosterdetailid int unique identity, --送養編號 
    FosterCommissionid int,  --送養委託編號
	FosterFormid int ,--送養報名單編號
	petid int ,--寵物編號
    owner int , --寵物主會員編號
	carer int, -- 收養人
	primary key(Fosterdetailid),
	FOREIGN KEY (petid) REFERENCES pet(petid),
    FOREIGN KEY (FosterCommissionid) REFERENCES FosterCommission(FosterCommissionid),
    FOREIGN KEY (FosterFormid) REFERENCES FosterForm(FosterFormid),	
    FOREIGN KEY (owner) REFERENCES member(memberID),
    FOREIGN KEY (carer) REFERENCES member(memberID),	
)   --sam




Create TABLE  Blacklist--管理者黑名單 
(
	blacklistid int Identity,--黑名單編號
	memberid int,--黑名單內會員編號
	remarks nvarchar(MAX), --檢舉事項
	dayy  date,--懲處時間
	prohibited int , -- 禁止任何功能
	PRIMARY KEY (blacklistid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	
) --安

Create Table Messageboard--留言板  --安
(
	messageboardid int Unique Identity  ,--留言板編號(第幾則貼文)
	memberid int,--留言板主會員編號
	messagetime datetime2,--發文時間
	title  nvarchar(MAX),--發文標題
	message nvarchar(MAX),--發文內容
	permission varchar(20),--瀏覽權限
	totlepoint int,--案讚人數
	PRIMARY KEY (Messageboardid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
)  --安

Create Table Messageboardpoint--留言板讚數   -安
(
competitionpointid int identity, --留言板讚數流水號
messageboardid int,--留言板編號
memberid int,--按讚會員

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)

Create Table Returnmessage--回留言板內容
( 
    returnmessageID int Identity,
	memberid int ,--回文ID
	messagetime datetime2, --回文時間
	message nvarchar(MAX),--回文內容
	messageboardid int,--留言板編號
	point int,--案讚人數
	PRIMARY KEY (ReturnmessageID),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
)   --安
Create Table Privatemessage--私訊
(
	privatemessageid int Identity,--訊息編號
	message nvarchar(MAX),--訊息內容
	tomessage varchar(30),--傳給誰
	frommessage varchar(30),--誰傳
	privatemessagetime datetime2, --訊息時間
	status  nvarchar(30),--已讀/未讀

	FOREIGN KEY (tomessage) REFERENCES member(email),
	FOREIGN KEY (frommessage) REFERENCES member(email),
	PRIMARY KEY (Privatemessageid),
)  --安

Create Table Background--背景
(	
	backgroundid int identity,--背景編號
	urlpattern varchar(MAX),--路徑
	memberid int,--設背景的人
	PRIMARY KEY (Backgroundid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),		
)   --安
Create Table Competition--競版圖
(
	competitionmapid int identity,--圖片編號
	memberid int,--發圖人會員編號
	picture varchar(max), --照片路徑
	txt nvarchar(MAX),--照片內容
	totalpoint int, --讚數
    PRIMARY KEY (Competitionmapid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),				
) --安
Create Table Competitionpoint--競版圖讚數  --安
(
competitionpointid int identity, --競版圖讚數流水號
competitionmapid int,--圖片編號
memberid int,--按讚會員

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Competitionmapid) REFERENCES Competition(Competitionmapid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)


Create Table addFriend--好友 --安
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


Create Table Shoppingcar--購物車  --安
(
 shoppingcarid int identity,--購物車編號
 owner int ,--購物車傭有者
 productid int,--產品編號
 money int , --總金額
 PRIMARY KEY (Shoppingcarid),
 FOREIGN KEY (owner) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
 			
)

Create Table Detail--明細  --安
(
 detailId int identity,--明細編號
 buyer  int ,--買家
 seller int , --賣家
 money int , --交易總金額
 productid int,--商品編號
 detailDate date,--交易時間
 cancel varchar(10) ,--成交於否 
 PRIMARY KEY (DetailId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	

)


Create Table shoporder--訂單   --安
(
 orderId int identity,--訂單編號
 buyer  int ,--買家
 seller int , --賣家
 money int , --交易總金額
 productid int,--商品編號
 detailDate date,--交易時間
 orderStatus  nvarchar(10)--物流狀態
 PRIMARY KEY (OrderId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
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
	FOREIGN KEY (activityid) REFERENCES ActivityCommission(activityid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
	FOREIGN KEY (ReturnmessageID)REFERENCES Returnmessage( ReturnmessageID)
)


Create Table ProductPhoto--商品照片

(	
   ProductPhotoid int unique identity, --商品照片編號 
	  Productid    int,  --商品編號
	picture varchar(max), --照片路徑 
	primary key(ProductPhotoid),

    FOREIGN KEY (Productid) REFERENCES ProductInformation(productid),
  
)



