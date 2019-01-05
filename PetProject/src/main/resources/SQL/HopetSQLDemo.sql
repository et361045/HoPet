use HoPet
--會員資料 1號會員  管理者  memberPermission = Manager
--         2號會員  正常狀況  memberPermission =user
--         3號會員  未認證    checkSuccess = 0
--         4號會員  警告一次  point = 1
--         5號會員  黑名單    memberPermission=black
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
           ,'劉德華'
           ,'桃園縣中壢市大仁街2號'
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
 VALUES ('123@132.com', '0000', '王曉明','台北市','0966081123','0',null,'1',null);
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
           ,[memberPicture]) values('kuo228@hotmail.com','b12345678','sam','高雄市','0229313333',0,null,'0',null) 
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
VALUES ('et361045@iii.com', 'passW0rd', '流川風','新竹市','0123456789','1',null,'1',null)
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
           ,'范范'
           ,'106台北市大安區信義路四段2號'
           ,'0911234567'
           ,'0'
           ,'2020-12-20'
           ,'1'
           ,null)
GO
--驗證碼
INSERT INTO [dbo].[VerificationCode]
           ([memberId]
           ,[randomverificationcode])
     VALUES
           (3
           ,'asdascacas5464')
GO
--旅遊
INSERT INTO [dbo].[TravelInformation]
           ([Travelname]
           ,[addr]
           ,[Introduction]
           ,[Latitude]
           ,[hospitalgooglemap])
     VALUES
           ('大安森林公園'
           ,'台北市大安區新生南路二段1號'
           ,'太美了這裡'
           ,'25.0330174,121.5331264,17'
           ,null)
GO
--旅遊照片編號
INSERT INTO [dbo].[Travelpicture]
           ([TravelInformationid]
           ,[picture])
     VALUES
           (1
           ,null)
GO

--醫院資料
INSERT INTO [dbo].[hospital]
           ([hospitalName]
           ,[hospitalAddress]
           ,[hospitalphone]
           ,[hospitalowner]
           ,[hospitalgooglemap]
           ,[Latitude])
     VALUES
           ('維東尼動物醫院'
           ,'台北市大安區建國南路一段358號'
           ,'0227090123'
           ,'林佳佳'
           ,null
           ,'25.0330368,121.5331049,17')
GO

--商家資料
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
           ,'北歐寵物旅館'
           ,'北歐犬舍有限公司'
           ,'翁文倩'
           ,'寄養'
           ,'83695662'
           ,'大安區'
           ,'臺北市大安區和平東路2段20之1號'
           ,4.5
           ,'https://www.google.com.tw/maps/search/%E5%8C%97%E6%AD%90%E5%AF%B5%E7%89%A9%E6%97%85%E9%A4%A8/@25.0330368,121.5331049,17z?hl=zh-TW'
           ,'25.0331153,121.5001829,13')
GO


--寵物百科
INSERT INTO [dbo].[Petencyclopedia]
           ([petvariety]
           ,[scientific]
           ,[petSize]
           ,[petPicture]
           ,[petData]
           ,[remarks])
     VALUES
           ('土狗'
           ,'台灣犬'
           ,'中型犬'
           ,null
		   ,null
           ,'忠誠')
GO

--會員寵物資料
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
           ('黑白郎君'
           ,1
           ,'中型犬'
           ,'土狗'
           ,5
           ,'臉上一黑一白'
           ,'8合1'
           ,null
           ,1)
GO

--會員拍賣商品
INSERT INTO [dbo].[ProductInformation]
           ([memberid]
           ,[productName]
           ,[productMoney]
           ,[pday])
     VALUES
           (1
           ,'汪汪奶油餅乾棒'
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
           ,'狗飼料'
           ,500
           ,'2018/03/03')
GO

--活動
INSERT INTO [dbo].[Activity]
           ([Activitymemberid]
           ,[ActivityName]
           ,[activities]
           ,[Limit]
           ,[Signup]
           ,[Status])
     VALUES
           (1
           ,'秀出你心中的大寶貝'
           ,'2018/12/25 10.00點於大安森林公園涼亭旁，參賽者須自備200元(供餐與場地清潔費)，歡迎愛狗人士來參賽'
           ,50
           ,30
           ,'報名中')
GO
--活動報名表
INSERT INTO [dbo].[ActivityRegistrationForm]
           ([participate]
           ,[remarks]
           ,[activityid]
           ,[mnumber])
     VALUES
           (2
           ,'性情開朗 家有一小犬'
           ,1
           ,1)
GO

--管理者黑名單

INSERT INTO [dbo].[Blacklist]
           ([memberid]
           ,[remarks]
           ,[dayy]
           ,[Prohibited])
     VALUES
           (5
           ,'長太醜'
           ,'2020/12/20'
           ,1)
GO

--留言板  
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
           ,'我好醜'
           ,'我好醜'
           ,'public'
           ,50)
GO

--留言板讚數

INSERT INTO [dbo].[Messageboardpoint]
           ([Messageboardid]
           ,[memberid])
     VALUES
           (1
           ,2)
GO

--回留言板內容
INSERT INTO [dbo].[Returnmessage]
           ([memberid]
           ,[messagetime]
           ,[message]
           ,[Messageboardid]
           ,[point])
     VALUES
           (2
           ,'2018-12-31'
           ,'呵呵'
           ,'1'
           ,5)
GO

--私訊
INSERT INTO [dbo].[Privatemessage]
           ([message]
           ,[tomessage]
           ,[frommessage]
           ,[Privatemessagetime]
           ,[status])
     VALUES
           ('上課好無聊'
           ,'demo132@demo.com'
           ,'123@132.com'
           ,'20181204'
           ,'已讀')
GO

--背景
INSERT INTO [dbo].[Background]
           ([urlpattern]
           ,[memberid])
     VALUES
           ('c:/xxx/xxx/xxx'
           ,1)
GO

--競版圖
INSERT INTO [dbo].[Competition]
           ([memberid]
           ,[picture]
           ,[txt]
           ,[totalpoint])
     VALUES
           (1
           ,null
           ,'呵呵呵'
           ,5)
GO

----競版圖讚數
INSERT INTO [dbo].[Competitionpoint]
           ([Competitionmapid]
           ,[memberid])
     VALUES
           (1
           ,1)
GO

--好友
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
--購物車
INSERT INTO [dbo].[Shoppingcar]
           ([owner]
           ,[productid]
           ,[money])
     VALUES
           (2
           ,1
           ,199)	   
GO
--明細   編號1取消  [cancel]=1
--       編號2沒取消 [cancel]=0
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

--訂單
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
           ,'配送中')
GO

--寄養委託
 insert into FostercareCommission values(1,'出國',1,'taipei',5,'小型犬','doooog')
 go
 --寄養報名表
 insert into FostercareForm values(1,2,'寄養中') 
 go
 --寄養
 insert into Fostercare values(1,1,1)
 go
 
  --送養委託
  insert into FosterCommission values(1,'沒錢',1,'taipei')
  go

  --送養報名表
 insert into FosterForm values(1,2)
GO
  --送養
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
           ('約炮'
           ,1
           ,5
           ,NULL
           ,NULL
           ,NULL
           ,'以處理')
GO

--商品照片
USE [HoPet]
GO

INSERT INTO [dbo].[ProductPhoto]
           ([Productid]
           ,[Photo])
     VALUES
           (1
           ,null)
GO
--活動查巡
USE [HoPet]
GO

INSERT INTO [dbo].[joinActivity]
           ([activityid]
           ,[activityregistrationformid])
     VALUES
           (1
           ,1)
GO



