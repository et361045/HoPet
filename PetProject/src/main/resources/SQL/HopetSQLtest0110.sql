create dataBase HoPet

Create TABLE member--�|�����
(	
	memberId int Identity,--�|���s���y����ID
	email varchar(30) Unique,--�H�c/�|���b��
	psw  varchar(20),--�K�X
	memberName nvarchar(10),--�|���W��
	address nvarchar(50),--�a�}* �ӫ����n���
	memberPhone char(10),--�s���q��
	memberPermission varchar(20)�@default'user',--�v�� �޲z��/�C��/�|��
	point varchar(5),--�����I
	punishDay date,--�B�@�ɶ�
	checkSuccess varchar(2),--�|���{��  YSE/NO
	memberPicture varchar(max), --�Ӥ����|
	PRIMARY KEY (memberid)
)  --��   -sam    --�w

Create TABLE VerificationCode--���ҽX
(
	memberid int NOT NULL, --�|��ID
	randomverificationcode char(15) Unique,--���ҶýXJAVA�g
	FOREIGN KEY (memberid) REFERENCES member(memberId), 
	PRIMARY KEY (memberid)
)  --�w
Create Table TravelInformation--�ȹC
(
	 travelInformationid int Identity,--�ȹC�s�� 
	 travelname nvarchar(50),--���I�W��
     addr   nvarchar(80),--���I�a�}
     introduction nvarchar(MAX), --���I����
	 latitude varchar(max),--�g�n��
	hospitalgooglemap nvarchar(max),--googlemap�^�O
    primary key(travelInformationid)
)   --��
Create Table Travelpicture--�ȹC�Ӥ��s��
(
 travelPictureId int Identity,--�ȹC�Ӥ��s��
 travelInformationid int,--�ȹC�s��
 picture varchar(max),--�Ӥ�

 primary key(travelPictureId),
 FOREIGN KEY (travelInformationid) REFERENCES TravelInformation(travelInformationid)
) --��

 
CREATE TABLE [dbo].[hospital](
	[hospitalId] [int] IDENTITY(1,1) NOT NULL,
	[hospitalName] [nvarchar](30) NULL,
	[hospitalAddress] [nvarchar](100) NULL,
	[hospitalphone] [varchar](15) NULL,
	[hospitalowner] [nvarchar](5) NULL,
	[hospitalgooglemap] [nvarchar](max) NULL,
	[longitude] [float] NULL,
	[latitude] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[hospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
Create TABLE BusinessInformation--�Ӯa���
(
 businessId int Identity,--�Ӯa�и��y����
 externalname nvarchar(50),--��~�W��
 companyname nvarchar(50),--���q�W��
 idname nvarchar(20), --�t�d�H
 businessproject nvarchar(20),--��~����
 businessPhone varchar(15),--�q��
 region nvarchar(30),--��F��
 businessAddress nvarchar(30),--�a�}
 businessGooglemap nvarchar(max),--googlemap�^�O
 longitude float,--�g��
    latitude float,--�n��
 PRIMARY KEY (businessid))
 go

CREATE TABLE [dbo].[Petencyclopedia]  (     --�d���ʬ�
	[petencyclopediaId] [int] IDENTITY(1,1) NOT NULL,  --�d���ʬ�и��y����
	[petvariety] [nvarchar](500) NULL,  --�d���W��	
	[scientific] [varchar](50) NULL,  --�d���ǦW
	[petSize] [nvarchar](10) NULL,  --�d������ �j����/�p����/������
	[petPicture] [varchar](max) NULL,  --�d���Ӥ�
	[petData] [nvarchar](max) NULL,  --�ѭ����
	[remarks] [nvarchar](max) NULL,  --�Ƶ�
	[Place] [nvarchar](50) NULL,   --���a
	[weight] [nvarchar](50) NULL,  -- �魫
	[height] [nvarchar](50) NULL, --����
	[fur] [nvarchar](50) NULL,  --�֤�
	[color] [nvarchar](100) NULL,  --���
	[personality] [nvarchar](max) NULL,  --�ө�
	[feature] [nvarchar](max) NULL,  --  �S�x
	[origin] [nvarchar](max) NULL,  --  �_��
	[essentials] [nvarchar](max) NULL,  --�}�i�n��
PRIMARY KEY CLUSTERED 
(
	[petencyclopediaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

Create TABLE Pet--�|���d�����
(
	petId int Identity unique,--�d���s���y����
	petPicture varchar(max), --�Ӥ����|
	petName nvarchar(30), --�d���W�l
	memberid int,--�|��(�d���D)�s��
	petSize nvarchar(10),--�d������ �j����/�p����/������
	petVariety nvarchar(20),--�d���~��
	age int,--�d���~��
	petRemarks nvarchar(MAX),--�Ƶ�	
	vaccine nvarchar(MAX),--�̭]TEXT
	wafer nvarchar(Max),--����TEXT
	owner int,--���L�D�H
	yesornofoster int default 0,--���L�e�i
	yesornofostercare int  default 0,--���L�H�i
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)   --sam
go
Create TABLE  ProductInformation--�|�����ӫ~
(
	productid int Identity,--�ӫ~�и�
	memberid int,--��a�|���s��
	productName nvarchar(50),--���~�W��
	productMoney int,--���B
	pday date,--�W�[�����
	PRIMARY KEY (productid),
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)  --�w
go
Create TABLE  ActivityCommission--���ʩe�U
 (
  activityid int Identity,--���ʽs���y����
 activitymemberid int ,--���ʵo�_�H �|���s��
 activityname nvarchar(MAX),--���ʦW��
 activites nvarchar(MAX), --���ʤ��e
 limit int,--����H��
 signup int,--���W�H��
 phone varchar(20),--�q��
 address nvarchar(60),--���ʦa�}
 status  nvarchar(50),--���A
  PRIMARY KEY (activityid),
FOREIGN KEY (activitymemberid) REFERENCES member(memberid),
	
)  --��
go
Create Table  ActivityForm--���ʳ��W��
(
	activityformid int Identity,--���ʳ��W��y����
	participate int,--���ʳ��W���g�H�|��id
	remarks nvarchar(MAX), --�Ƶ�
	activityid int,--���ʽs��
	mnumber int,--�ѥ[�H��
	PRIMARY KEY (activityformid),
	FOREIGN KEY (participate) REFERENCES member(memberid),
	FOREIGN KEY (activityid) REFERENCES ActivityCommission(activityid),
)  --��
go
Create Table  ActivityDetail--���ʰѻP�̬d��
(
 activitydetailid int unique identity,  --�����\�P�̰O���s�� �y����
 activityid     int ,  --���ʽs��
 activityformid int ,  --���ʳ��W��y����
 primary key(activitydetailid),
 FOREIGN KEY (activityid) REFERENCES ActivityCommission(activityid),
 FOREIGN KEY (activityformid) REFERENCES ActivityForm(activityformid),
)

go

CREATE TABLE [dbo].[FostercareCommission](
	[fostercareCommissionid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](10) NULL,
	[variety] [nvarchar](50) NULL,
	[area] [nvarchar](50) NULL,
	[starttime] [date] NULL,
	[endtime] [date] NULL,
	[owner] [int] NULL,
	[reason] [nvarchar](max) NULL,
	[picture] [varchar](max) NULL,
	[remark] [nvarchar](max) NULL,
	[petid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[fostercareCommissionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[fostercareCommissionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[FostercareCommission]  WITH CHECK ADD FOREIGN KEY([owner])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[FostercareCommission]  WITH CHECK ADD FOREIGN KEY([petid])
REFERENCES [dbo].[Pet] ([petId])
GO

CREATE TABLE [dbo].[FostercareForm](
	[FostercareFormid] [int] IDENTITY(1,1) NOT NULL,
	[FostercareCommissionid] [int] NULL,
	[carer] [int] NULL,
	[status] [nvarchar](50) NULL,
	[job] [nvarchar](50) NULL,
	[experience] [nvarchar](max) NULL,
	[pettime] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FostercareFormid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[FostercareForm]  WITH CHECK ADD FOREIGN KEY([carer])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[FostercareForm]  WITH CHECK ADD FOREIGN KEY([FostercareCommissionid])
REFERENCES [dbo].[FostercareCommission] ([fostercareCommissionid])
GO



CREATE TABLE [dbo].[Fostercaredetail](
	[fostercaredetail] [int] IDENTITY(1,1) NOT NULL,
	[fostercareCommissionid] [int] NULL,
	[fostercareFormid] [int] NULL,
	[petid] [int] NULL,
	[owner] [int] NULL,
	[carer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[fostercaredetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[fostercaredetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fostercaredetail]  WITH CHECK ADD FOREIGN KEY([carer])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[Fostercaredetail]  WITH CHECK ADD FOREIGN KEY([fostercareFormid])
REFERENCES [dbo].[FostercareForm] ([FostercareFormid])
GO

ALTER TABLE [dbo].[Fostercaredetail]  WITH CHECK ADD FOREIGN KEY([fostercareCommissionid])
REFERENCES [dbo].[FostercareCommission] ([fostercareCommissionid])
GO

ALTER TABLE [dbo].[Fostercaredetail]  WITH CHECK ADD FOREIGN KEY([owner])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[Fostercaredetail]  WITH CHECK ADD FOREIGN KEY([petid])
REFERENCES [dbo].[Pet] ([petId])
GO




CREATE TABLE [dbo].[FosterCommission](
	[FosterCommissionid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](10) NULL,
	[petname] [nvarchar](50) NULL,
	[variety] [nvarchar](50) NULL,
	[area] [nvarchar](50) NULL,
	[owner] [int] NULL,
	[reason] [nvarchar](max) NULL,
	[picture] [varchar](max) NULL,
	[remark] [nvarchar](max) NULL,
	[petid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FosterCommissionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[FosterCommissionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[FosterCommission]  WITH CHECK ADD FOREIGN KEY([owner])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[FosterCommission]  WITH CHECK ADD FOREIGN KEY([petid])
REFERENCES [dbo].[Pet] ([petId])
GO

 CREATE TABLE [dbo].[FosterForm](
	[FosterFormid] [int] IDENTITY(1,1) NOT NULL,
	[Fosterid] [int] NULL,
	[owner] [int] NULL,
	[carer] [int] NULL,
	[carername] [nvarchar](50) NULL,
	[petname] [nvarchar](50) NULL,
	[petid] [int] NULL,
	[status] [nvarchar](50) NULL,
	[age] [nvarchar](50) NULL,
	[job] [nvarchar](max) NULL,
	[salary] [nvarchar](50) NULL,
	[experience] [nvarchar](max) NULL,
	[pettime] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FosterFormid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[FosterForm]  WITH CHECK ADD FOREIGN KEY([carer])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[FosterForm]  WITH CHECK ADD FOREIGN KEY([Fosterid])
REFERENCES [dbo].[FosterCommission] ([FosterCommissionid])
GO


CREATE TABLE [dbo].[Fosterdetail](
	[Fosterdetailid] [int] IDENTITY(1,1) NOT NULL,
	[petid] [int] NULL,
	[owner] [int] NULL,
	[carer] [int] NULL,
	[petname] [nvarchar](50) NULL,
	[ownername] [nvarchar](50) NULL,
	[carername] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Fosterdetailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Fosterdetailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fosterdetail]  WITH CHECK ADD FOREIGN KEY([carer])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[Fosterdetail]  WITH CHECK ADD FOREIGN KEY([owner])
REFERENCES [dbo].[member] ([memberId])
GO

ALTER TABLE [dbo].[Fosterdetail]  WITH CHECK ADD FOREIGN KEY([petid])
REFERENCES [dbo].[Pet] ([petId])
GO


Create TABLE  Blacklist--�޲z�̶¦W�� 
(
	blacklistid int Identity,--�¦W��s��
	memberid int,--�¦W�椺�|���s��
	remarks nvarchar(MAX), --���|�ƶ�
	dayy  date,--�g�B�ɶ�
	prohibited int , -- �T�����\��
	PRIMARY KEY (blacklistid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	
) --�w

Create Table Messageboard--�d���O  --�w
(
	messageboardid int Unique Identity  ,--�d���O�s��(�ĴX�h�K��)
	memberid int,--�d���O�D�|���s��
	messagetime datetime2,--�o��ɶ�
	title  nvarchar(MAX),--�o����D
	message nvarchar(MAX),--�o�夺�e
	permission varchar(20) default'public' ,--�s���v��
	totlepoint int,--���g�H��
	PRIMARY KEY (Messageboardid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
)  --�w

Create Table Messageboardpoint--�d���O�g��   -�w
(
competitionpointid int identity, --�d���O�g�Ƭy����
messageboardid int,--�d���O�s��
memberid int,--���g�|��

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)


create Table  Messageboardpicture (
Messageboardpictureid  int Identity,--�d���O�Ӥ��y����
messageboardid  int  ,--�d���O�s��(�ĴX�h�K��)
picture    varchar(max),--�Ӥ����|
	PRIMARY KEY (Messageboardpictureid),
	FOREIGN KEY (messageboardid) REFERENCES Messageboard(messageboardid),
)

Create Table Returnmessage--�^�d���O���e
( 
    returnmessageID int Identity,
	memberid int ,--�^��ID
	messagetime datetime2, --�^��ɶ�
	message nvarchar(MAX),--�^�夺�e
	messageboardid int,--�d���O�s��
	point int,--���g�H��
	PRIMARY KEY (ReturnmessageID),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
)   --�w
Create Table Privatemessage--�p�T
(
	privatemessageid int Identity,--�T���s��
	message nvarchar(MAX),--�T�����e
	tomessage varchar(30),--�ǵ���
	frommessage varchar(30),--�ֶ�
	privatemessagetime datetime2, --�T���ɶ�
	status  nvarchar(30),--�wŪ/��Ū

	FOREIGN KEY (tomessage) REFERENCES member(email),
	FOREIGN KEY (frommessage) REFERENCES member(email),
	PRIMARY KEY (Privatemessageid),
)  --�w

Create Table Background--�I��
(	
	backgroundid int identity,--�I���s��
	urlpattern varchar(MAX),--���|
	memberid int,--�]�I�����H
	PRIMARY KEY (Backgroundid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),		
)   --�w
Create Table Competition--�v����
(
	competitionmapid int identity,--�Ϥ��s��
	memberid int,--�o�ϤH�|���s��
	picture varchar(max), --�Ӥ����|
	txt nvarchar(MAX),--�Ӥ����e
	totalpoint int, --�g��
    PRIMARY KEY (Competitionmapid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),				
) --�w
Create Table Competitionpoint--�v�����g��  --�w
(
competitionpointid int identity, --�v�����g�Ƭy����
competitionmapid int,--�Ϥ��s��
memberid int,--���g�|��

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Competitionmapid) REFERENCES Competition(Competitionmapid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)


Create Table addFriend--�n�� --�w
(
	addFriendid int identity,--�n���ܽнs��
	addedFriend varchar(30),--�Q�[���H
	addFriend varchar(30),--�[���H
	agree int,--�P�N�P�_
	status  nvarchar(30), -- ���A �w�B��/���B�z

	FOREIGN KEY (addedFriend) REFERENCES member(email),
	FOREIGN KEY (addFriend) REFERENCES member(email),
	PRIMARY KEY (addFriendid),	
)


Create Table Shoppingcar--�ʪ���  --�w
(
 shoppingcarid int identity,--�ʪ����s��
 owner int ,--�ʪ����Ħ���
 productid int,--���~�s��
 money int , --�`���B
 PRIMARY KEY (Shoppingcarid),
 FOREIGN KEY (owner) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
 			
)

Create Table Detail--����  --�w
(
 detailId int identity,--���ӽs��
 buyer  int ,--�R�a
 seller int , --��a
 money int , --����`���B
 productid int,--�ӫ~�s��
 detailDate date,--����ɶ�
 cancel varchar(10) ,--�����_ 
 PRIMARY KEY (DetailId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	

)


Create Table shoporder--�q��   --�w
(
 orderId int identity,--�q��s��
 buyer  int ,--�R�a
 seller int , --��a
 money int , --����`���B
 productid int,--�ӫ~�s��
 detailDate date,--����ɶ�
 orderStatus  nvarchar(10)--���y���A
 PRIMARY KEY (OrderId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
)









/*
Create Table FostercareCommission--�H�i�e�U
(
	FostercareCommissionid int unique identity, --�H�i�e�U�s�� 
	owner int , --�d���D�|���s��
	txt nvarchar(max),--�H�i�ƥ�
	petid int ,--�d���s��
	region nvarchar(20),--�ϰ�
	dday  int,--�Ѽ�
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
	  primary key(FostercareCommissionid)
)


Create Table Fostercare--�H�i
(
	Fostercareid int unique identity, --�H�i�s�� 
	owner int , --�d���D�|���s��
	txt nvarchar(max),--�H�i�ƥ�
	petid int ,--�d���s��
	region nvarchar(20),--�ϰ�
	primary key(Fostercareid),

    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)



Create Table FosterCommission--�e�i�e�U
(
   FosterCommissionid int identity unique,  --�e�i�e�U�s��
	owner int , --�e�i�|���s��
	txt nvarchar(max),--�e�i�ƥ�
	petid int ,--�d���s��
	region nvarchar(20),--�ϰ�
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)

Create Table FostercareForm--�H�i���W��
(
	FostercareFormid int identity,--�H�i���W��s��
	Fostercareid int, --�H�i�s�� 
	carer int , --���x��
	primary key(FostercareFormid),
    FOREIGN KEY (Fostercareid) REFERENCES FostercareCommission(FostercareCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),				
)
Create Table FosterForm--�e�i���W��
(	
	FosterFormid int identity,--�e�i���W��s��
	Fosterid int, --�e�i�s�� 
	carer int , --���x��
	primary key(FosterFormid),
	FOREIGN KEY (Fosterid) REFERENCES FosterCommission(FosterCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),	
)


Create Table Foster--�e�i
(	
    Fosterid int unique identity, --�e�i�s�� 
	owner int , --�e�i�̽s��
	txt nvarchar(max),--�e�i�ƥ�
	petid int ,--�d���s��
	region nvarchar(20),--�ϰ�
	primary key(Fosterid),

    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)
*/

Create Table Report--���|
(
	Reportid int Identity ,	--���|���ID
	remarks nvarchar(MAX), --���|�z��
	memberid int ,--���|�H
	defendant int ,--�Q���|�H
	activityid int,--���|���ʽs��
	Messageboardid int , --���|�d���O�s��
	ReturnmessageID int ,--���|�^��s��
	status  nvarchar(100),--���|���A(�H�B�z/���B�z)
	PRIMARY KEY (Reportid),
   	FOREIGN KEY (memberid) REFERENCES member(memberid),
	FOREIGN KEY (defendant) REFERENCES member(memberid),
	FOREIGN KEY (activityid) REFERENCES ActivityCommission(activityid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
	FOREIGN KEY (ReturnmessageID)REFERENCES Returnmessage( ReturnmessageID)
)


Create Table ProductPhoto--�ӫ~�Ӥ�

(	
   ProductPhotoid int unique identity, --�ӫ~�Ӥ��s�� 
	  Productid    int,  --�ӫ~�s��
	picture varchar(max), --�Ӥ����| 
	primary key(ProductPhotoid),

    FOREIGN KEY (Productid) REFERENCES ProductInformation(productid),
  
)



