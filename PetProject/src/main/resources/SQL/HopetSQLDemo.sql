use HoPet
--�|����� 1���|��  �޲z��  memberPermission = Manager
--         2���|��  ���`���p  memberPermission =user
--         3���|��  ���{��    checkSuccess = 0
--         4���|��  ĵ�i�@��  point = 1
--         5���|��  �¦W��    memberPermission=black
INSERT INTO [dbo].[member]
           ([email]
           ,[psw]
           ,[memberName]
           ,[address]
           ,[memberPhone]
           ,[memberPermission]
           ,[point]
           ,[punishDay]
           ,[checkSuccess]
           ,[memberPicture])
     VALUES
           ('demo132@demo.com'
           ,'demp'
           ,'�B�w��'
           ,'��鿤���c���j����2��'
           ,'0321121276'
           ,'Manager'
           ,'0'
           ,null
           ,'1'
           ,null)
GO
INSERT INTO [dbo].[member]
           ([email]
           ,[psw]
           ,[memberName]
           ,[address]
           ,[memberPhone]
           ,[point]
           ,[punishDay]
           ,[checkSuccess]
           ,[memberPicture])
 VALUES ('123@132.com', '0000', '�����','�x�_��','0966081123','0',null,'1',null);
 go

INSERT INTO [dbo].[member]
           ([email]
           ,[psw]
           ,[memberName]
           ,[address]
           ,[memberPhone]
           ,[point]
           ,[punishDay]
           ,[checkSuccess]
           ,[memberPicture]) values('kuo228@hotmail.com','b12345678','sam','������','0229313333',0,null,'0',null) 
		   go

INSERT INTO [dbo].[member]
           ([email]
           ,[psw]
           ,[memberName]
           ,[address]
           ,[memberPhone]
           ,[point]
           ,[punishDay]
           ,[checkSuccess]
           ,[memberPicture])
VALUES ('et361045@iii.com', 'passW0rd', '�y�t��','�s�˥�','0123456789','1',null,'1',null)
go

INSERT INTO [dbo].[member]
           ([email]
           ,[psw]
           ,[memberName]
           ,[address]
           ,[memberPhone]
           ,[point]
           ,[punishDay]
           ,[checkSuccess]
           ,[memberPicture])
     VALUES
           ('eeit10413@gmail.com'
           ,'123456789'
           ,'�S�S'
           ,'106�x�_���j�w�ϫH�q���|�q2��'
           ,'0911234567'
           ,'0'
           ,'2020-12-20'
           ,'1'
           ,null)
GO
--���ҽX
INSERT INTO [dbo].[VerificationCode]
           ([memberId]
           ,[randomverificationcode])
     VALUES
           (3
           ,'asdascacas5464')
GO
--�ȹC
INSERT INTO [dbo].[TravelInformation]
           ([Travelname]
           ,[addr]
           ,[Introduction]
           ,[Latitude]
           ,[hospitalgooglemap])
     VALUES
           ('�j�w�˪L����'
           ,'�x�_���j�w�Ϸs�ͫn���G�q1��'
           ,'�Ӭ��F�o��'
           ,'25.0330174,121.5331264,17'
           ,null)
GO
--�ȹC�Ӥ��s��
INSERT INTO [dbo].[Travelpicture]
           ([TravelInformationid]
           ,[picture])
     VALUES
           (1
           ,null)
GO

--��|���
INSERT INTO [dbo].[hospital]
           ([hospitalName]
           ,[hospitalAddress]
           ,[hospitalphone]
           ,[hospitalowner]
           ,[hospitalgooglemap]
           ,[Latitude])
     VALUES
           ('���F���ʪ���|'
           ,'�x�_���j�w�ϫذ�n���@�q358��'
           ,'0227090123'
           ,'�L�Ψ�'
           ,null
           ,'25.0330368,121.5331049,17')
GO

--�Ӯa���
INSERT INTO [dbo].[BusinessInformation]
           ([PointNumber]
           ,[externalname]
           ,[companyname]
           ,[idname]
           ,[businessproject]
           ,[businessPhone]
           ,[region]
           ,[businessAddress]
           ,[businessScore]
           ,[businessGooglemap]
           ,[Latitude])
     VALUES
           (10
           ,'�_���d�����]'
           ,'�_�ڤ��٦������q'
           ,'�Τ��'
           ,'�H�i'
           ,'83695662'
           ,'�j�w��'
           ,'�O�_���j�w�ϩM���F��2�q20��1��'
           ,4.5
           ,'https://www.google.com.tw/maps/search/%E5%8C%97%E6%AD%90%E5%AF%B5%E7%89%A9%E6%97%85%E9%A4%A8/@25.0330368,121.5331049,17z?hl=zh-TW'
           ,'25.0331153,121.5001829,13')
GO


--�d���ʬ�
INSERT INTO [dbo].[Petencyclopedia]
           ([petvariety]
           ,[scientific]
           ,[petSize]
           ,[petPicture]
           ,[petData]
           ,[remarks])
     VALUES
           ('�g��'
           ,'�x�W��'
           ,'������'
           ,null
		   ,null
           ,'����')
GO

--�|���d�����
INSERT INTO [dbo].[Pet]
           ([petName]
           ,[memberid]
           ,[petSize]
           ,[petVariety]
           ,[age]
           ,[petRemarks]
           ,[vaccine]
           ,[Wafer]
           ,[owner])
     VALUES
           ('�¥խ��g'
           ,1
           ,'������'
           ,'�g��'
           ,5
           ,'�y�W�@�¤@��'
           ,'8�X1'
           ,null
           ,1)
GO

--�|�����ӫ~
INSERT INTO [dbo].[ProductInformation]
           ([memberid]
           ,[productName]
           ,[productMoney]
           ,[pday])
     VALUES
           (1
           ,'�L�L���o�氮��'
           ,199
           ,'2019-01-04')
GO

INSERT INTO [dbo].[ProductInformation]
           ([memberid]
           ,[productName]
           ,[productMoney]
           ,[pday])
     VALUES
           (1
           ,'���}��'
           ,500
           ,'2018/03/03')
GO

--����
INSERT INTO [dbo].[Activity]
           ([Activitymemberid]
           ,[ActivityName]
           ,[activities]
           ,[Limit]
           ,[Signup]
           ,[Status])
     VALUES
           (1
           ,'�q�X�A�ߤ����j�_��'
           ,'2018/12/25 10.00�I��j�w�˪L����D�F�ǡA���ɪ̶��۳�200��(���\�P���a�M��O)�A�w��R���H�h�Ӱ���'
           ,50
           ,30
           ,'���W��')
GO
--���ʳ��W��
INSERT INTO [dbo].[ActivityRegistrationForm]
           ([participate]
           ,[remarks]
           ,[activityid]
           ,[mnumber])
     VALUES
           (2
           ,'�ʱ��}�� �a���@�p��'
           ,1
           ,1)
GO

--�޲z�̶¦W��

INSERT INTO [dbo].[Blacklist]
           ([memberid]
           ,[remarks]
           ,[dayy]
           ,[Prohibited])
     VALUES
           (5
           ,'������'
           ,'2020/12/20'
           ,1)
GO

--�d���O  
INSERT INTO [dbo].[Messageboard]
           ([memberid]
           ,[messagetime]
           ,[title]
           ,[message]
           ,[permission]
           ,[totlepoint])
     VALUES
           (1
           ,'2018-12-21'
           ,'�ڦn��'
           ,'�ڦn��'
           ,'public'
           ,50)
GO

--�d���O�g��

INSERT INTO [dbo].[Messageboardpoint]
           ([Messageboardid]
           ,[memberid])
     VALUES
           (1
           ,2)
GO

--�^�d���O���e
INSERT INTO [dbo].[Returnmessage]
           ([memberid]
           ,[messagetime]
           ,[message]
           ,[Messageboardid]
           ,[point])
     VALUES
           (2
           ,'2018-12-31'
           ,'����'
           ,'1'
           ,5)
GO

--�p�T
INSERT INTO [dbo].[Privatemessage]
           ([message]
           ,[tomessage]
           ,[frommessage]
           ,[Privatemessagetime]
           ,[status])
     VALUES
           ('�W�Ҧn�L��'
           ,'demo132@demo.com'
           ,'123@132.com'
           ,'20181204'
           ,'�wŪ')
GO

--�I��
INSERT INTO [dbo].[Background]
           ([urlpattern]
           ,[memberid])
     VALUES
           ('c:/xxx/xxx/xxx'
           ,1)
GO

--�v����
INSERT INTO [dbo].[Competition]
           ([memberid]
           ,[picture]
           ,[txt]
           ,[totalpoint])
     VALUES
           (1
           ,null
           ,'������'
           ,5)
GO

----�v�����g��
INSERT INTO [dbo].[Competitionpoint]
           ([Competitionmapid]
           ,[memberid])
     VALUES
           (1
           ,1)
GO

--�n��
INSERT INTO [dbo].[addFriend]
           ([addedFriend]
           ,[addFriend]
           ,[agree]
           ,[status])
     VALUES
           ('demo132@demo.com'
           ,'123@132.com'
           ,1
           ,1)
GO
--�ʪ���
INSERT INTO [dbo].[Shoppingcar]
           ([owner]
           ,[productid]
           ,[money])
     VALUES
           (2
           ,1
           ,199)	   
GO
--����   �s��1����  [cancel]=1
--       �s��2�S���� [cancel]=0
INSERT INTO [dbo].[Detail]
           ([buyer]
           ,[seller]
           ,[money]
           ,[productid]
           ,[DetailDate]
           ,[cancel])
     VALUES
           (1
           ,2
           ,500
           ,2
           ,'2018-12-24'
           ,1)
GO
INSERT INTO [dbo].[Detail]
           ([buyer]
           ,[seller]
           ,[money]
           ,[productid]
           ,[DetailDate]
           ,[cancel])
     VALUES
           (1
           ,2
           ,500
           ,2
           ,'2018-12-30'
           ,0)
GO

--�q��
INSERT INTO [dbo].[shoporder]
           ([buyer]
           ,[seller]
           ,[money]
           ,[productid]
           ,[DetailDate]
           ,[OrderStatus])
     VALUES
           (1
           ,2
           ,500
           ,2
           ,'2018-12-30'
           ,'�t�e��')
GO

--�H�i�e�U
 insert into FostercareCommission values(1,'�X��',1,'taipei',5,'�p����','doooog')
 go
 --�H�i���W��
 insert into FostercareForm values(1,2,'�H�i��') 
 go
 --�H�i
 insert into Fostercare values(1,1,1)
 go
 
  --�e�i�e�U
  insert into FosterCommission values(1,'�S��',1,'taipei')
  go

  --�e�i���W��
 insert into FosterForm values(1,2)
GO
  --�e�i
USE [HoPet]


INSERT INTO [dbo].[Foster]
           ([FosterCommissionid]
           ,[FosterFormid]
           ,[owner]
           ,[carer])
     VALUES
           (1
           ,1
           ,1
           ,2)
GO



  --Report

  INSERT INTO [dbo].[Report]
           ([remarks]
           ,[memberid]
           ,[defendant]
           ,[activityid]
           ,[Messageboardid]
           ,[ReturnmessageID]
           ,[status])
     VALUES
           ('����'
           ,1
           ,5
           ,NULL
           ,NULL
           ,NULL
           ,'�H�B�z')
GO

--�ӫ~�Ӥ�
USE [HoPet]
GO

INSERT INTO [dbo].[ProductPhoto]
           ([Productid]
           ,[Photo])
     VALUES
           (1
           ,null)
GO
--���ʬd��
USE [HoPet]
GO

INSERT INTO [dbo].[joinActivity]
           ([activityid]
           ,[activityregistrationformid])
     VALUES
           (1
           ,1)
GO



