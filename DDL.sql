CREATE TABLE ���������
(
	��������������  integer  IDENTITY (1,1) ,
	������������  varchar(80)  NULL 
)
go


ALTER TABLE ���������
	ADD CONSTRAINT  XPK��������� PRIMARY KEY   NONCLUSTERED (��������������  ASC)
go


CREATE TABLE �������
(
	������������  integer  IDENTITY (1,1) ,
	�����������  integer  NULL ,
	����������  integer  NULL ,
	����������  integer  NOT NULL 
)
go


ALTER TABLE �������
	ADD CONSTRAINT  XPK������� PRIMARY KEY   NONCLUSTERED (������������  ASC)
go



CREATE TABLE �������������
(
	������������������  integer  IDENTITY (1,1) ,
	������������  varchar(80)  NULL ,
	�����  varchar(80)  NULL ,
	�������  varchar(80)  NULL 
)
go

ALTER TABLE �������������
	ADD CONSTRAINT  XPK������������� PRIMARY KEY   NONCLUSTERED (������������������  ASC)
go


CREATE TABLE ���������
(
	��������������  integer  IDENTITY (1,1) ,
	������������  varchar(80)  NULL ,
	�����  varchar(80)  NULL ,
	�������  varchar(80)  NULL ,
	���  varchar(80)  NULL ,
	���  varchar(80)  NULL ,
	����  varchar(80)  NULL ,
	�������������  varchar(80)  NULL 
)
go


ALTER TABLE ���������
	ADD CONSTRAINT  XPK��������� PRIMARY KEY   NONCLUSTERED (��������������  ASC)
go


CREATE TABLE ������
(
	�����������  integer  IDENTITY (1,1) ,
	����  datetime  NULL ,
	�����  integer  NULL ,
	��������������  integer  NOT NULL ,
	���������  varchar(80)  NULL ,
	��������������  integer  NOT NULL 
)
go


ALTER TABLE ������
	ADD CONSTRAINT  XPK������ PRIMARY KEY   NONCLUSTERED (�����������  ASC)
go


CREATE TABLE ������
(
	�����������  integer  IDENTITY (1,1) ,
	����  datetime  NULL ,
	�����  integer  NULL ,
	��������������  integer  NOT NULL ,
	���������  varchar(80)  NULL 
)
go


ALTER TABLE ������
	ADD CONSTRAINT  XPK������ PRIMARY KEY   NONCLUSTERED (�����������  ASC)
go



CREATE TABLE �������������
(
	�����������  integer  IDENTITY (1,1) ,
	����  integer  NULL ,
	����������  integer  NULL ,
	�����������  integer  NOT NULL ,
	������������  integer  NOT NULL 
)
go

ALTER TABLE �������������
	ADD CONSTRAINT  XPK������������� PRIMARY KEY   NONCLUSTERED (�����������  ASC)
go

CREATE TABLE �������������
(
	�����������  integer  IDENTITY (1,1) ,
	����������  integer  NULL ,
	����  integer  NULL ,
	�����������  integer  NOT NULL ,
	����������  integer  NOT NULL 
)
go


ALTER TABLE �������������
	ADD CONSTRAINT  XPK������������� PRIMARY KEY   NONCLUSTERED (�����������  ASC)
go


CREATE TABLE ��������������
(
	�����������  integer  IDENTITY (1,1) ,
	����������  integer  NULL ,
	�������������  integer  NOT NULL ,
	������������  integer  NOT NULL 
)
go


ALTER TABLE ��������������
	ADD CONSTRAINT  XPK�������������� PRIMARY KEY   NONCLUSTERED (�����������  ASC)
go


CREATE TABLE ���������
(
	�������  varchar(80)  NULL ,
	���  varchar(80)  NULL ,
	��������  varchar(80)  NULL ,
	���������  varchar(80)  NULL ,
	�������  varchar(80)  NULL ,					
	������������  datetime  NULL ,
	��������������  integer  IDENTITY (1,1) 
)
go


ALTER TABLE ���������
	ADD CONSTRAINT  XPK��������� PRIMARY KEY   NONCLUSTERED (��������������  ASC)
go


CREATE TABLE ��������
(
	�������������  integer  IDENTITY (1,1) ,
	����  datetime  NULL ,
	��������������  integer  NOT NULL ,
	���������  varchar(80)  NULL 	,
	�������  varchar(80)  NULL 
)
go


