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



