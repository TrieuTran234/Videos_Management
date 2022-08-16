CREATE DATABASE PolyOE2
GO
USE PolyOE2
GO

CREATE TABLE Users(
	UserName [nvarchar](20) NOT NULL PRIMARY KEY,
	Password [nvarchar](50) NULL,
	Fullname [nvarchar](50) NULL,
	Email [nvarchar](150) NULL,
	Admin [bit] NULL)
go
INSERT [dbo].[Users] (UserName, [Password], [Fullname], [Email], [Admin]) VALUES (N'cu', N'123', N'phan van', N'cupv@gmail.com', 0)
INSERT [dbo].[Users] (UserName, [Password], [Fullname], [Email], [Admin]) VALUES (N'gaint', N'abc', N'nguyen thi', N'gaint@gmail.com', 0)
INSERT [dbo].[Users] (UserName, [Password], [Fullname], [Email], [Admin]) VALUES (N'teolv', N'123', N'le van teo', N'teolv@gmail.com', 1)
INSERT [dbo].[Users] (UserName, [Password], [Fullname], [Email], [Admin]) VALUES (N'ti', N'321', N'phan van', N'tipv@gmail.com', 0)
go
CREATE TABLE Videos (
	VideoID INT  PRIMARY KEY NOT NULL,
	Title NVARCHAR(100) NOT NULL,
	Poster VARCHAR(100)  NULL,
	Views INT   NULL,
	Description NVARCHAR(max) NOT NULL,
	Active BIT DEFAULT 0 NOT NULL
);

go
INSERT [dbo].Videos (videoId, [Title], [Poster], [Description], [Active], [Views]) VALUES (1      , N'Nhac Xuan', N'Mung Xuan 2021', N'Nam moi Mung Xuan', 1, 3)
INSERT [dbo].Videos (videoId, [Title], [Poster], [Description], [Active], [Views]) VALUES (2        , N'Nhac Tet', N'Mung Tet 2021', N'Chuc Mung Nam Moi', 1, 5)
INSERT [dbo].Videos (videoId, [Title], [Poster], [Description], [Active], [Views]) VALUES (3        , N'Tinh yeu', N'Tinh Yeu Dau doi', N'tinh yeu tuoi moi lon', 0, 5)
INSERT [dbo].Videos (videoId, [Title], [Poster], [Description], [Active], [Views]) VALUES (4        , N'Ngoc Son Bolero', N'Bolero Ky Niem', N'Tuyen tap ca khuc hay ', 1, 10)
go
INSERT [dbo].Videos ( videoId,[Title], [Poster], [Description], [Active], [Views]) VALUES (5,N'Nhac Xuan1', N'Mung Xuan 2022', N'Nam moi Mung Xuan', 1, 10)
INSERT [dbo].Videos ( videoId,[Title], [Poster], [Description], [Active], [Views]) VALUES (6, N'Nhac Tet1', N'Mung Tet 2021', N'Chuc Mung Nam Moi', 1, 10)
INSERT [dbo].Videos (videoId,[Title], [Poster], [Description], [Active], [Views]) VALUES (7,  N'Tinh yeu1', N'Tinh Yeu Dau doi', N'tinh yeu tuoi moi lon', 0, 10)
INSERT [dbo].Videos (videoId,[Title], [Poster], [Description], [Active], [Views]) VALUES (8, N'Ngoc Son Bolero1', N'Bolero Ky Niem', N'Tuyen tap ca khuc hay ', 1, 20)
go

CREATE TABLE Favorites (
	FavoriteID INT  PRIMARY KEY NOT NULL,
	UserName [nvarchar](20) NOT NULL,
	VideoID INT NOT NULL,
	LikedDate DATE DEFAULT GETDATE() NOT NULL,
	FOREIGN KEY (UserName) REFERENCES [Users](UserName),
	FOREIGN KEY (VideoID) REFERENCES Videos(VideoID)
);

go

INSERT [dbo].[Favorites] (FavoriteID, [VideoId], UserName, LikedDate) VALUES (1, '1        ', N'teolv', CAST(N'2021-01-23' AS Date))
INSERT [dbo].[Favorites] (FavoriteID, [VideoId], UserName, LikedDate) VALUES (2, '1        ', N'gaint', CAST(N'2021-01-03' AS Date))
INSERT [dbo].[Favorites] (FavoriteID, [VideoId], UserName, LikedDate) VALUES (4, '2        ', N'teolv', CAST(N'2021-05-01' AS Date))
INSERT [dbo].[Favorites] (FavoriteID, [VideoId], UserName, LikedDate) VALUES (5, '3        ', N'ti', CAST(N'2021-01-22' AS Date))
INSERT [dbo].[Favorites] (FavoriteID, [VideoId], UserName, LikedDate) VALUES (6, '1        ', N'ti', CAST(N'2021-01-26' AS Date))
INSERT [dbo].[Favorites] (FavoriteID, [VideoId], UserName, LikedDate) VALUES (7, '3        ', N'teolv', CAST(N'2021-01-28' AS Date))
INSERT [dbo].[Favorites] (FavoriteID, [VideoId], UserName, LikedDate) VALUES (8, '6        ', N'teolv', CAST(N'2021-01-28' AS Date))

go

CREATE TABLE Share (
	ShareID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	UserName [nvarchar](20) NOT NULL,
	VideoID INT NOT NULL,
	Emails VARCHAR(max) NOT NULL,
	ShareDate date not null,
	FOREIGN KEY (UserName) REFERENCES [Users](UserName),
	FOREIGN KEY (VideoID) REFERENCES Videos(VideoID)
);
GO



























