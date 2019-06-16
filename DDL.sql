CREATE TABLE Категория
(
	КатегорияНомер  integer  IDENTITY (1,1) ,
	Наименование  varchar(80)  NULL 
)
go


ALTER TABLE Категория
	ADD CONSTRAINT  XPKКатегория PRIMARY KEY   NONCLUSTERED (КатегорияНомер  ASC)
go


CREATE TABLE Остаток
(
	ОстатокНомер  integer  IDENTITY (1,1) ,
	ПриходНомер  integer  NULL ,
	Количество  integer  NULL ,
	ТоварНомер  integer  NOT NULL 
)
go


ALTER TABLE Остаток
	ADD CONSTRAINT  XPKОстаток PRIMARY KEY   NONCLUSTERED (ОстатокНомер  ASC)
go



CREATE TABLE Производитель
(
	ПроизводительНомер  integer  IDENTITY (1,1) ,
	Наименование  varchar(80)  NULL ,
	Адрес  varchar(80)  NULL ,
	Телефон  varchar(80)  NULL 
)
go

ALTER TABLE Производитель
	ADD CONSTRAINT  XPKПроизводитель PRIMARY KEY   NONCLUSTERED (ПроизводительНомер  ASC)
go


CREATE TABLE Поставщик
(
	ПоставщикНомер  integer  IDENTITY (1,1) ,
	Наименование  varchar(80)  NULL ,
	Адрес  varchar(80)  NULL ,
	Телефон  varchar(80)  NULL ,
	ИНН  varchar(80)  NULL ,
	КПП  varchar(80)  NULL ,
	ОКПО  varchar(80)  NULL ,
	РасчетныйСчет  varchar(80)  NULL 
)
go


ALTER TABLE Поставщик
	ADD CONSTRAINT  XPKПоставщик PRIMARY KEY   NONCLUSTERED (ПоставщикНомер  ASC)
go


CREATE TABLE Приход
(
	ПриходНомер  integer  IDENTITY (1,1) ,
	Дата  datetime  NULL ,
	Сумма  integer  NULL ,
	ПоставщикНомер  integer  NOT NULL ,
	Проведено  varchar(80)  NULL ,
	СотрудникНомер  integer  NOT NULL 
)
go


ALTER TABLE Приход
	ADD CONSTRAINT  XPKПриход PRIMARY KEY   NONCLUSTERED (ПриходНомер  ASC)
go


CREATE TABLE Расход
(
	РасходНомер  integer  IDENTITY (1,1) ,
	Дата  datetime  NULL ,
	Сумма  integer  NULL ,
	СотрудникНомер  integer  NOT NULL ,
	Проведено  varchar(80)  NULL 
)
go


ALTER TABLE Расход
	ADD CONSTRAINT  XPKРасход PRIMARY KEY   NONCLUSTERED (РасходНомер  ASC)
go



CREATE TABLE СоставРасхода
(
	СоставНомер  integer  IDENTITY (1,1) ,
	Цена  integer  NULL ,
	Количество  integer  NULL ,
	РасходНомер  integer  NOT NULL ,
	ОстатокНомер  integer  NOT NULL 
)
go

ALTER TABLE СоставРасхода
	ADD CONSTRAINT  XPKСоставРасхода PRIMARY KEY   NONCLUSTERED (СоставНомер  ASC)
go

CREATE TABLE СоставПрихода
(
	СоставНомер  integer  IDENTITY (1,1) ,
	Количество  integer  NULL ,
	Цена  integer  NULL ,
	ПриходНомер  integer  NOT NULL ,
	ТоварНомер  integer  NOT NULL 
)
go


ALTER TABLE СоставПрихода
	ADD CONSTRAINT  XPKСоставПрихода PRIMARY KEY   NONCLUSTERED (СоставНомер  ASC)
go


CREATE TABLE СоставСписания
(
	СоставНомер  integer  IDENTITY (1,1) ,
	Количество  integer  NULL ,
	СписаниеНомер  integer  NOT NULL ,
	ОстатокНомер  integer  NOT NULL 
)
go


