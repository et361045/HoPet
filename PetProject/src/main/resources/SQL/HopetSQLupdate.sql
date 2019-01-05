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



