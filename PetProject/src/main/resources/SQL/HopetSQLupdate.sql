--1/5

Create Table ProductPhoto--�ӫ~�Ӥ�

(	
   ProductPhotoid int unique identity, --�ӫ~�Ӥ��s�� 
	  Productid    int,  --�ӫ~�s��
	  Photo        varbinary(MAX), --�ӫ~�Ӥ�       
	primary key(ProductPhotoid),

    FOREIGN KEY (Productid) REFERENCES ProductInformation(productid),
  
)


Create Table  joinActivity--���ʰѻP�̬d��
(
 joinActivityid int unique identity,  --�����\�P�̰O���s�� �y����
 activityid     int ,  --���ʽs��
 activityregistrationformid int ,  --���ʳ��W��y����
 primary key(joinActivityid),
 FOREIGN KEY (activityid) REFERENCES Activity(activityid),
 FOREIGN KEY (activityregistrationformid) REFERENCES ActivityRegistrationForm(activityregistrationformid),



)





--1/7



USE [HoPet]
GO

/****** Object:  Table [dbo].[Petencyclopedia]    Script Date: 2019/1/7 �U�� 07:26:53 ******/
DROP TABLE [dbo].[Petencyclopedia]
GO

/****** Object:  Table [dbo].[Petencyclopedia]    Script Date: 2019/1/7 �U�� 07:26:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Petencyclopedia]  (     --�d���ʬ�
	[petencyclopediaId] [int] IDENTITY(1,1) NOT NULL,  --�d���ʬ�и��y����
	[petvariety] [nvarchar](10) NULL,  --�d���W��	
	[scientific] [varchar](50) NULL,  --�d���ǦW
	[petSize] [nvarchar](10) NULL,  --�d������ �j����/�p����/������
	[petPicture] [varbinary](max) NULL,  --�d���Ӥ�
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