ALTER TABLE СоставСписания
	ADD CONSTRAINT  XPKСоставСписания PRIMARY KEY   NONCLUSTERED (СоставНомер  ASC)
go


CREATE TABLE Сотрудник
(
	Фамилия  varchar(80)  NULL ,
	Имя  varchar(80)  NULL ,
	Отчество  varchar(80)  NULL ,
	Должность  varchar(80)  NULL ,
	Телефон  varchar(80)  NULL ,					
	ДатаРождения  datetime  NULL ,
	СотрудникНомер  integer  IDENTITY (1,1) 
)
go


ALTER TABLE Сотрудник
	ADD CONSTRAINT  XPKСотрудник PRIMARY KEY   NONCLUSTERED (СотрудникНомер  ASC)
go


CREATE TABLE Списание
(
	СписаниеНомер  integer  IDENTITY (1,1) ,
	Дата  datetime  NULL ,
	СотрудникНомер  integer  NOT NULL ,
	Проведено  varchar(80)  NULL 	,
	Причина  varchar(80)  NULL 
)
go


ALTER TABLE Списание
	ADD CONSTRAINT  XPKСписание PRIMARY KEY   NONCLUSTERED (СписаниеНомер  ASC)
go


CREATE TABLE Товар
(
	ТоварНомер  integer  IDENTITY (1,1) ,
	Наименование  varchar(80)  NULL ,
	Артикул  varchar(80)  NULL ,
	ПроизводительНомер  integer  NOT NULL,
	КатегорияНомер  integer  NOT NULL 
)
go


ALTER TABLE Товар
	ADD CONSTRAINT  XPKТовар PRIMARY KEY   NONCLUSTERED (ТоварНомер  ASC)
go



