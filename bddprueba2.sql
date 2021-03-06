USE [master]
GO
/****** Object:  Database [fabrica]    Script Date: 13-06-2022 21:35:24 ******/
CREATE DATABASE [fabrica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fabrica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\fabrica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'fabrica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\fabrica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [fabrica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fabrica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fabrica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [fabrica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [fabrica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [fabrica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [fabrica] SET ARITHABORT OFF 
GO
ALTER DATABASE [fabrica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [fabrica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [fabrica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [fabrica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [fabrica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [fabrica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [fabrica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [fabrica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [fabrica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [fabrica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [fabrica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [fabrica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [fabrica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [fabrica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [fabrica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [fabrica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [fabrica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [fabrica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [fabrica] SET  MULTI_USER 
GO
ALTER DATABASE [fabrica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [fabrica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [fabrica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [fabrica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [fabrica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [fabrica] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [fabrica] SET QUERY_STORE = OFF
GO
USE [fabrica]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 13-06-2022 21:35:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [int] NOT NULL,
	[nombre] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 13-06-2022 21:35:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] NOT NULL,
	[nombre] [nchar](40) NOT NULL,
	[descripcion] [nchar](200) NOT NULL,
	[precio] [int] NOT NULL,
	[stock] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (6, N'yaaa                ')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (7, N'yaaap               ')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (8, N'categoria           ')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (9, N'categoriaa          ')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (23, N'Cname               ')
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precio], [stock], [IdCategoria], [estado]) VALUES (5, N'producto                                ', N'producto                                                                                                                                                                                                ', 123, 23, 6, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precio], [stock], [IdCategoria], [estado]) VALUES (6, N'adwk                                    ', N'lehd                                                                                                                                                                                                    ', 23, 32, 9, 0)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precio], [stock], [IdCategoria], [estado]) VALUES (9, N'dwanjd                                  ', N'jan                                                                                                                                                                                                     ', 12, 21, 8, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precio], [stock], [IdCategoria], [estado]) VALUES (10, N'Iphone                                  ', N'qweqew                                                                                                                                                                                                  ', 43, 24, 9, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precio], [stock], [IdCategoria], [estado]) VALUES (23, N'Final                                   ', N'Final                                                                                                                                                                                                   ', 1234, 13, 6, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precio], [stock], [IdCategoria], [estado]) VALUES (41, N'qwe                                     ', N'qwe                                                                                                                                                                                                     ', 323, 232, 23, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [precio], [stock], [IdCategoria], [estado]) VALUES (43, N'ert                                     ', N'tre                                                                                                                                                                                                     ', 456, 654, 23, 1)
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
USE [master]
GO
ALTER DATABASE [fabrica] SET  READ_WRITE 
GO
