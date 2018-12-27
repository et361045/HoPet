CREATE DATABASE HoPet;
use HoPet;



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
	memberPicture varbinary(MAX), --�Ӥ�
	PRIMARY KEY (memberid)
)

Create TABLE VerificationCode--���ҽX
(
	memberId int NOT NULL, --�|��ID
	randomverificationcode char(15) Unique,--���ҶýXJAVA�g
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
	PRIMARY KEY (memberid)
)
Create Table TravelInformation--�ȹC
(
	 TravelInformationid int Identity,--�ȹC�s�� 
	 Travelname nvarchar(50),--���I�W��
     addr   nvarchar(80),--���I�a�}
     Introduction nvarchar(MAX), --���I����
	 Latitude varchar(max),--�g�n��
	hospitalgooglemap nvarchar(max),--googlemap�^�O
    primary key(TravelInformationid)
)
Create Table Travelpicture--�ȹC�Ӥ��s��
(
TravelPictureId int Identity,--�ȹC�Ӥ��s��
 TravelInformationid int,--�ȹC�s��
 picture varbinary(MAX),--�Ӥ�

 primary key(TravelPictureId),
 FOREIGN KEY (TravelInformationid) REFERENCES TravelInformation(TravelInformationid)
)


Create TABLE hospital--��|���
(
	hospitalId int Identity,  --��|�s���y����
	hospitalName nvarchar(30),--��|�W��
	hospitalAddress nvarchar(100),--��|�a�}
	hospitalphone varchar(15),--��|�q��
	hospitalowner nvarchar(5),--��|�t�d�H
	hospitalgooglemap nvarchar(max),--googlemap�^�O
	Latitude varchar(max)--�g�n��
	PRIMARY KEY (hospitalid)
)
Create TABLE BusinessInformation--�Ӯa���
(
	businessId int Identity,--�Ӯa�и��y����
	PointNumber int,--�����H��
	externalname nvarchar(50),--��~�W��
	companyname nvarchar(50),--���q�W��
	idname nvarchar(20), --�t�d�H
	businessproject nvarchar(20),--��~����
	businessPhone varchar(15),--�q��
	region nvarchar(30),--��F��
	businessAddress nvarchar(30),--�a�}
	businessScore decimal(2,1),--����
	businessGooglemap nvarchar(max),--googlemap�^�O
	Latitude varchar(max)--�g�n��
	PRIMARY KEY (businessid)
)
Create TABLE Petencyclopedia--�d���ʬ�
(
	petencyclopediaId int Identity,--�d���ʬ�и��y����
	petvariety nvarchar(10),--�d���W��	
	scientific varchar(50),--�d���ǦW
	petSize nvarchar(10),--�d������ �j����/�p����/������
	petPicture varbinary(MAX),--�d���Ӥ�
	petData nvarchar(MAX),	--�ѭ����
	remarks nvarchar(MAX),--�Ƶ�
	PRIMARY KEY (petencyclopediaid)
)
Create TABLE Pet--�|���d�����
(
	petId int Identity unique,--�d���s���y����
	petName nvarchar(30), --�d���W�l
	memberid int,--�|��(�d���D)�s��
	petSize nvarchar(10),--�d������ �j����/�p����/������
	petVariety nvarchar(20),--�d���~��
	age int,--�d���~��
	petRemarks nvarchar(MAX),--�Ƶ�	
	vaccine nvarchar(MAX),--�̭]TEXT
	Wafer nvarchar(Max),--����TEXT
	owner int,--���L�D�H
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)

