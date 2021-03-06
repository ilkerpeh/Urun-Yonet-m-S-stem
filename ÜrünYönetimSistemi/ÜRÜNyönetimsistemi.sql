USE [UrunYonetimDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 21.01.2022 12:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 21.01.2022 12:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NULL,
	[sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnaSayfas]    Script Date: 21.01.2022 12:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaSayfas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[unvan] [nvarchar](max) NULL,
	[isim] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AnaSayfas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLKATEGORILER]    Script Date: 21.01.2022 12:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLKATEGORILER](
	[KATEGORIID] [smallint] IDENTITY(1,1) NOT NULL,
	[KATEGORIAD] [varchar](50) NULL,
 CONSTRAINT [PK_TBLKATEGORILER] PRIMARY KEY CLUSTERED 
(
	[KATEGORIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLURUNLER]    Script Date: 21.01.2022 12:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLURUNLER](
	[URUNID] [int] IDENTITY(1,1) NOT NULL,
	[URUNAD] [varchar](50) NULL,
	[URUNKATEGORI] [smallint] NULL,
	[FIYAT] [decimal](18, 2) NULL,
	[STOK] [tinyint] NULL,
	[URUNRESMİ] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLURUNLER] PRIMARY KEY CLUSTERED 
(
	[URUNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLURUNOZELLIKLERI]    Script Date: 21.01.2022 12:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLURUNOZELLIKLERI](
	[URUNOZELLIGIID] [int] IDENTITY(1,1) NOT NULL,
	[OZELLIKADI] [nvarchar](max) NULL,
	[OZELLIKDEGERI] [nvarchar](max) NULL,
	[URUNID] [int] NULL,
 CONSTRAINT [PK_TBLURUNOZELLIKLERI] PRIMARY KEY CLUSTERED 
(
	[URUNOZELLIGIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202112310954549_AutomaticMigration', N'ÜrünYönetimSistemi.Migrations.Configuration', 0x1F8B0800000000000400CD57CD6EE33610BE17E83B083CB54056CCCFA50DA45DB84E5204BB4E825576811E6969E410252995A402FB5DFA1CBDB4400F79A07D851DEAFFC74EEC605114BE98E4CC37331FE787FAF2F7BFC1BBB514DE2368C333159213FF9878A0E22CE16A1592C2A66F7E22EFDE7EFF5D7099C8B5F7B9913B7372A8A94C481EACCDCF2935F10348667CC9639D992CB57E9C49CA928C9E1E1FFF4C4F4E282004412CCF0B3E16CA7209E50297F34CC590DB828945968030F53E9E4425AA77C324989CC51092A73FF5D33FEAB7A7BF142044C48D05C9FD4ACF8F053346304DBC99E00C9D8B40A4C4634A65965974FDFC9381C8EA4CADA21C3798B8DFE48072291306EA90CE3BF17DA33B3E75D1D14EB1818A0B63337920E0C9594D171DABBF8A74D2D289845E22F176E3A22E490DC92C911C71C796CEE7423BA93D09F74B98236FABF0519B38985FEE77E4CD0B610B0DA182C26A268EBCBB622978FC1E36F7D9EFA0425508D1F71B3DC7B3C1066EDDE92C076D371F21ADA3E109F1E8508F8E155BB59E4E15EAB5B267A7C4BB41E36C29A04D8B1E2D91CD34FC0A0A34B390DC316B41E3AD5E2750123BB13EB2F5DE412B1EF359C21BAB988F586DC45BB0F507502BFB1012FC4BBC2BBE86A4D9A93DF984BAC87C48AC2EE0256386A71ABEB19580761934CD2B2C64CB3892537BE0D6B0B65BD20BEBB0CE30539B198652E14560FB696A88D759AF8ADBAFF3779B8FAD375D3FA15543691A0FDDD1798205CB73A4ABD789EA1D2FAADAD0FC4D747831CA0A83C6664B4DB6DEB69630D5D80A46A78ED404AEB836F68259B664EEC2E689DC225671BF83D7C6CA80DE7181756C37E2EE7FA572405F18E376745E6184124BA70C165AE79AB634D12B470243E02D353CCF4421D5AE3EF09CF6B02AFB38C393FD11EBD2EB43D55B538C808EC818DF029D5CC3A8C38D2FF5B95A188BB4D6DB9A18E57E50E7E1CBA37992989508F1909C479EB8A48C362E4D7C27E0477F88B9E0186F27B040AE5330B61A020447E1E96894FF7FC62A352611FBCCD6FF7C8C7147E98B836A32E50E9F5CEA91E9F881E91F245BFFD8473C783A1D8074E8041A37CB3DE6CCEE3153657448926586AE572E36A3E99523685A5E01EDBF8F830B307CD541B8D7B282D8E56D07DAC85CAB346B78C6A0FA1E3522A36B588065097233D396A72CB6781C8331E55BE13313058A5CCA2524D7EAB6B0796167C6805C8AC14B27A0CFDB2FE7ECD0E7E036772BF32D424037398600B7EA97828BA4F5FB6A9AD7BB205C9AD4C5825EE15B09E1569B16E926537B02D5F45D400ECA95DA3DC85C2098B955117B84D7F8864FA50FB062F1A6E992BB415EBE8821EDC105672BCDA4A9313A7DF7CD47DD47DFDBAFA199A6D6260E0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202201052036231_AutomaticMigration', N'ÜrünYönetimSistemi.Migrations.Configuration', 0x1F8B0800000000000400ED58CB6EE33614DD17E83F085CB540C6CC63D306D20C5C2729821927C128334097B474E510A52895A402FB5FE63BBA69812EF241FD855E5AD4DBCF20131445E18D45DE7BEE939747FAFB8FBFFC778B54788FA034CF64404E46C7C40319653197F380142679F30379F7F6DB6FFCCB385D789F2BB9332B879A5207E4C198FC9C521D3D40CAF428E591CA7496985194A594C5193D3D3EFE919E9C50400882589EE77F2CA4E129AC1EF07192C90872533031CD6210DAADE34EB842F56E580A3A671104E4E98B7AFA53FEF2F4BB048408B93690F251A9378A04D35A3045BCB1E00C9D0B4124C4635266861974FDFC9386D0A84CCEC31C1798B85FE6807209131A5C48E78DF8BED11D9FDAE868A35841458536597A20E0C9994B17EDAB3F2BE9A44E2726F412136F9636EA555203328E538EB87D4BE713A1ACD49E091FAD608EBCB5C24775E3607FD9DF91372984291404120AA39838F2EE8A99E0D17B58DE67BF820C642144DB6FF41CF73A0BB874A7B21C94597E84C445C363E2D1AE1EED2BD66A2D9D32D46B69CE4E897783C6D94C40DD16ADB4842653F0334850CC407CC78C018555BD8E6195D881F59EADF7165AF2888F635E59C57EC4D346BC295B7C0039370F01C1BFC4BBE20B88AB15E7C927D4C5CC07C4A8027619D33C51F0C2567CDA74D0F6BE922C64CB84BD406B39A4FFBB6B57C10BF9C8E4AB161C27B7611CFD751ED86758983545C7C1EBEAAE9D996E28255E08A63D9734F11AEBE5341FB98145B7AB33D7346B11EAD65C17681D52730BD1F21AAAAE2BBAE1BEF2A72CCF31E7ADFBCBAD786179794DDE84878FF0B4C4A0915E33C96B6F6B4BD8426C0EBD5D5B9918AEB8D2E682193663B6EA93385D2356167043762B2B9D1AF50F4E93F04ADCFE2F550EB84DFAB84D3AAF30C2148FC42A58A89DAB2EB381DE8A4830045E733627992852B9E97C6FD3EECEF2364E77677F4437B0DB506E6988E1D35E32FA55A08332F42657BFA87B95BC39575FA1EAD5B97C46E137AA7E9DDABB49DB06704BAF5CA9C1D4EA8BD4D6EBE9D59B52BE9B18BBA9F760849422C4C3E43CF2D88E8F70694B3BB202A3F03731111CE36D04A6782A12D0A6BC860952DDD31E55FFF7D066AA752CF6E1CEAF4E24B84DE94EAA30E019873353EC68153D30F55DCA16DFB7110F669F07201DCE30FF1B05E890B717CBD790A0F569C01E346C330B2B274040E25986AE972E56CC6D07436B58D81682B616BFA176CFE46FC389E7D3F62709FF02349F3710F6038584C88E9206B492B99649569512A36B7B5489F42A3D05C3624CFF58199EB0C8E076045AAFD8FA67260A14B94C67105FCBDBC2E485196B0DE94C74E8BF4FB7DB5F91D4AECFFE6D6E9FF44B84806E720C016EE54F051771EDF7D5B0D33741D84E74C707BDC2B715849B2F6BA49B4CEE09E4D2770139487BF8EE21CD0582E95B19B247788E6FF8B2F201E62C5A5617D76690DD85E8A6DDBFE06CAE58AA1D46A36F3FB351FB9DEDED3FCB6EA76A99130000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202201052048368_AutomaticMigration', N'ÜrünYönetimSistemi.Migrations.Configuration', 0x1F8B0800000000000400ED584B6EE43610DD07C81D04AE12C0D3F4679318D20C9CB61D18336D1B23CF0059B2A5EA3611925244CAE8BE4BCE914D0264E103CD15A62851FFFE3AB61104416F5A54D563FD58F5A82F7FFEEDBF5B48E13D40A679A20272343A241EA82889B99A072437B3373F90776FBFFDC6BF88E5C2FB5CC99D5839D4543A20F7C6A4A794EAE81E24D323C9A32CD1C9CC8CA244521627F4F8F0F0477A744401210862799EFF3157864B281EF0719CA80852933331496210DAADE39BB040F5AE99049DB20802F2F87BF6F897FAE5F10F050811726D40F251A9378A04D35AB08C78678233342E0431231E532A31CCA0E9A79F3484264BD43C4C718189BB650A283763428373E9B411DFD5BBC363EB1D6D142BA828D726917B021E9DB870D1BEFA93824EEA7062402F30F06669BD2E821A90B35872C4EDEF743A169995DA31E0A302E6C05B297C50170ED697FD1D78E35C983C8340416E32260EBCDB7C2A78F41E9677C9AFA002950BD1B61B2DC7779D055CBACD921432B3FC0833E70D8F8947BB7AB4AF58ABB5744A57AF94393926DE356ECEA602EAB26885253449063F83828C19886F9931906156AF6228023BD8BDB7D77B0BAD78C4CF625EED8AF588A78D7813B6F8006A6EEE03827F8977C91710572BCE924FA88B910F88C972D8B699E6B30C9E79179F3615B4B9AE140BD972C69EA1B41CD2FFD5B52DE15C73F9E25595AB07A65EB5AA703C18C63128CE02FB0C0BB3A2B2B0BBBBE2D26E9BAE2B255E08A6DDFC34F19ADDCB9131725D916E5667AE325722D4F5BFCAD1DAA566D4D172D6553391AE198AFE84A529C6BC3524DD8A17961372FC26DC7F4EC81283467AC5B8A8ADAD77C23A6573E8BDB59989E19267DA9C33C3A6CC667D1CCB15626502D744B7DAA593A3FEE96C025E89DBFFA5CA1E23AB8FDB84F3123D9478EE0A67A136AE9A9803BD82AD30045ED100C689C8A55AD74436697707461BA7FB6677443715DA506E6988E1D35E30FA59A08334F4DA633FA93BA5BC39572F90F5EA5C3E21F16B555F26F7653BEFE8172BBB23B85EDD86704BAF9CEB41DFEB8BD4BBD7FDAFD7E77CD773B6DF10064DA814211E06E781C7B601854B5B1C232B300A7F1363C1D1DF466082E76A06DA946C8120233FEEDD28FE3DEC9E6A1D8B5D28FEABF31D6E43BA95D10CE8D0FE041A2B3A8BEE59F69D648BEFDB887B93E43D90F627C2FF8D04B439E63F0A7C87473E5BE0875CB1CF48766084EB0961D94A02124F1334BD34B122915BC86243083770C595F80DCB7C22951CB64E9FB63FC1F8E7A0F9BC81B01F641444B62735A095CC959A25552AD1BBB64595482FD313302CC6F09F6586CF5864F075045A171787CF4CE4287221A7105FA99BDCA4B939D31AE45474AE3B3EDDBC7FC197BB36FB37A97DD2CFE1029AC9D105B8513FE55CC4B5DD97C323B30EC256A23B8768155E9C106EBEAC91AE13B523900BDF39A4A0EC29BE03990A04D3372A640FF014DBF0DEF401E62C5A5613703DC8F64474C3EE9F7336CF98D40EA3D1B79F15A9FDAEF8F62BC635697C89140000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([id], [KullaniciAdi], [sifre]) VALUES (1, N'ilker', N'123')
INSERT [dbo].[Admins] ([id], [KullaniciAdi], [sifre]) VALUES (2, N'eren', N'123')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[AnaSayfas] ON 

INSERT [dbo].[AnaSayfas] ([id], [unvan], [isim]) VALUES (4, NULL, N'ilker')
INSERT [dbo].[AnaSayfas] ([id], [unvan], [isim]) VALUES (5, NULL, N'eren')
SET IDENTITY_INSERT [dbo].[AnaSayfas] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLKATEGORILER] ON 

INSERT [dbo].[TBLKATEGORILER] ([KATEGORIID], [KATEGORIAD]) VALUES (1, N'TELEFON')
INSERT [dbo].[TBLKATEGORILER] ([KATEGORIID], [KATEGORIAD]) VALUES (2, N'BİLGİSAYAR')
INSERT [dbo].[TBLKATEGORILER] ([KATEGORIID], [KATEGORIAD]) VALUES (3, N'OYUN')
INSERT [dbo].[TBLKATEGORILER] ([KATEGORIID], [KATEGORIAD]) VALUES (4, N'BEYAZ EŞYA')
SET IDENTITY_INSERT [dbo].[TBLKATEGORILER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLURUNLER] ON 

INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (1, N'LG H815 G4 PARLAK ALTIN AKILLI TELEFON', 1, CAST(2199.00 AS Decimal(18, 2)), 15, N'https://cdn.akakce.com/lg/lg-g4-32-gb-parlak-altin-z.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (2, N'IPHONE 6 16GB SPACE GRAY AKILLI TELEFON', 1, CAST(2699.00 AS Decimal(18, 2)), 20, N'https://cdn.vatanbilgisayar.com/Upload/PRODUCT/apple/thumb/v2-74702_small.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (3, N'SAMSUNG G360H GALAXY CORE PRIME GRİ TELEFON', 1, CAST(1500.00 AS Decimal(18, 2)), 5, N'https://www.dhresource.com/0x0/f2/albu/g20/M00/DC/A0/rBNaOGB0axSAOBewAAF2hHWNZ9I822.jpg/original-refurbished-samsung-galaxy-core.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (4, N'HP PAVILION 11-N000NT', 2, CAST(3000.00 AS Decimal(18, 2)), 10, N'https://cdn.vatanbilgisayar.com/Upload/PRODUCT/hp/thumb/v2-79302_large.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (5, N'ACER V3-371-52HY WHİTE NOTEBOOK', 2, CAST(5000.00 AS Decimal(18, 2)), 7, N'https://cdn.cimri.io/image/1000x1000/acer-v3-371-52hy-laptop-notebook_24503801.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (6, N'CASPER CN TKI-4712B NOTEBOOK', 2, CAST(7200.00 AS Decimal(18, 2)), 3, N'https://cdn.akakce.com/casper/casper-nirvana-csd-4712-bh45a-s-i7-4712mq-16-gb-1-tb-8-gb-ssd-840m-15-6-notebook-z.jpg
')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (7, N'ARAL GTA 4 PC OYUN', 3, CAST(150.00 AS Decimal(18, 2)), 12, N'https://img-morhipo.mncdn.com/mnresize/1200/1645/productimages/5026555053907/[img][5][1][900x1234].jpg?0024')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (8, N'ARAL FAR CRY 3 PC OYUN', 3, CAST(200.00 AS Decimal(18, 2)), 8, N'https://saglamindir.net/wp-content/uploads/2017/01/Far-Cry-3-Cover.png')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (9, N'APPTOYZ APPCONTROL', 3, CAST(120.00 AS Decimal(18, 2)), 4, N'https://i.ytimg.com/vi/jJOoHt_LpSc/mqdefault.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (10, N'HOTPOINT ARISTON E2BYH 19223 F O3(TK) BUZDOLABI', 4, CAST(8500.00 AS Decimal(18, 2)), 6, N'
https://cdn.akakce.com/hotpoint-ariston/hotpoint-ariston-e2byh-19223-f-o3-tk-a-kombi-no-frost-buzdolabi-z.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (11, N'PHILIPS GC7320 BUHAR KAZANLI ÜTÜ', 4, CAST(750.00 AS Decimal(18, 2)), 3, N'https://www.iyi.net//Philips-gc7320-244000-245237_2.jpg')
INSERT [dbo].[TBLURUNLER] ([URUNID], [URUNAD], [URUNKATEGORI], [FIYAT], [STOK], [URUNRESMİ]) VALUES (12, N'SAMSUNG RT38FAJEDSA/TR BUZDOLABI', 4, CAST(9000.00 AS Decimal(18, 2)), 9, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2cxV8LMXKEx_NsPjWwqV7zLzEG440Q8cPlg&usqp=CAU')
SET IDENTITY_INSERT [dbo].[TBLURUNLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBLURUNOZELLIKLERI] ON 

INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (1, N'Fiyat', N'2.199,00 TL', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (2, N'Artırılabilir Hafıza', N'Var', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (3, N'Bluetooth', N'Var', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (4, N'Ekran Tipi', N'Quad HD', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (5, N'Garanti Süresi', N'2 Yıl', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (6, N'Kamera Çözünürlüğü', N'16 MP', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (7, N'Marka', N'LG', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (8, N'Pil', N'3,000mAh', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (9, N'Saklama Kapasitesi', N'16 GB', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (10, N'Fiyat', N'2.699,00 TL', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (11, N'Artırılabilir Hafıza', N'yok', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (12, N'Fiyat', N'2.199,00 TL', 1)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (13, N'Ekran Tipi', N'HD', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (14, N'Garanti Süresi', N'3 Yıl', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (15, N'Kamera Çözünürlüğü', N'32 MP', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (16, N'Marka', N'APPLE', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (17, N'Pil', N'3,000mAh', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (18, N'Saklama Kapasitesi', N'16 GB', 2)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (19, N'Fiyat', N'1.500,00 TL', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (20, N'Artırılabilir Hafıza', N'Var', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (21, N'Bluetooth', N'Var', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (22, N'Ekran Tipi', N'HD', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (23, N'Garanti Süresi', N'2 Yıl', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (24, N'Kamera Çözünürlüğü', N'64 MP', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (25, N'Marka', N'SAMSUNG', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (26, N'Pil', N'2,000mAh', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (27, N'Saklama Kapasitesi', N'8 GB', 3)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (28, N'Fiyat', N'3000,00 TL', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (29, N'Artırılabilir Hafıza', N'Var', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (30, N'Bluetooth', N'Yok', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (31, N'Ekran Tipi', N'FULL HD', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (32, N'Garanti Süresi', N'2 Yıl', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (33, N'Kamera Çözünürlüğü', N'8 MP', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (34, N'Marka', N'HP', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (35, N'Pil', N'5,000mAh', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (36, N'Saklama Kapasitesi', N'64 GB', 4)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (37, N'Fiyat', N'5000,00 TL', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (38, N'Artırılabilir Hafıza', N'Var', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (39, N'Bluetooth', N'Yok', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (40, N'Ekran Tipi', N'FULL HD', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (41, N'Garanti Süresi', N'4 Yıl', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (42, N'Kamera Çözünürlüğü', N'8 MP', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (43, N'Marka', N'ACER', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (44, N'Pil', N'3,000mAh', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (45, N'Saklama Kapasitesi', N'32 GB', 5)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (46, N'Fiyat', N'7200,00 TL', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (47, N'Artırılabilir Hafıza', N'Var', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (48, N'Bluetooth', N'Var', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (49, N'Ekran Tipi', N'FULL HD', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (50, N'Garanti Süresi', N'4 Yıl', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (51, N'Kamera Çözünürlüğü', N'8 MP', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (52, N'Marka', N'CASPER', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (53, N'Pil', N'3,000mAh', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (54, N'Saklama Kapasitesi', N'32 GB', 6)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (55, N'Fiyat', N'150,00 TL', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (56, N'Artırılabilir Hafıza', N'Yok', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (57, N'Bluetooth', N'Yok', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (58, N'Ekran Tipi', N'Yok', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (59, N'Garanti Süresi', N'1 Yıl', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (60, N'Kamera Çözünürlüğü', N'Yok', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (61, N'Marka', N'ARAL', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (62, N'Pil', N'Yok', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (63, N'Saklama Kapasitesi', N'Yok', 7)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (64, N'Fiyat', N'200,00 TL', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (65, N'Artırılabilir Hafıza', N'Yok', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (66, N'Bluetooth', N'Yok', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (67, N'Ekran Tipi', N'Yok', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (68, N'Garanti Süresi', N'2 Yıl', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (69, N'Kamera Çözünürlüğü', N'Yok', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (70, N'Marka', N'ARAL', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (71, N'Pil', N'Yok', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (72, N'Saklama Kapasitesi', N'Yok', 8)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (73, N'Fiyat', N'120,00 TL', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (74, N'Artırılabilir Hafıza', N'Yok', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (75, N'Bluetooth', N'Yok', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (76, N'Ekran Tipi', N'Yok', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (77, N'Garanti Süresi', N'2 Yıl', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (78, N'Kamera Çözünürlüğü', N'Yok', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (79, N'Marka', N'APPTOYZ', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (80, N'Pil', N'Yok', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (81, N'Saklama Kapasitesi', N'Yok', 9)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (82, N'Fiyat', N'8500,00 TL', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (83, N'Artırılabilir Hafıza', N'Yok', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (84, N'Bluetooth', N'Var', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (85, N'Ekran Tipi', N'Yok', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (86, N'Garanti Süresi', N'7 Yıl', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (87, N'Kamera Çözünürlüğü', N'Yok', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (88, N'Marka', N'HOTPOINT', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (89, N'Pil', N'Yok', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (90, N'Saklama Kapasitesi', N'Yok', 10)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (91, N'Fiyat', N'750,00 TL', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (92, N'Artırılabilir Hafıza', N'Yok', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (93, N'Bluetooth', N'Yok', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (94, N'Ekran Tipi', N'Yok', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (95, N'Garanti Süresi', N'5 Yıl', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (96, N'Kamera Çözünürlüğü', N'Yok', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (97, N'Marka', N'PHILIPS', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (98, N'Pil', N'Yok', 11)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (99, N'Saklama Kapasitesi', N'Yok', 11)
GO
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (100, N'Fiyat', N'9000,00 TL', 12)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (101, N'Artırılabilir Hafıza', N'Yok', 12)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (102, N'Bluetooth', N'Yok', 12)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (103, N'Ekran Tipi', N'Yok', 12)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (104, N'Garanti Süresi', N'3 Yıl', 12)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (105, N'Kamera Çözünürlüğü', N'Yok', 12)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (106, N'Marka', N'SAMSUNG', 12)
INSERT [dbo].[TBLURUNOZELLIKLERI] ([URUNOZELLIGIID], [OZELLIKADI], [OZELLIKDEGERI], [URUNID]) VALUES (107, N'Pil', N'Yok', 12)
SET IDENTITY_INSERT [dbo].[TBLURUNOZELLIKLERI] OFF
GO
ALTER TABLE [dbo].[TBLURUNLER]  WITH CHECK ADD  CONSTRAINT [FK_TBLURUNLER_TBLKATEGORILER] FOREIGN KEY([URUNKATEGORI])
REFERENCES [dbo].[TBLKATEGORILER] ([KATEGORIID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TBLURUNLER] CHECK CONSTRAINT [FK_TBLURUNLER_TBLKATEGORILER]
GO
ALTER TABLE [dbo].[TBLURUNOZELLIKLERI]  WITH CHECK ADD  CONSTRAINT [FK_TBLURUNOZELLIKLERI_TBLURUNLER1] FOREIGN KEY([URUNID])
REFERENCES [dbo].[TBLURUNLER] ([URUNID])
GO
ALTER TABLE [dbo].[TBLURUNOZELLIKLERI] CHECK CONSTRAINT [FK_TBLURUNOZELLIKLERI_TBLURUNLER1]
GO
