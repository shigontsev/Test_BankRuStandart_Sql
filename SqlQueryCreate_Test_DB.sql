USE [master]
GO
/****** Object:  Database [Contract_BankRu_Test]    Script Date: 19.08.2023 17:09:45 ******/
CREATE DATABASE [Contract_BankRu_Test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Contract_BankRu_Test', FILENAME = N'C:\Users\Yurii_S\Contract_BankRu_Test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Contract_BankRu_Test_log', FILENAME = N'C:\Users\Yurii_S\Contract_BankRu_Test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Contract_BankRu_Test] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Contract_BankRu_Test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Contract_BankRu_Test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET ARITHABORT OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Contract_BankRu_Test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Contract_BankRu_Test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Contract_BankRu_Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Contract_BankRu_Test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Contract_BankRu_Test] SET  MULTI_USER 
GO
ALTER DATABASE [Contract_BankRu_Test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Contract_BankRu_Test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Contract_BankRu_Test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Contract_BankRu_Test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Contract_BankRu_Test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Contract_BankRu_Test] SET QUERY_STORE = OFF
GO
USE [Contract_BankRu_Test]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Contract_BankRu_Test]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 19.08.2023 17:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.08.2023 17:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 19.08.2023 17:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_id] [int] NULL,
	[id_client] [int] NULL,
	[id_bank] [int] NULL,
	[stat] [int] NULL,
	[name] [varchar](30) NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 19.08.2023 17:09:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bank] ON 
GO
INSERT [dbo].[Bank] ([id], [name]) VALUES (1, N'Bank_1')
GO
INSERT [dbo].[Bank] ([id], [name]) VALUES (2, N'Bank_2')
GO
INSERT [dbo].[Bank] ([id], [name]) VALUES (3, N'Bank_3')
GO
INSERT [dbo].[Bank] ([id], [name]) VALUES (4, N'Bank_4')
GO
SET IDENTITY_INSERT [dbo].[Bank] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 
GO
INSERT [dbo].[Client] ([id], [name]) VALUES (1, N'Client_1')
GO
INSERT [dbo].[Client] ([id], [name]) VALUES (2, N'Client_2')
GO
INSERT [dbo].[Client] ([id], [name]) VALUES (3, N'Client_3')
GO
INSERT [dbo].[Client] ([id], [name]) VALUES (4, N'Client_4')
GO
INSERT [dbo].[Client] ([id], [name]) VALUES (5, N'Client_5')
GO
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Contract] ON 
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (1, 1, 1, 1, 1, N'abwd1')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (2, 1, 1, 2, 0, N'abwd2')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (3, 1, 1, 3, 0, N'abwd3')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (4, 2, 1, 3, 0, N'abwd4')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (5, 3, 1, 4, 0, N'abwd5')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (6, 3, 1, 3, 0, N'abwd6')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (7, 3, 1, 1, 1, N'abwd7')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (8, 1, 2, 1, 1, N'babwd1')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (9, 1, 2, 2, 0, N'babwd2')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (10, 1, 2, 3, 0, N'babwd3')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (11, 2, 2, 3, 0, N'babwd4')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (12, 3, 2, 4, 0, N'babwd5')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (13, 3, 2, 3, 0, N'babwd6')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (14, 3, 2, 1, 1, N'babwd7')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (15, 1, 3, 1, 0, N'Cabwd1')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (16, 1, 3, 1, 0, N'Cabwd2')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (17, 1, 3, 3, 0, N'Cabwd3')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (18, 2, 3, 3, 1, N'Cabwd4')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (19, 3, 3, 1, 0, N'Cabwd5')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (20, 3, 3, 3, 1, N'Cabwd6')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (21, 3, 3, 1, 0, N'Cabwd7')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (22, 1, 4, 3, 0, N'Dabwd1')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (23, 1, 4, 3, 0, N'Dabwd2')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (24, 1, 4, 3, 1, N'Dabwd3')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (25, 4, 2, 1, 1, N'Eabwd1')
GO
INSERT [dbo].[Contract] ([id], [type_id], [id_client], [id_bank], [stat], [name]) VALUES (26, 3, 2, 2, 1, N'Eabwd2')
GO
SET IDENTITY_INSERT [dbo].[Contract] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 
GO
INSERT [dbo].[Type] ([id], [name]) VALUES (1, N'Type_1')
GO
INSERT [dbo].[Type] ([id], [name]) VALUES (2, N'Type_2')
GO
INSERT [dbo].[Type] ([id], [name]) VALUES (3, N'Type_3')
GO
INSERT [dbo].[Type] ([id], [name]) VALUES (4, N'Type_4')
GO
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Bank] FOREIGN KEY([id_bank])
REFERENCES [dbo].[Bank] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Bank]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Client]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Type] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Type]
GO
USE [master]
GO
ALTER DATABASE [Contract_BankRu_Test] SET  READ_WRITE 
GO