Create TABLE  ProductInformation--�|�����ӫ~
(
	productid int Identity,--�ӫ~�и�
	memberid int,--��a�|���s��
	productName nvarchar(50),--���~�W��
	productMoney int,--���B
	pday date,--�W�[�����
	PRIMARY KEY (productid),
	FOREIGN KEY (memberid) REFERENCES member(memberid), 
)

Create TABLE  Activity--����
(
	activityid int Identity,--���ʽs���y����
	Activitymemberid int unique,--���ʵo�_�H �|���s��
	ActivityName nvarchar(MAX),--���ʦW��
	activities nvarchar(MAX), --���ʤ��e
	Limit int,--����H��
	Signup int,--���W�H��
	Status nvarchar(50),--���A
	PRIMARY KEY (activityid),
	FOREIGN KEY (Activitymemberid) REFERENCES member(memberid),  
	
)
Create Table  ActivityRegistrationForm--���ʳ��W��
(
	activityregistrationformid int Identity,--���ʳ��W��y����
	participate int,--���ʳ��W���g�H�|��id
	remarks nvarchar(MAX), --�Ƶ�
	activityid int,--���ʽs��
	mnumber int,--�ѥ[�H��
	PRIMARY KEY (activityregistrationformid),
	FOREIGN KEY (participate) REFERENCES member(memberid),
	FOREIGN KEY (activityid) REFERENCES Activity(activityid),
)



Create TABLE  Blacklist--�޲z�̶¦W��
(
	blacklistid int Identity,--�¦W��s��
	memberid int,--�¦W�椺�|���s��
	remarks nvarchar(MAX), --���|�ƶ�
	dayy  date,--�g�B�ɶ�
	Prohibited int , -- �T�����\��
	PRIMARY KEY (blacklistid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	
)

Create Table Messageboard--�d���O
(
	Messageboardid int Unique Identity  ,--�d���O�s��(�ĴX�h�K��)
	memberid int,--�d���O�D�|���s��
	messagetime datetime2,--�o��ɶ�
	title  nvarchar(MAX),--�o����D
	message nvarchar(MAX),--�o�夺�e
	permission varchar(20),--�s���v��
	totlepoint int,--���g�H��
	PRIMARY KEY (Messageboardid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
)

Create Table Messageboardpoint--�v�����g��
(
Competitionpointid int identity, --�v�����g�Ƭy����
Messageboardid int,--�Ϥ��s��
memberid int,--���g�|��

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)




Create Table Returnmessage--�^�d���O���e
( 
     ReturnmessageID int Identity,
	memberid int ,--�^��ID
	messagetime datetime2, --�^��ɶ�
	message nvarchar(MAX),--�^�夺�e
	Messageboardid int,--�d���O�s��
	point int,--���g�H��
	PRIMARY KEY (ReturnmessageID),
	FOREIGN KEY (memberid) REFERENCES member(memberid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
)
Create Table Privatemessage--�p�T
(
	Privatemessageid int Identity,--�T���s��
	message nvarchar(MAX),--�T�����e
	tomessage varchar(30),--�ǵ���
	frommessage varchar(30),--�ֶ�
	Privatemessagetime datetime2, --�T���ɶ�
	status  nvarchar(30),--�wŪ/��Ū

	FOREIGN KEY (tomessage) REFERENCES member(email),
	FOREIGN KEY (frommessage) REFERENCES member(email),
	PRIMARY KEY (Privatemessageid),
)

Create Table Background--�I��
(	
	Backgroundid int identity,--�I���s��
	urlpattern varchar(MAX),--���|
	memberid int,--�]�I�����H
	PRIMARY KEY (Backgroundid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),		
)
Create Table Competition--�v����
(
	Competitionmapid int identity,--�Ϥ��s��
	memberid int,--�o�ϤH�|���s��
	picture varbinary(MAX),--�Ӥ�
	txt nvarchar(MAX),--�Ӥ����e
	totalpoint int, --�g��
    PRIMARY KEY (Competitionmapid),
	FOREIGN KEY (memberid) REFERENCES member(memberid),				
)
Create Table Competitionpoint--�v�����g��
(
Competitionpointid int identity, --�v�����g�Ƭy����
Competitionmapid int,--�Ϥ��s��
memberid int,--���g�|��

PRIMARY KEY (Competitionpointid),
FOREIGN KEY (Competitionmapid) REFERENCES Competition(Competitionmapid),
FOREIGN KEY (memberid) REFERENCES member(memberid),					
)


Create Table addFriend--�n��
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


Create Table Shoppingcar--�ʪ���
(
 Shoppingcarid int identity,--�ʪ����s��
 owner int ,--�ʪ����Ħ���
 productid int,--���~�s��
 money int , --�`���B
 PRIMARY KEY (Shoppingcarid),
 FOREIGN KEY (owner) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
 			
)

Create Table Detail--����
(
 DetailId int identity,--���ӽs��
 buyer  int ,--�R�a
 seller int , --��a
 money int , --����`���B
 productid int,--�ӫ~�s��
 DetailDate date,--����ɶ�
 cancel varchar(10) ,--�����_ 
 PRIMARY KEY (DetailId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	

)


Create Table shoporder--�q��
(
 OrderId int identity,--�q��s��
 buyer  int ,--�R�a
 seller int , --��a
 money int , --����`���B
 productid int,--�ӫ~�s��
 DetailDate date,--����ɶ�
 OrderStatus  nvarchar(10)--���y���A
 PRIMARY KEY (OrderId),
 FOREIGN KEY (buyer) REFERENCES member(memberid),
 FOREIGN KEY (seller) REFERENCES member(memberid),
 FOREIGN KEY (productid) REFERENCES ProductInformation(productid),	
)

Create Table FostercareCommission--�H�i�e�U
(
	FostercareCommissionid int unique identity, --�H�i�e�U�s�� 
	owner int , --�d���D�|���s��
	txt nvarchar(max),--�H�i�ƥ�
	petid int ,--�d���s��
	region nvarchar(20),--�ϰ�
	dday  int,--�Ѽ�
	size nvarchar(30),--�d���j�p
	Variety nvarchar(50),--�d���~��

    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
	  primary key(FostercareCommissionid)
)

Create Table FostercareForm--�H�i���W��
(
	FostercareFormid int identity,--�H�i���W��s��
	FostercareCommissionid int, --�H�i�s�� 
	carer int , --���x��
	status nvarchar(50),--���A (�H�i��/�H�i����)
	
	primary key(FostercareFormid),
    FOREIGN KEY (FostercareCommissionid) REFERENCES FostercareCommission(FostercareCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),				
)


Create Table Fostercare--�H�i
(
	Fostercareid int unique identity, --�H�i�s�� 

	FostercareCommissionid int,--�H�i�e�U�s��
	FostercareFormid int ,--�H�i���W��s��
	owner int , --�d���D�|���s��
	primary key(Fostercareid),

    FOREIGN KEY (Fostercareid) REFERENCES FostercareForm(FostercareFormid),
    FOREIGN KEY (FostercareCommissionid) REFERENCES FostercareCommission(FostercareCommissionid),	
)




Create Table FosterCommission--�e�i�e�U
(
     FosterCommissionid int identity unique,  --�e�i�e�U�s��
	owner int unique , --�e�i�|���s��
	txt nvarchar(max),--�e�i�ƥ�
	petid int ,--�d���s��
	region nvarchar(20),--�ϰ�
    FOREIGN KEY (owner) REFERENCES member(memberid),
    FOREIGN KEY (petid) REFERENCES pet(petId),	
)


Create Table FosterForm--�e�i���W��
(	
	FosterFormid int identity,--�e�i���W��s��
	Fosterid int, --�e�i�s�� 
	carer int unique, --���x��
	primary key(FosterFormid),
	FOREIGN KEY (Fosterid) REFERENCES FosterCommission(FosterCommissionid),	
	FOREIGN KEY (carer) REFERENCES member(memberId),	
)


Create Table Foster--�e�i
(	
    Fosterid int unique identity, --�e�i�s�� 
    FosterCommissionid int,  --�e�i�e�U�s��
	FosterFormid int ,--�e�i���W��s��
	owner int , --�e�i�|���s��
	carer int , --���x��
	primary key(Fosterid),

    FOREIGN KEY (FosterCommissionid) REFERENCES FosterCommission(FosterCommissionid),
    FOREIGN KEY (FosterFormid) REFERENCES FosterForm(FosterFormid),	
    FOREIGN KEY (owner) REFERENCES FosterCommission(owner),
    FOREIGN KEY (carer) REFERENCES FosterForm(carer),	
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
	FOREIGN KEY (activityid) REFERENCES Activity(activityid),
	FOREIGN KEY (Messageboardid) REFERENCES Messageboard(Messageboardid),
	FOREIGN KEY (ReturnmessageID)REFERENCES Returnmessage( ReturnmessageID)
)