ALTER TABLE Остаток
	ADD CONSTRAINT  R_2 FOREIGN KEY (ТоварНомер) REFERENCES Товар(ТоварНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE Приход
	ADD CONSTRAINT  R_4 FOREIGN KEY (ПоставщикНомер) REFERENCES Поставщик(ПоставщикНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE Приход
	ADD CONSTRAINT  R_8 FOREIGN KEY (СотрудникНомер) REFERENCES Сотрудник(СотрудникНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go





ALTER TABLE Расход
	ADD CONSTRAINT  R_7 FOREIGN KEY (СотрудникНомер) REFERENCES Сотрудник(СотрудникНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go







ALTER TABLE СоставПрихода
	ADD CONSTRAINT  R_9 FOREIGN KEY (ПриходНомер) REFERENCES Приход(ПриходНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE СоставПрихода
	ADD CONSTRAINT  R_10 FOREIGN KEY (ТоварНомер) REFERENCES Товар(ТоварНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE СоставСписания
	ADD CONSTRAINT  R_11 FOREIGN KEY (СписаниеНомер) REFERENCES Списание(СписаниеНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE СоставСписания
	ADD CONSTRAINT  R_13 FOREIGN KEY (ОстатокНомер) REFERENCES Остаток(ОстатокНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE Списание
	ADD CONSTRAINT  R_6 FOREIGN KEY (СотрудникНомер) REFERENCES Сотрудник(СотрудникНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go



ALTER TABLE Товар
	ADD CONSTRAINT  R_1 FOREIGN KEY (КатегорияНомер) REFERENCES Категория(КатегорияНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go

ALTER TABLE Товар
	ADD CONSTRAINT  R_25 FOREIGN KEY (ПроизводительНомер) REFERENCES Производитель(ПроизводительНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go

ALTER TABLE СоставРасхода
	ADD CONSTRAINT  R_22 FOREIGN KEY (РасходНомер) REFERENCES Расход(РасходНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


ALTER TABLE СоставРасхода
	ADD CONSTRAINT  R_24 FOREIGN KEY (ОстатокНомер) REFERENCES Остаток(ОстатокНомер)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go


CREATE PROCEDURE UPD_EXPSUM

	@IDEXPENSE int
	
AS
BEGIN

	update Расход set Сумма = (select SUM (Цена*Количество) from СоставРасхода where РасходНомер=@IDEXPENSE)  where РасходНомер=@IDEXPENSE;    
	
END

go

CREATE PROCEDURE INS_STORE
	
	@IDINCOME int
	
AS
BEGIN
	
	SET NOCOUNT ON;

   insert into Остаток (ПриходНомер, ТоварНомер, Количество)  select  @IDINCOME,ТоварНомер, Количество from СоставПрихода where ПриходНомер=@IDINCOME; 

END

go

CREATE PROCEDURE UPD_INCSUM 

	@IDINCOME int
	
AS
BEGIN
	update Приход set Сумма = (select SUM (Цена*Количество) from СоставПрихода where ПриходНомер=@IDINCOME)  where ПриходНомер=@IDINCOME;    
	
END

go

CREATE PROCEDURE UPD_STORE

	@COUNT int, 
	@IDSTORE int
AS
BEGIN

	SET NOCOUNT ON;

    update Остаток set Количество=Количество- @COUNT where ОстатокНомер=@IDSTORE 
	
END

go


SET IDENTITY_INSERT [dbo].[Поставщик] ON
INSERT [dbo].[Поставщик] ([ПоставщикНомер], [Наименование], [Адрес], [Телефон], [ИНН], [КПП], [ОКПО], [РасчетныйСчет]) VALUES (1, N'Литон', N'Строителей 32', N'314234', N'423423', N'34534534', N'3423432', N'23434634')
INSERT [dbo].[Поставщик] ([ПоставщикНомер], [Наименование], [Адрес], [Телефон], [ИНН], [КПП], [ОКПО], [РасчетныйСчет]) VALUES (2, N'Союз', N'Михайлова 3', N'456345', N'573556', N'23456533', N'3453453', N'23452345')
SET IDENTITY_INSERT [dbo].[Поставщик] OFF

SET IDENTITY_INSERT [dbo].[Производитель] ON
INSERT [dbo].[Производитель] ([ПроизводительНомер], [Наименование], [Адрес], [Телефон]) VALUES (1, N'ОКП ', N'ул. Соколова 21', N'231231')
INSERT [dbo].[Производитель] ([ПроизводительНомер], [Наименование], [Адрес], [Телефон]) VALUES (2, N'НКН', N'ул. Смирнова 22', N'341123')
SET IDENTITY_INSERT [dbo].[Производитель] OFF

SET IDENTITY_INSERT [dbo].[Сотрудник] ON
INSERT [dbo].[Сотрудник] ([Фамилия], [Имя], [Отчество], [Должность], [Телефон], [ДатаРождения], [СотрудникНомер]) VALUES (N'Сергеев', N'Иван', N'Федорович', N'Кладовщик', N'23312', CAST(0x0000733E00000000 AS DateTime), 1)
INSERT [dbo].[Сотрудник] ([Фамилия], [Имя], [Отчество], [Должность], [Телефон], [ДатаРождения], [СотрудникНомер]) VALUES (N'Андреев', N'Михаил', N'Евгеньевич', N'Кладовщик', N'44223', CAST(0x0000767400000000 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Сотрудник] OFF



SET IDENTITY_INSERT [dbo].[Категория] ON
INSERT [dbo].[Категория] ([КатегорияНомер], [Наименование]) VALUES (1, N'Бытовая химия ')
SET IDENTITY_INSERT [dbo].[Категория] OFF


SET IDENTITY_INSERT [dbo].[Расход] ON
INSERT [dbo].[Расход] ([РасходНомер], [Дата], [Сумма], [СотрудникНомер], [Проведено]) VALUES (2, CAST(0x0000A8B700000000 AS DateTime), 6620, 2, N'Да')
SET IDENTITY_INSERT [dbo].[Расход] OFF

SET IDENTITY_INSERT [dbo].[Приход] ON
INSERT [dbo].[Приход] ([ПриходНомер], [Дата], [Сумма], [ПоставщикНомер], [Проведено], [СотрудникНомер]) VALUES (3, CAST(0x0000A8B700000000 AS DateTime), 10000, 1, N'Да', 1)
INSERT [dbo].[Приход] ([ПриходНомер], [Дата], [Сумма], [ПоставщикНомер], [Проведено], [СотрудникНомер]) VALUES (4, CAST(0x0000A8B700000000 AS DateTime), 22650, 2, N'Да', 2)
SET IDENTITY_INSERT [dbo].[Приход] OFF


SET IDENTITY_INSERT [dbo].[Товар] ON
INSERT [dbo].[Товар] ([ТоварНомер], [Наименование], [Артикул], [ПроизводительНомер], [КатегорияНомер]) VALUES (1, N'ББА-212', N'212', 1, 1)
INSERT [dbo].[Товар] ([ТоварНомер], [Наименование], [Артикул], [ПроизводительНомер], [КатегорияНомер]) VALUES (2, N'КБА-443', N'443', 2, 1)
INSERT [dbo].[Товар] ([ТоварНомер], [Наименование], [Артикул], [ПроизводительНомер], [КатегорияНомер]) VALUES (3, N'КИП-44', N'44', 2, 1)
SET IDENTITY_INSERT [dbo].[Товар] OFF


SET IDENTITY_INSERT [dbo].[Списание] ON
INSERT [dbo].[Списание] ([СписаниеНомер], [Дата], [СотрудникНомер], [Проведено], [Причина]) VALUES (1, CAST(0x0000A8B700000000 AS DateTime), 1, N'Да', N'Срок годности')
SET IDENTITY_INSERT [dbo].[Списание] OFF


SET IDENTITY_INSERT [dbo].[СоставПрихода] ON
INSERT [dbo].[СоставПрихода] ([СоставНомер], [Количество], [Цена], [ПриходНомер], [ТоварНомер]) VALUES (5, 100, 100, 3, 1)
INSERT [dbo].[СоставПрихода] ([СоставНомер], [Количество], [Цена], [ПриходНомер], [ТоварНомер]) VALUES (6, 120, 110, 4, 2)
INSERT [dbo].[СоставПрихода] ([СоставНомер], [Количество], [Цена], [ПриходНомер], [ТоварНомер]) VALUES (7, 90, 105, 4, 3)
SET IDENTITY_INSERT [dbo].[СоставПрихода] OFF


SET IDENTITY_INSERT [dbo].[Остаток] ON
INSERT [dbo].[Остаток] ([ОстатокНомер], [ПриходНомер], [Количество], [ТоварНомер]) VALUES (6, 3, 70, 1)
INSERT [dbo].[Остаток] ([ОстатокНомер], [ПриходНомер], [Количество], [ТоварНомер]) VALUES (7, 4, 120, 2)
INSERT [dbo].[Остаток] ([ОстатокНомер], [ПриходНомер], [Количество], [ТоварНомер]) VALUES (8, 4, 60, 3)
SET IDENTITY_INSERT [dbo].[Остаток] OFF


SET IDENTITY_INSERT [dbo].[СоставСписания] ON
INSERT [dbo].[СоставСписания] ([СоставНомер], [Количество], [СписаниеНомер], [ОстатокНомер]) VALUES (1, 10, 1, 6)
SET IDENTITY_INSERT [dbo].[СоставСписания] OFF


SET IDENTITY_INSERT [dbo].[СоставРасхода] ON
INSERT [dbo].[СоставРасхода] ([СоставНомер], [Цена], [Количество], [РасходНомер], [ОстатокНомер]) VALUES (3, 130, 20, 2, 6)
INSERT [dbo].[СоставРасхода] ([СоставНомер], [Цена], [Количество], [РасходНомер], [ОстатокНомер]) VALUES (4, 134, 30, 2, 8)
SET IDENTITY_INSERT [dbo].[СоставРасхода] OFF













