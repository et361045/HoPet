--1/5

Create Table ProductPhoto--商品照片

(	
   ProductPhotoid int unique identity, --商品照片編號 
	  Productid    int,  --商品編號
	  Photo        varbinary(MAX), --商品照片       
	primary key(ProductPhotoid),

    FOREIGN KEY (Productid) REFERENCES ProductInformation(productid),
  
)


Create Table  joinActivity--活動參與者查詢
(
 joinActivityid int unique identity,  --活動餐與者記錄編號 流水號
 activityid     int ,  --活動編號
 activityregistrationformid int ,  --活動報名表流水號
 primary key(joinActivityid),
 FOREIGN KEY (activityid) REFERENCES Activity(activityid),
 FOREIGN KEY (activityregistrationformid) REFERENCES ActivityRegistrationForm(activityregistrationformid),



)





--1/7



USE [HoPet]
GO

/****** Object:  Table [dbo].[Petencyclopedia]    Script Date: 2019/1/7 下午 07:26:53 ******/
DROP TABLE [dbo].[Petencyclopedia]
GO

/****** Object:  Table [dbo].[Petencyclopedia]    Script Date: 2019/1/7 下午 07:26:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Petencyclopedia]  (     --寵物百科
	[petencyclopediaId] [int] IDENTITY(1,1) NOT NULL,  --寵物百科標號流水號
	[petvariety] [nvarchar](10) NULL,  --寵物名稱	
	[scientific] [varchar](50) NULL,  --寵物學名
	[petSize] [nvarchar](10) NULL,  --寵物種類 大型犬/小型犬/中型犬
	[petPicture] [varbinary](max) NULL,  --寵物照片
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