ALTER TABLE ��������
	ADD CONSTRAINT  XPK�������� PRIMARY KEY   NONCLUSTERED (�������������  ASC)
go


CREATE TABLE �����
(
	����������  integer  IDENTITY (1,1) ,
	������������  varchar(80)  NULL ,
	�������  varchar(80)  NULL ,
	������������������  integer  NOT NULL,
	��������������  integer  NOT NULL 
)
go


ALTER TABLE �����
	ADD CONSTRAINT  XPK����� PRIMARY KEY   NONCLUSTERED (����������  ASC)
go



ALTER TABLE �������
	ADD CONSTRAINT  R_2 FOREIGN KEY (����������) REFERENCES �����(����������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE ������
	ADD CONSTRAINT  R_4 FOREIGN KEY (��������������) REFERENCES ���������(��������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE ������
	ADD CONSTRAINT  R_8 FOREIGN KEY (��������������) REFERENCES ���������(��������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go





ALTER TABLE ������
	ADD CONSTRAINT  R_7 FOREIGN KEY (��������������) REFERENCES ���������(��������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go







ALTER TABLE �������������
	ADD CONSTRAINT  R_9 FOREIGN KEY (�����������) REFERENCES ������(�����������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE �������������
	ADD CONSTRAINT  R_10 FOREIGN KEY (����������) REFERENCES �����(����������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE ��������������
	ADD CONSTRAINT  R_11 FOREIGN KEY (�������������) REFERENCES ��������(�������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE ��������������
	ADD CONSTRAINT  R_13 FOREIGN KEY (������������) REFERENCES �������(������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE ��������
	ADD CONSTRAINT  R_6 FOREIGN KEY (��������������) REFERENCES ���������(��������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE �����
	ADD CONSTRAINT  R_1 FOREIGN KEY (��������������) REFERENCES ���������(��������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go

ALTER TABLE �����
	ADD CONSTRAINT  R_25 FOREIGN KEY (������������������) REFERENCES �������������(������������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go

ALTER TABLE �������������
	ADD CONSTRAINT  R_22 FOREIGN KEY (�����������) REFERENCES ������(�����������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE �������������
	ADD CONSTRAINT  R_24 FOREIGN KEY (������������) REFERENCES �������(������������)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


CREATE PROCEDURE UPD_EXPSUM

	@IDEXPENSE int
	
AS
BEGIN

	update ������ set ����� = (select SUM (����*����������) from ������������� where �����������=@IDEXPENSE)  where �����������=@IDEXPENSE;    
	
END

go

CREATE PROCEDURE INS_STORE
	
	@IDINCOME int
	
AS
BEGIN
	
	SET NOCOUNT ON;

   insert into ������� (�����������, ����������, ����������)  select  @IDINCOME,����������, ���������� from ������������� where �����������=@IDINCOME; 

END

go

CREATE PROCEDURE UPD_INCSUM 

	@IDINCOME int
	
AS
BEGIN
	update ������ set ����� = (select SUM (����*����������) from ������������� where �����������=@IDINCOME)  where �����������=@IDINCOME;    
	
END

go

CREATE PROCEDURE UPD_STORE

	@COUNT int, 
	@IDSTORE int
AS
BEGIN

	SET NOCOUNT ON;

    update ������� set ����������=����������- @COUNT where ������������=@IDSTORE 
	
END

go


SET IDENTITY_INSERT [dbo].[���������] ON
INSERT [dbo].[���������] ([��������������], [������������], [�����], [�������], [���], [���], [����], [�������������]) VALUES (1, N'�����', N'���������� 32', N'314234', N'423423', N'34534534', N'3423432', N'23434634')
INSERT [dbo].[���������] ([��������������], [������������], [�����], [�������], [���], [���], [����], [�������������]) VALUES (2, N'����', N'��������� 3', N'456345', N'573556', N'23456533', N'3453453', N'23452345')
SET IDENTITY_INSERT [dbo].[���������] OFF

SET IDENTITY_INSERT [dbo].[�������������] ON
INSERT [dbo].[�������������] ([������������������], [������������], [�����], [�������]) VALUES (1, N'��� ', N'��. �������� 21', N'231231')
INSERT [dbo].[�������������] ([������������������], [������������], [�����], [�������]) VALUES (2, N'���', N'��. �������� 22', N'341123')
SET IDENTITY_INSERT [dbo].[�������������] OFF

SET IDENTITY_INSERT [dbo].[���������] ON
INSERT [dbo].[���������] ([�������], [���], [��������], [���������], [�������], [������������], [��������������]) VALUES (N'�������', N'����', N'���������', N'���������', N'23312', CAST(0x0000733E00000000 AS DateTime), 1)
INSERT [dbo].[���������] ([�������], [���], [��������], [���������], [�������], [������������], [��������������]) VALUES (N'�������', N'������', N'����������', N'���������', N'44223', CAST(0x0000767400000000 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[���������] OFF



SET IDENTITY_INSERT [dbo].[���������] ON
INSERT [dbo].[���������] ([��������������], [������������]) VALUES (1, N'������� ����� ')
SET IDENTITY_INSERT [dbo].[���������] OFF


SET IDENTITY_INSERT [dbo].[������] ON
INSERT [dbo].[������] ([�����������], [����], [�����], [��������������], [���������]) VALUES (2, CAST(0x0000A8B700000000 AS DateTime), 6620, 2, N'��')
SET IDENTITY_INSERT [dbo].[������] OFF

SET IDENTITY_INSERT [dbo].[������] ON
INSERT [dbo].[������] ([�����������], [����], [�����], [��������������], [���������], [��������������]) VALUES (3, CAST(0x0000A8B700000000 AS DateTime), 10000, 1, N'��', 1)
INSERT [dbo].[������] ([�����������], [����], [�����], [��������������], [���������], [��������������]) VALUES (4, CAST(0x0000A8B700000000 AS DateTime), 22650, 2, N'��', 2)
SET IDENTITY_INSERT [dbo].[������] OFF


SET IDENTITY_INSERT [dbo].[�����] ON
INSERT [dbo].[�����] ([����������], [������������], [�������], [������������������], [��������������]) VALUES (1, N'���-212', N'212', 1, 1)
INSERT [dbo].[�����] ([����������], [������������], [�������], [������������������], [��������������]) VALUES (2, N'���-443', N'443', 2, 1)
INSERT [dbo].[�����] ([����������], [������������], [�������], [������������������], [��������������]) VALUES (3, N'���-44', N'44', 2, 1)
SET IDENTITY_INSERT [dbo].[�����] OFF


SET IDENTITY_INSERT [dbo].[��������] ON
INSERT [dbo].[��������] ([�������������], [����], [��������������], [���������], [�������]) VALUES (1, CAST(0x0000A8B700000000 AS DateTime), 1, N'��', N'���� ��������')
SET IDENTITY_INSERT [dbo].[��������] OFF


SET IDENTITY_INSERT [dbo].[�������������] ON
INSERT [dbo].[�������������] ([�����������], [����������], [����], [�����������], [����������]) VALUES (5, 100, 100, 3, 1)
INSERT [dbo].[�������������] ([�����������], [����������], [����], [�����������], [����������]) VALUES (6, 120, 110, 4, 2)
INSERT [dbo].[�������������] ([�����������], [����������], [����], [�����������], [����������]) VALUES (7, 90, 105, 4, 3)
SET IDENTITY_INSERT [dbo].[�������������] OFF


SET IDENTITY_INSERT [dbo].[�������] ON
INSERT [dbo].[�������] ([������������], [�����������], [����������], [����������]) VALUES (6, 3, 70, 1)
INSERT [dbo].[�������] ([������������], [�����������], [����������], [����������]) VALUES (7, 4, 120, 2)
INSERT [dbo].[�������] ([������������], [�����������], [����������], [����������]) VALUES (8, 4, 60, 3)
SET IDENTITY_INSERT [dbo].[�������] OFF


SET IDENTITY_INSERT [dbo].[��������������] ON
INSERT [dbo].[��������������] ([�����������], [����������], [�������������], [������������]) VALUES (1, 10, 1, 6)
SET IDENTITY_INSERT [dbo].[��������������] OFF


SET IDENTITY_INSERT [dbo].[�������������] ON
INSERT [dbo].[�������������] ([�����������], [����], [����������], [�����������], [������������]) VALUES (3, 130, 20, 2, 6)
INSERT [dbo].[�������������] ([�����������], [����], [����������], [�����������], [������������]) VALUES (4, 134, 30, 2, 8)
SET IDENTITY_INSERT [dbo].[�������������] OFF













