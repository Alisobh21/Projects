USE [master]
GO
/****** Object:  Database [ExaminationSystem]    Script Date: 4/16/2021 10:05:46 PM ******/
CREATE DATABASE [ExaminationSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExaminationSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ExaminationSystem.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ExaminationSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ExaminationSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ExaminationSystem] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExaminationSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExaminationSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExaminationSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExaminationSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExaminationSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExaminationSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExaminationSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExaminationSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExaminationSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExaminationSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExaminationSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExaminationSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExaminationSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExaminationSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExaminationSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExaminationSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ExaminationSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExaminationSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExaminationSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExaminationSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExaminationSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExaminationSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExaminationSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExaminationSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [ExaminationSystem] SET  MULTI_USER 
GO
ALTER DATABASE [ExaminationSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExaminationSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExaminationSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExaminationSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ExaminationSystem] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ExaminationSystem', N'ON'
GO
ALTER DATABASE [ExaminationSystem] SET QUERY_STORE = OFF
GO
USE [ExaminationSystem]
GO
/****** Object:  ColumnMasterKey [CMK_Auto1]    Script Date: 4/16/2021 10:05:46 PM ******/
CREATE COLUMN MASTER KEY [CMK_Auto1]
WITH
(
	KEY_STORE_PROVIDER_NAME = N'MSSQL_CERTIFICATE_STORE',
	KEY_PATH = N'CurrentUser/my/88EBBE12F8C8DF03A702B5E2CCE43600C0884065'
)
GO
/****** Object:  ColumnEncryptionKey [CEK_Auto1]    Script Date: 4/16/2021 10:05:46 PM ******/
CREATE COLUMN ENCRYPTION KEY [CEK_Auto1]
WITH VALUES
(
	COLUMN_MASTER_KEY = [CMK_Auto1],
	ALGORITHM = 'RSA_OAEP',
	ENCRYPTED_VALUE = 0x016E000001630075007200720065006E00740075007300650072002F006D0079002F0038003800650062006200650031003200660038006300380064006600300033006100370030003200620035006500320063006300650034003300360030003000630030003800380034003000360035001EF7E424E93E71790E97694E2045ACC0A407112027CDE4508F3F90E07F799AA0E6ADAAC9AEB3E3B142D258087DDAD126FFA7FE120D525140F599A9774E82B276EE71799B3DD4871A629B0778C51772C97DF7EB9CEF6D27FF8FCDCFDA9789F949AE41780D000B85F05676A103CBFBB3E7832BB138A0269EF5C77258A25884663317BCDF28D76146964859CBF7693F9533FA98012D13B92BEBDA1239F6860E813E55BC2AB376A1B2789274182D08F1263028B8203A06DDC732AF87987170923F33F29B8A48A789F4194084D586155A1B1DED0667A34D63A45C7F7DAD96BD14C6648DFE451F7A88A9B597659988CE4F0D64BF48236D618A25CA9B2D76A072602F2352700CDBB176E0367F2911221C5E4DF17B33820077D1EC2379242AEE8296C014B9D7D22109BAC632223BF849183C9786E76EE4A7CFBB60950B68DFA1EDB17CC1D7DE2AA24AE1976089FC09C0463986D901AEEBFCEF7CF9A06E8BC7FBE13B46F19410C01448409B750EFD16F4EF7C56D35B685F089D2EFBA1400E7D869C4BEF9BBE9F86BBE8C974AE391ED27607ED108ED4459975F2C3E2C1922EA8E0B1812E784524AC85FCCFA9822D64E92780564D6FAE1E720398DC0FBAF4D137D358E8512F4CFC8FF59D4CE0C0EC0628DA43F6D65C369E8C923FEDF85DBE5C85704CD1234790478C16F620CDDBAE9383D49FF0785A8C61610CECBDDD8CAD7B794E36FC7A95
)
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Sid] [int] NOT NULL,
	[Eid] [int] NOT NULL,
	[Qid] [int] NOT NULL,
	[Given Answer id] [int] NULL,
	[Grade] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC,
	[Eid] ASC,
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](50) NOT NULL,
	[Tid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](50) NOT NULL,
	[Address] [varchar](250) NULL,
	[Phone] [varchar](20) NULL,
	[Date Of Birth] [date] NULL,
	[Gender] [varchar](1) NULL,
	[Social Media] [varchar](250) NULL,
	[Did] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[Duration] [int] NULL,
	[Cid] [int] NULL,
	[Ename] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enrolment]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enrolment](
	[Date] [date] NULL,
	[Cid] [int] NOT NULL,
	[Sid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC,
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Iid] [int] IDENTITY(1,1) NOT NULL,
	[Iname] [varchar](50) NOT NULL,
	[Address] [varchar](250) NULL,
	[Phone] [varchar](20) NULL,
	[Did] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Iid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teach]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teach](
	[Cid] [int] NOT NULL,
	[Iid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC,
	[Iid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[InstInfo]    Script Date: 4/16/2021 10:05:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select   i.Iname ,  s.Sname , c.Cname , totalPointExam
--from Student s , enrolment e , Course c , teach t , Instructor i , 
--(select e.Eid  , sum(q.Points) 'totalPointExam' from	[consists of] c , Question q ,Exam e 
--  where q.Qid = c.Qid and c.Eid = e.Eid
--  group by e.Eid) ExamGrade


--where s.Sid = e.Sid and e.Cid = c.Cid and c.Cid = t.Cid and t.Iid = i.Iid 
--group by i.Iname ,  s.Sname , c.Cname  ,totalPointExam



----- total point For Student in Each Course 
--select  c.cid, sum (a.Grade)  'totalPoinst' , sum(PointCouse.totalPointExam)   from Student s , Exam e , Answer a , Course c 
--,(select e.Cid ,sum(q.Points) 'totalPointExam' from	[consists of] c , Question q ,Exam e 
--where q.Qid = c.Qid and c.Eid = e.Eid
--group by  e.Cid ) as PointCouse
--where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid  and PointCouse.Cid = c.Cid  
--group by   c.cid , PointCouse.totalPointExam 



---------- total point for all Exams in Course 
--(select e.Cid ,sum(q.Points) 'totalPointExam' from	[consists of] c , Question q ,Exam e 
--where q.Qid = c.Qid and c.Eid = e.Eid
--group by  e.Cid ) as PointCouse


--select   i.Iname ,c.Cname  ,PointCouse.totalPointExam , COUNT(s.Sid) 'TotalStudent' from Student s , enrolment e , Course c , teach t , Instructor i ,  
--(select e.Cid ,sum(q.Points) 'totalPointExam' from	[consists of] c , Question q ,Exam e 
--where q.Qid = c.Qid and c.Eid = e.Eid
--group by  e.Cid ) as PointCouse

--where e.Sid = s.Sid and e.Cid = c.Cid and c.Cid = t.Cid and t.Iid = i.Iid and c.Cid = PointCouse.Cid
--group by  i.Iname ,c.Cname , PointCouse.totalPointExam 



--select StudentAll.Cname ,StudentAll.Sname ,SUM(StudentAll.totalPoinst) 'StudentPoints', SUM(StudentAll.tt)'ExamPoints'  from 
--(
--select e.eid , s.Sname , c.Cname, e.ename ,sum (a.Grade)  'totalPoinst' , t.tt  from Student s , Exam e , Answer a , Course c , 
--(select e.Eid  , sum(q.Points) 'tt' from	[consists of] c , Question q ,Exam e 
--where q.Qid = c.Qid and c.Eid = e.Eid
--group by e.Eid) t
--where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid and t.Eid = e.Eid
--group by s.Sname ,c.Cname , e.ename , e.eid ,t.tt


--) as StudentAll
--group by StudentAll.Cname ,StudentAll.Sname


CREATE view  [dbo].[InstInfo]
as
select   i.Iname ,c.Cname,i.Did ,St.StudentPoints ,COUNT(distinct (s.sid)) 'TotalStudent' 
from Student s , enrolment e , Course c , teach t , Instructor i ,
(
select StudentAll.Cname  ,SUM(StudentAll.totalPoinst) 'StudentPoints'  from 
(
select  c.Cname ,sum (a.Grade)  'totalPoinst'  from Student s , Exam e , Answer a , Course c 
where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid 
group by c.Cname 
) as StudentAll
group by StudentAll.Cname 
) as St
where e.Sid = s.Sid and e.Cid = c.Cid and c.Cid = t.Cid and t.Iid = i.Iid  and St.Cname = c.Cname 
group by  i.Iname ,i.Did,c.Cname ,St.StudentPoints



GO
/****** Object:  Table [dbo].[consists of]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consists of](
	[Eid] [int] NOT NULL,
	[Qid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Eid] ASC,
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Qid] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](500) NOT NULL,
	[Points] [int] NOT NULL,
	[Correct Answer id] [int] NULL,
	[QTid] [int] NULL,
	[Cid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ExamInfo1]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ExamInfo1]
as
select e.eid , s.Sname , c.Cname, e.ename ,sum (a.Grade) 'totalPoinst' , t.[Exam Grade ]  from Student s , Exam e , Answer a , Course c , 
(select e.Eid  , sum(q.Points) 'Exam Grade ' from	[consists of] c , Question q ,Exam e 
where q.Qid = c.Qid and c.Eid = e.Eid
group by e.Eid) t
where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid  and t.eid=e.eid
group by s.Sname ,c.Cname , e.ename , e.eid ,t.[Exam Grade ] ,s.Sid
GO
/****** Object:  View [dbo].[InstructorStudentsGrades]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE VIEW [dbo].[InstructorStudentsGrades] AS
  select distinct i.Iname ,i.Iid, c.Cname ,c.Cid,s.Sname ,s.Sid, Info.totalPoinst , Info.[Exam Grade ]
  from Instructor i , Course c , Answer a , teach t , enrolment e , student s , ExamInfo1 Info
  where i.Iid = t.Iid and c.Cid = t.Cid and e.Cid = c.Cid and a.Sid = s.Sid and Info.eid = a.Eid
GO
/****** Object:  View [dbo].[ExamGrade]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ExamGrade]
as
select e.eid  , Sum(q.Points) 'Exam Grade' from exam e , Question q , [consists of] c 
where e.Eid = c.Eid and q.Qid = c.Qid
group by e.Eid
GO
/****** Object:  View [dbo].[ExamInfo]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ExamInfo]
as
select e.eid , s.Sname , c.Cname, e.ename ,sum (a.Grade) 'totalPoinst' , t.[Exam Grade ]  from Student s , Exam e , Answer a , Course c , 
(select e.Eid  , sum(q.Points) 'Exam Grade ' from	[consists of] c , Question q ,Exam e 
where q.Qid = c.Qid and c.Eid = e.Eid
group by e.Eid) t
where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid  and t.eid=e.eid
group by s.Sname ,c.Cname , e.ename , e.eid ,t.[Exam Grade ] ,s.Sid
GO
/****** Object:  Table [dbo].[Choice]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[CHid] [int] IDENTITY(1,1) NOT NULL,
	[Choice] [varchar](100) NOT NULL,
	[Qid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CHid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Did] [int] IDENTITY(1,1) NOT NULL,
	[Dname] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionType](
	[QTid] [int] IDENTITY(1,1) NOT NULL,
	[QType] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QTid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[Tname] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Sid] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (1, 4, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (1, 4, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (1, 4, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (1, 4, 25, 81, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 3, 10, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 9, 37, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 12, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 14, 55, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 18, 67, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 22, 74, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 1, 30, 91, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 4, 5, 19, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 4, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 4, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (2, 4, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (3, 4, 5, 18, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (3, 4, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (3, 4, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (3, 4, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 8, 30, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 20, 70, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 26, 82, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 54, 170, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 2, 55, 173, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 32, 98, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 34, 106, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 36, 113, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 37, 119, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 38, 123, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 39, 127, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 41, 134, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 42, 137, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 44, 145, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 48, 157, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 51, 165, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 52, 167, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (4, 9, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (5, 7, 64, 196, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (5, 7, 69, 216, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (5, 7, 71, 224, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (5, 7, 72, 227, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (5, 7, 75, 239, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 3, 9, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 9, 35, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 12, 47, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 14, 54, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 18, 66, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 22, 74, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 1, 30, 91, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 8, 32, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 13, 53, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 20, 71, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 26, 82, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 54, 171, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 2, 55, 172, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 4, 15, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 10, 38, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 14, 56, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 15, 59, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 17, 65, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 21, 73, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 28, 86, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 3, 29, 88, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 35, 110, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 38, 122, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 40, 132, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 49, 160, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 56, 174, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 57, 176, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 10, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 61, 187, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 63, 195, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 64, 197, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 65, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 66, 204, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 68, 211, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 69, 216, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 70, 219, 5)
GO
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 71, 224, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 88, 293, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 92, 309, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 94, 312, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 95, 314, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 96, 316, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (6, 11, 97, 318, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 3, 9, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 6, 24, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 12, 47, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 14, 54, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 18, 67, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 22, 75, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 1, 30, 90, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 4, 13, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 10, 40, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 14, 55, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 15, 60, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 17, 64, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 21, 72, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 28, 86, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 3, 29, 88, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 4, 5, 19, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 4, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 4, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 4, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 35, 110, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 38, 122, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 40, 130, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 49, 160, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 56, 174, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 57, 176, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 10, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 61, 184, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 63, 195, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 64, 197, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 65, 200, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 66, 204, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 68, 213, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 69, 217, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 70, 219, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 71, 223, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 88, 293, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 92, 309, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 94, 312, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 95, 315, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 96, 316, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (7, 11, 97, 319, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 6, 21, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 8, 32, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 20, 70, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 26, 83, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 54, 170, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 2, 55, 172, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 4, 14, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 10, 38, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 14, 56, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 15, 61, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 17, 65, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 21, 73, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 28, 86, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 3, 29, 88, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 4, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 4, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 4, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 4, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 32, 96, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 36, 113, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 37, 120, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 38, 124, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 39, 125, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 41, 136, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 42, 140, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 44, 148, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 48, 158, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 51, 164, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 52, 166, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 9, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 35, 110, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 38, 124, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 40, 132, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 43, 141, 2)
GO
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 49, 160, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 56, 174, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 57, 176, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 10, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 61, 184, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 63, 195, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 64, 197, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 65, 200, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 66, 204, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 68, 213, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 69, 217, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 70, 220, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 71, 224, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 88, 293, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 92, 309, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 94, 312, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 95, 314, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 96, 316, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (8, 11, 97, 318, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 8, 32, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 13, 53, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 20, 70, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 26, 82, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 54, 170, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 2, 55, 172, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 4, 14, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 10, 38, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 14, 56, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 15, 61, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 17, 65, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 21, 73, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 28, 87, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 3, 29, 88, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 4, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 4, 6, 21, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 4, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 4, 25, 81, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 32, 99, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 34, 108, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 36, 113, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 37, 117, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 38, 124, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 39, 125, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 41, 136, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 42, 140, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 44, 148, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 48, 157, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 51, 164, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 52, 166, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 9, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 35, 110, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 38, 124, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 40, 132, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 49, 160, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 56, 174, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 57, 176, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 10, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 61, 184, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 63, 195, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 64, 196, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 65, 200, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 66, 204, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 68, 213, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 69, 217, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 70, 220, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 71, 224, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 88, 293, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 92, 309, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 94, 312, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 95, 314, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 96, 316, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (9, 11, 97, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 5, 20, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 8, 32, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 9, 37, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 20, 71, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 26, 83, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 54, 171, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 2, 55, 173, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 4, 15, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 10, 38, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 14, 54, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 15, 61, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 17, 65, 3)
GO
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 21, 73, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 28, 87, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 3, 29, 89, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 4, 5, 17, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 4, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 4, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 4, 25, 81, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 32, 98, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 36, 114, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 37, 120, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 38, 122, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 39, 125, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 41, 136, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 42, 140, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 44, 148, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 48, 157, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 51, 164, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 52, 167, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 9, 59, 181, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 35, 110, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 38, 122, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 40, 132, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 49, 160, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 50, 163, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 56, 175, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 57, 177, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 10, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 61, 184, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 63, 195, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 64, 199, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 65, 201, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 66, 204, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 68, 213, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 69, 217, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 70, 219, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 71, 224, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 88, 293, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 92, 309, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 94, 313, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 95, 314, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 96, 316, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (10, 11, 97, 318, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 5, 17, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 8, 32, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 9, 37, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 13, 53, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 20, 71, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 26, 83, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 54, 170, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 2, 55, 172, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 4, 14, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 10, 38, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 13, 53, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 14, 57, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 15, 61, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 17, 65, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 21, 73, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 28, 86, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 3, 29, 88, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 4, 5, 17, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 4, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 4, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 4, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 32, 99, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 36, 114, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 37, 120, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 38, 122, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 39, 125, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 41, 136, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 42, 140, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 44, 148, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 48, 158, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 50, 163, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 51, 164, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 52, 166, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 9, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 35, 110, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 38, 122, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 40, 132, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 49, 160, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 56, 174, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 57, 177, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (11, 10, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 4, 13, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 10, 40, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 13, 51, 0)
GO
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 14, 54, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 15, 58, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 17, 64, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 21, 72, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 28, 86, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 3, 29, 88, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 6, 77, 248, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 6, 79, 256, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 6, 80, 260, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 6, 82, 268, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (12, 6, 85, 278, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 3, 9, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 6, 23, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 12, 48, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 14, 55, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 18, 66, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 22, 74, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 24, 79, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 25, 80, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 1, 30, 91, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 34, 106, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 35, 111, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 38, 123, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 40, 130, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 43, 142, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 49, 160, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 56, 174, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 57, 176, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 10, 59, 180, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 61, 185, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 63, 192, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 64, 196, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 65, 200, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 66, 202, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 68, 210, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 69, 214, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 70, 218, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 71, 224, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 88, 290, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 92, 306, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 94, 312, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 95, 314, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 96, 316, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (13, 11, 97, 318, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 5, 17, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 6, 23, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 8, 30, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 20, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 26, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 54, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 2, 55, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 6, 77, 247, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 6, 79, 256, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 6, 80, 260, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 6, 82, 268, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 6, 85, 278, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 32, 96, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 34, 107, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 36, 114, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 37, 118, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 38, 121, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 39, 127, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 41, 136, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 42, 138, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 43, 142, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 44, 145, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 48, 157, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 50, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 51, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 52, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (14, 9, 59, NULL, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (15, 6, 77, 247, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (15, 6, 79, 255, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (15, 6, 80, 258, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (15, 6, 82, 266, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (15, 6, 85, 280, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (16, 6, 77, 247, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (16, 6, 79, 257, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (16, 6, 80, 259, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (16, 6, 82, 267, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (16, 6, 85, 278, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 3, 9, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 6, 21, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 9, 35, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 12, 47, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 14, 55, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 18, 66, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 22, 74, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 24, 78, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 25, 81, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 1, 30, 91, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 5, 19, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 6, 22, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 8, 30, 0)
GO
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 9, 34, 5)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 13, 50, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 19, 68, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 20, 70, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 26, 82, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 54, 170, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 2, 55, 173, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 32, 98, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 34, 105, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 36, 113, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 37, 117, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 38, 122, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 39, 126, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 41, 134, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 42, 137, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 43, 141, 2)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 44, 145, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 48, 157, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 50, 162, 3)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 51, 165, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 52, 167, 0)
INSERT [dbo].[Answer] ([Sid], [Eid], [Qid], [Given Answer id], [Grade]) VALUES (17, 9, 59, 181, 3)
GO
SET IDENTITY_INSERT [dbo].[Choice] ON 

INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (1, N'COUNT()', 1)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (2, N'NUMBER()', 1)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (3, N'SUM()', 1)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (4, N'COUNT(*)', 1)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (5, N'MOST', 2)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (6, N'TOP', 2)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (7, N'MAX', 2)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (8, N'UPPER', 2)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (9, N'DELETE', 3)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (10, N'REMOVE', 3)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (11, N'DROP', 3)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (12, N'CLEAR', 3)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (13, N'UPDATE and TRUNCATE', 4)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (14, N'SELECT and INSERT', 4)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (15, N'GRANT and REVOKE', 4)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (16, N'ROLLBACK and SAVEPOINT', 4)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (17, N'SELECT COUNT() FROM Persons', 5)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (18, N'SELECT COLUMNS() FROM Persons', 5)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (19, N'SELECT COLUMNS(*) FROM Persons', 5)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (20, N'SELECT COUNT(*) FROM Persons', 5)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (21, N'update only one row at a time', 6)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (22, N'update more than one row at a time', 6)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (23, N'delete more than one row at a time', 6)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (24, N'delete only one row at a time', 6)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (26, N'DELETE and UPDATE clauses', 7)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (27, N'UPDATE clause only', 7)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (28, N'All of the mentioned', 7)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (29, N'SELECT clause only', 7)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (30, N'SELECT DIFFERENT', 8)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (31, N'SELECT UNIQUE', 8)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (32, N'SELECT DISTINCT', 8)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (33, N'SELECT ALL', 8)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (34, N'ORDER BY', 9)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (35, N'SORT', 9)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (36, N'ORDER', 9)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (37, N'SORT BY', 9)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (38, N'ROLLBACK', 10)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (39, N'COMMIT', 10)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (40, N'TRUNCATE', 10)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (41, N'DELETE', 10)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (42, N'DROP FROM CUSTOMER', 11)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (43, N'UPDATE FROM CUSTOMER', 11)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (44, N'REMOVE FROM CUSTOMER', 11)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (45, N'DELETE FROM CUSTOMER WHERE', 11)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (46, N'Subqueries', 12)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (47, N'Union Join', 12)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (48, N'Natural join', 12)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (49, N'All of the Mentioned', 12)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (50, N'Equi-join', 13)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (51, N'Natural join', 13)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (52, N'Outer join', 13)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (53, N'All of the Mentioned', 13)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (54, N'Equi-join', 14)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (55, N'Natural join', 14)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (56, N'Outer join', 14)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (57, N' All of the Mentioned', 14)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (58, N'Equi-join', 15)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (59, N'Natural join', 15)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (60, N'Outer join', 15)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (61, N'Cartesian join', 15)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (62, N'True', 16)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (63, N'False', 16)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (64, N'True', 17)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (65, N'False', 17)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (66, N'True', 18)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (67, N'False', 18)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (68, N'True', 19)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (69, N'False', 19)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (70, N'True', 20)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (71, N'False', 20)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (72, N'True', 21)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (73, N'False', 21)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (74, N'True', 22)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (75, N'False', 22)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (76, N'True', 23)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (77, N'False', 23)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (78, N'True', 24)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (79, N'False', 24)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (80, N'True', 25)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (81, N'False', 25)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (82, N'True', 26)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (83, N'False', 26)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (84, N'True', 27)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (85, N'False', 27)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (86, N'True', 28)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (87, N'False', 28)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (88, N'True', 29)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (89, N'False', 29)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (90, N'True', 30)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (91, N'False', 30)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (92, N'Java Virtual Machine', 31)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (93, N'Common Language Runtime', 31)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (94, N'Common Type System', 31)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (95, N'Common Language Specification', 31)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (96, N'mscoree.dll', 32)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (97, N'mcoree.dll', 32)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (98, N'msoree.dll', 32)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (99, N'mscor.dll', 32)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (101, N'C#', 33)
GO
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (102, N'J#', 33)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (103, N'C++', 33)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (104, N'C', 33)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (105, N' Function', 34)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (106, N'Metadata', 34)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (107, N'Method', 34)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (108, N'Managed code', 34)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (109, N'Class()', 35)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (110, N' Main()', 35)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (111, N'Submain()', 35)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (112, N'Namespace', 35)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (113, N'Constant', 36)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (114, N'Reference type', 36)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (115, N'Variable', 36)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (116, N'Object', 36)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (117, N'Keywords', 37)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (118, N'literal', 37)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (119, N'variables', 37)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (120, N'Identifiers', 37)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (121, N'Bool type', 38)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (122, N'Instance type', 38)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (123, N'Class type', 38)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (124, N'Object type', 38)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (125, N'Unary operator', 39)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (126, N'Ternary operator', 39)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (127, N'Decision operator', 39)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (128, N'Functional operator', 39)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (129, N'Looping', 40)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (130, N'Functional', 40)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (131, N'Exponential', 40)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (132, N'Conditional', 40)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (133, N'Loop', 41)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (134, N'Exit', 41)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (135, N'Break', 41)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (136, N'Continue', 41)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (137, N'Operator', 42)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (138, N'Integer', 42)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (139, N'Exponential', 42)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (140, N'Array', 42)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (141, N'Reference', 43)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (142, N'Logical', 43)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (143, N'Value', 43)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (144, N'Arithmetic', 43)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (145, N'Square', 44)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (146, N'Triangular', 44)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (147, N'Rectangular', 44)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (148, N'Cube', 44)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (149, N'Input', 45)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (150, N'Reference', 45)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (151, N'Value', 45)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (152, N'Output', 45)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (153, N'True', 46)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (154, N'False', 46)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (155, N'True', 47)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (156, N'False', 47)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (157, N'True', 48)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (158, N'False', 48)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (160, N'True', 49)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (161, N'False', 49)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (162, N'True', 50)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (163, N'False', 50)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (164, N'True', 51)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (165, N'False', 51)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (166, N'True', 52)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (167, N'False', 52)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (168, N'True', 53)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (169, N'False', 53)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (170, N'True', 54)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (171, N'False', 54)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (172, N'True', 55)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (173, N'False', 55)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (174, N'True', 56)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (175, N'False', 56)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (176, N'True', 57)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (177, N'False', 57)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (178, N'True', 58)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (179, N'False', 58)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (180, N'True', 59)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (181, N'False', 59)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (182, N'True', 60)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (183, N'False', 60)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (184, N'static', 61)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (185, N' node-resource', 61)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (186, N' http', 61)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (187, N' node-static', 61)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (188, N'Great concurrency', 62)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (189, N' Generally fast', 62)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (190, N'  It provides an easy way to build scalable networ', 62)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (191, N' All of these', 62)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (192, N'Loop', 63)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (193, N'Print', 63)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (194, N'Eval', 63)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (195, N' All of these', 63)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (196, N'npm --ver', 64)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (197, N'npm --version', 64)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (198, N'npm help', 64)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (199, N' None of the above', 64)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (200, N'True', 65)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (201, N'False', 65)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (202, N'C#', 66)
GO
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (203, N'C++', 66)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (204, N'JavaScript', 66)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (205, N'Java', 66)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (206, N'C#', 67)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (207, N'C++', 67)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (208, N'JavaScript', 67)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (209, N'Java', 67)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (210, N'regular expressions', 68)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (211, N' string patterns', 68)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (212, N'strings', 68)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (213, N' All of above', 68)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (214, N'.java', 69)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (215, N' .txt', 69)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (216, N' .node', 69)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (217, N' .js', 69)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (218, N' module.spread', 70)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (219, N' module.exports', 70)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (220, N' module.expose', 70)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (221, N' None of Above', 70)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (222, N'$ npm --version', 71)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (223, N' $ npm getVersion', 71)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (224, N'$ node --version', 71)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (225, N'$ node getVersion', 71)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (226, N' Callback is a technique in which a method call ba', 72)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (227, N' Callback is an asynchronous equivalent for a func', 72)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (228, N' Both of the above.', 72)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (229, N' None of the above.', 72)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (230, N'Ctrl + B', 73)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (231, N'Ctrl + K', 73)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (232, N'Ctrl + T', 73)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (233, N' Ctrl + C', 73)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (234, N'Microsoft Chakra', 74)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (235, N'Chorme V8', 74)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (236, N'Node En', 74)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (237, N'SpiderMonkey', 74)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (238, N'21', 75)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (239, N'18', 75)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (240, N'19', 75)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (241, N'20', 75)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (242, N'put on', 76)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (243, N'put of', 76)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (244, N'put away', 76)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (245, N'put off', 76)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (246, N'same', 77)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (247, N'common', 77)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (248, N'mutual', 77)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (249, N'similar', 77)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (250, N'is finished', 78)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (251, N' was finished', 78)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (252, N'had finished', 78)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (253, N'not finished', 78)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (254, N'in', 79)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (255, N'about', 79)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (256, N'at', 79)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (257, N'for', 79)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (258, N'so', 80)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (259, N'very', 80)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (260, N'too', 80)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (261, N'more', 80)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (262, N'so', 81)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (263, N'very', 81)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (264, N'too', 81)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (265, N'more', 81)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (266, N'inplausible', 82)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (267, N' unplausible', 82)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (268, N'implausible', 82)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (269, N'displausible', 82)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (270, N'energy', 83)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (271, N'intensity', 83)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (272, N'vehemence', 83)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (273, N'strength', 83)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (274, N'stupid', 84)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (275, N'stingy', 84)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (276, N'boorish', 84)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (277, N'unkind', 84)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (278, N'protect', 85)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (279, N'block', 85)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (280, N'hinder', 85)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (281, N'induce', 85)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (282, N'shift', 86)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (283, N'build', 86)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (284, N'repeat', 86)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (285, N'hide', 86)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (286, N'nodejs sample.js', 87)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (287, N'nodejs sample.js', 87)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (288, N'sample.js', 87)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (289, N'None of the above', 87)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (290, N'Highly scalable servers for Web Applications', 88)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (291, N'Real time Data intensive', 88)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (292, N'Builds fast and scalable network Applications', 88)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (293, N'All of the above', 88)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (294, N'npm --version', 89)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (295, N'npm --ver', 89)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (296, N'npm help', 89)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (297, N'None of the above', 89)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (298, N'It provides an easy way to build scalable network ', 90)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (299, N'Generally fast', 90)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (300, N'Great concurrency', 90)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (301, N'All of these', 90)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (302, N'Eval', 91)
GO
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (303, N'Print', 91)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (304, N'Loop', 91)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (305, N'All of these', 91)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (306, N'strings', 92)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (307, N'string patterns', 92)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (308, N'regular expressions', 92)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (309, N'All of these', 92)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (310, N'True', 93)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (311, N'False', 93)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (312, N'True', 94)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (313, N'False', 94)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (314, N'True', 95)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (315, N'False', 95)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (316, N'True', 96)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (317, N'False', 96)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (318, N'True', 97)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (319, N'False', 97)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (320, N'True', 98)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (321, N'False', 98)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (322, N'True', 99)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (323, N'False', 99)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (324, N'a. to live', 100)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (325, N'b. to have lived', 100)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (326, N'c. to be lived', 100)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (327, N'd. to be living', 100)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (328, N'a. on account of', 101)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (329, N'b. due', 101)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (330, N'c. because', 101)
INSERT [dbo].[Choice] ([CHid], [Choice], [Qid]) VALUES (331, N'd. owing', 101)
SET IDENTITY_INSERT [dbo].[Choice] OFF
GO
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 3)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 6)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 9)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 12)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 14)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 18)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 22)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 24)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 25)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (1, 30)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 5)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 6)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 8)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 9)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 13)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 19)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 20)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 26)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 54)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (2, 55)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 4)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 10)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 13)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 14)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 15)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 17)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 21)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 24)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 28)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (3, 29)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (4, 5)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (4, 6)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (4, 24)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (4, 25)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 76)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 78)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 79)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 80)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 81)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 82)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 83)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 84)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 85)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (5, 86)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (6, 77)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (6, 79)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (6, 80)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (6, 82)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (6, 85)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (7, 64)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (7, 69)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (7, 71)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (7, 72)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (7, 75)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 61)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 63)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 66)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 67)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 69)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 70)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 71)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 72)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 73)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (8, 74)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 32)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 34)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 36)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 37)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 38)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 39)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 41)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 42)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 43)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 44)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 48)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 50)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 51)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 52)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (9, 59)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 34)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 35)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 38)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 40)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 43)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 49)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 50)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 56)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 57)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (10, 59)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 61)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 63)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 64)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 65)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 66)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 68)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 69)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 70)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 71)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 88)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 92)
GO
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 94)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 95)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 96)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (11, 97)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 63)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 64)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 69)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 70)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 72)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 75)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 87)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 90)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 91)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 92)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 93)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 95)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 96)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 97)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (12, 98)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 2)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 4)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 5)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 7)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 8)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 9)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 10)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 11)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 13)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 15)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 23)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 24)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 26)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 27)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (13, 29)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 33)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 41)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 42)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 44)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 45)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 47)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 51)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 57)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 58)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (14, 59)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 3)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 6)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 7)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 12)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 14)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 16)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 17)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 18)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 21)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 25)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 26)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 27)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 30)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 54)
INSERT [dbo].[consists of] ([Eid], [Qid]) VALUES (15, 55)
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (1, N'C#', 4)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (2, N'SQL', 3)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (3, N'JS', 8)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (4, N'Node', 8)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (5, N'Angular', 8)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (6, N'English', 9)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (7, N'MySql', 3)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (8, N'French', 9)
INSERT [dbo].[Course] ([Cid], [Cname], [Tid]) VALUES (14, N'NLP', 2)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Did], [Dname]) VALUES (2, N'CS')
INSERT [dbo].[Department] ([Did], [Dname]) VALUES (3, N'CSYS')
INSERT [dbo].[Department] ([Did], [Dname]) VALUES (4, N'Graphics')
INSERT [dbo].[Department] ([Did], [Dname]) VALUES (5, N'HR')
INSERT [dbo].[Department] ([Did], [Dname]) VALUES (1, N'IS')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-03' AS Date), 1, 1)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 1, 4)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 1, 6)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 1, 7)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 1, 8)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 1, 9)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 1, 10)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 1, 11)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 1, 13)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 1, 14)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 1, 17)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-02' AS Date), 2, 1)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-03' AS Date), 2, 2)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-03' AS Date), 2, 3)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 2, 4)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 2, 6)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 2, 7)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 2, 8)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 2, 9)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 2, 10)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 2, 11)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 2, 12)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 2, 13)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 2, 14)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 2, 17)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 3, 6)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 4, 5)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 4, 6)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 4, 7)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 4, 8)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 4, 9)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 4, 10)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 4, 11)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 4, 13)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 5, 1)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-04' AS Date), 6, 4)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 6, 12)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 6, 14)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 6, 15)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 6, 16)
INSERT [dbo].[enrolment] ([Date], [Cid], [Sid]) VALUES (CAST(N'2021-01-07' AS Date), 8, 12)
GO
SET IDENTITY_INSERT [dbo].[Exam] ON 

INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (1, 60, 2, N'Midterm')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (2, 60, 2, N'Midterm B')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (3, 60, 2, N'Midterm c')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (4, 1, 2, N'Quiz1')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (5, 15, 6, N'Midterm')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (6, 10, 6, N'Quiz')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (7, 10, 4, N'Quiz')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (8, 30, 4, N'Midterm')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (9, 30, 1, N'Midterm')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (10, 10, 1, N'Quiz')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (11, 60, 4, N'NodeTerm')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (12, 60, 4, N'Quiz2')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (13, 60, 2, N'Test')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (14, 60, 1, N'test1')
INSERT [dbo].[Exam] ([Eid], [Duration], [Cid], [Ename]) VALUES (15, 60, 2, N'Sqltest')
SET IDENTITY_INSERT [dbo].[Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([Iid], [Iname], [Address], [Phone], [Did]) VALUES (1, N'Ahmed Ali', N'Cairo', N'0113549852', 1)
INSERT [dbo].[Instructor] ([Iid], [Iname], [Address], [Phone], [Did]) VALUES (2, N'Mohamed Mohsen', N'Cairo', N'0115545852', 1)
INSERT [dbo].[Instructor] ([Iid], [Iname], [Address], [Phone], [Did]) VALUES (3, N'Zaki Adel', N'Cairo', N'0109549852', 2)
INSERT [dbo].[Instructor] ([Iid], [Iname], [Address], [Phone], [Did]) VALUES (4, N'Israa Sobhy', N'Alex', N'0153549852', 3)
INSERT [dbo].[Instructor] ([Iid], [Iname], [Address], [Phone], [Did]) VALUES (5, N'Manar Mohamed', N'Alex', N'0113649852', 3)
INSERT [dbo].[Instructor] ([Iid], [Iname], [Address], [Phone], [Did]) VALUES (6, N'Adel Bahaa', N'Tanta', N'0103540922', 4)
INSERT [dbo].[Instructor] ([Iid], [Iname], [Address], [Phone], [Did]) VALUES (7, N'Ahmed Zaki', N'Cairo', N'0122549852', 5)
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (2, N'Which SQL keyword is used to retrieve a maximum value?', 5, 7, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (3, N'Which of the following SQL clauses is used to DELETE tuples from a database table?', 5, 9, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (4, N'Which of the following are TCL commands?', 5, 15, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (5, N'With SQL, how can you return the number of not null records in the “Persons” table?', 5, 17, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (6, N'The UPDATE SQL clause can _____________', 5, 22, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (7, N'The UNION SQL clause can be used with _____________', 5, 29, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (8, N'Which SQL statement is used to return only different values?', 5, 32, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (9, N'Which SQL keyword is used to sort the result-set?', 5, 34, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (10, N'Which TCL command undo all the updates performed by the SQL in the transaction?', 5, 39, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (11, N'The command to remove rows from a table ‘CUSTOMER’ is _______', 5, 45, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (12, N'Which of the following is one of the basic approaches for joining tables?', 5, 48, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (13, N'What type of join is needed when you wish to return rows that do have matching values?', 5, 52, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (14, N'What type of join is needed when you wish to include rows that do not have matching values?', 5, 57, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (15, N'Which is not a type of join in T-SQL?', 5, 59, 1, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (16, N'The condition in a WHERE clause can refer to only one value.', 3, 63, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (17, N'The ADD command is used to enter one row of data or to add multiple rows as a result of a query.', 3, 65, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (18, N'SQL provides the AS keyword, which can be used to assign meaningful column names to the results of queries using the SQL built-in functions.', 3, 66, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (19, N'The SELECT command, with its various clauses, allows users to query the data contained in the tables and ask many different questions or ad hoc queries.', 3, 68, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (20, N'A SELECT statement within another SELECT statement and enclosed in square brackets ([...]) is called a subquery.', 3, 71, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (21, N'The rows of the result relation produced by a SELECT statement can be sorted, but only by one column.', 3, 73, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (22, N'There is an equivalent join expression that can be substituted for all subquery expressions.', 3, 75, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (23, N'A dynamic view is one whose contents materialize when referenced.', 3, 76, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (24, N'SQL is a programming language.', 3, 79, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (25, N'SELECT DISTINCT is used if a user wishes to see duplicate columns in a query.', 3, 81, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (26, N'Indexes can usually be created for both primary and secondary keys', 3, 82, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (27, N'Each index consumes extra storage space and also requires overhead maintenance time whenever indexed data', 3, 84, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (28, N'The HAVING clause acts like a WHERE clause, but it identifies groups that meet a criterion, rather than rows.', 3, 86, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (29, N'SQL is a data sublanguage.', 3, 88, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (30, N'The qualifier DISTINCT must be used in an SQL statement when we want to eliminate duplicate rows.', 3, 90, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (31, N'CLR is the .NET equivalent of _________.', 2, 92, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (32, N'The CLR is physically represented by an assembly named _______', 2, 96, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (33, N'The ____ language allows more than one method in a single class', 2, 101, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (34, N'In C#, a subroutine is called a ________.', 2, 107, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (35, N'All C# applications begin execution by calling the _____ method.', 2, 110, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (36, N'A _______ is an identifier that denotes a storage location', 2, 115, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (37, N'_________ are reserved, and cannot be used as identifiers.', 2, 117, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (38, N'Boxing converts a value type on the stack to an ______ on the heap', 2, 124, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (39, N'The character pair ?: is a________________available in C#.', 2, 126, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (40, N'C# has _______ operator, useful for making two way decisions.', 2, 132, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (41, N'________causes the loop to continue with the next iteration after skipping any statements in between.', 2, 136, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (42, N'An ____ is a group of contiguous or related data items that share a common name.', 2, 140, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (43, N'Arrays in C# are ______ objects', 2, 141, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (44, N'Multidimensional arrays are sometimes called _______ Arrays.', 2, 147, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (45, N'______ parameters are used to pass results back to the calling method.', 2, 152, 1, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (46, N'Local variables are visible only in the block they are declared.', 3, 153, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (47, N'NULLA structure in C# provides a unique way of packing together data of different types.', 3, 155, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (48, N'C# does not support parameter-less constructors.', 3, 157, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (49, N'Struct’s data members are private by default.', 3, 160, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (50, N'A copy constructor creates an object by copying variables from another object.', 3, 162, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (51, N'The methods that have the same name, but different parameter lists and different definitions is called method Overloading.', 3, 164, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (52, N'The C# provides special methods known as accessor methods to provide access to data members.', 3, 166, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (53, N'When an instance method declaration includes the abstract modifier, the method is said to be an abstract method.', 3, 168, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (54, N'The theory of encapsulation implies that user can control the access to a class, method, or variable.', 3, 170, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (55, N'Inheritance is transitive in nature.', 3, 172, 2, 2)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (56, N'The point at which an exception is thrown is called the calling point.', 3, 175, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (57, N'In C#, having unreachable code is always a method.', 3, 177, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (58, N'C# treats the multiple catch statements like cases in an if statement.', 3, 179, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (59, N'C# supports a technique known as Iterative Interface Implementation, which allows a method to specify explicitly the name of the interface it is implementing.', 3, 181, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (60, N'The reason that C# does not support multiple inheritances is because of method collision.', 3, 183, 2, 1)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (61, N'Which module is used to serve static resources in Node.js?', 5, 184, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (62, N'What is the advantage of using node.js?', 5, 191, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (63, N'What is REPL in Node.js?', 5, 195, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (64, N'How can we check the current version of NPM?', 5, 197, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (65, N'Is console a global object?', 3, 201, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (66, N'Which of the followings are valid languages for Node.js?', 5, 204, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (67, N'Which of the followings are valid languages for Node.js?', 5, 208, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (68, N'Which of following are a valid form of route path?', 5, 213, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (69, N'Which extension is used to save NodeJs files?', 5, 217, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (70, N'How Node.js modules are availble externally', 5, 219, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (71, N'Command to show installed version of Node?', 5, 224, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (72, N'What is Callback?', 5, 228, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (73, N'How do you kill a process in Node.js?', 5, 233, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (74, N'Node uses _________ engine in core.*', 5, 235, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (75, N'How many Node object methods are available?', 5, 239, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (76, N'The Chairman is ill and we’ll have to ……. the meeting for a few days.', 5, 245, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (77, N'The cat and the dog have a ……. enemy in the rat.', 5, 247, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (78, N'He told me that he …….. watching the movie.', 5, 252, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (79, N'He is very good …….. making stories.', 5, 256, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (80, N'I do my work …….. carefully to make mistakes.', 5, 260, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (81, N'I do my work …….. carefully to make mistakes.', 5, 264, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (82, N'choose the word opposite in meaning to:  (Plausible)', 5, 268, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (83, N'choose the word opposite in meaning to:  ( Frailty)', 5, 273, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (84, N'choose the word opposite in meaning to:  ( Genial )', 5, 276, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (85, N'choose the word opposite in meaning to:  ( Prevent )', 5, 281, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (86, N'choose the word opposite in meaning to:  ( Demolish )', 5, 283, 1, 6)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (87, N' Which statement executes the code of sample.js file', 5, 287, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (88, N'What are the key features of Node.js', 5, 293, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (89, N'How can we check the current version of NPM', 5, 294, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (90, N' What is the advantage of using node.js', 5, 301, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (91, N'What is REPL in Node.js', 5, 305, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (92, N'Which of following are a valid form of route path', 5, 309, 1, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (93, N'By default, npm installs any dependency in the local mode', 3, 310, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (94, N'net.isIP(input) returns 6 for IP version 6 addresses.', 3, 312, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (95, N'Each type of Stream is an EventEmitter.', 3, 314, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (96, N'Is node js multithreaded?', 3, 317, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (97, N'By default, npm installs any dependency in the local mode.', 3, 318, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (98, N'By default, npm installs any dependency in the global mode', 3, 321, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (99, N'Node js is a single threaded application but supports concurrency.', 3, 322, 2, 4)
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (100, N'I''m very happy _____ in India. I really miss being there.', 5, 325, 1, 6)
GO
INSERT [dbo].[Question] ([Qid], [Question], [Points], [Correct Answer id], [QTid], [Cid]) VALUES (101, N'They didn''t reach an agreement ______ their differences.', 5, 328, 1, 6)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionType] ON 

INSERT [dbo].[QuestionType] ([QTid], [QType]) VALUES (1, N'MCQ')
INSERT [dbo].[QuestionType] ([QTid], [QType]) VALUES (2, N'TrueFalse')
SET IDENTITY_INSERT [dbo].[QuestionType] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (1, N'Omar Mohamed', N'Cairo', N'01155131135', CAST(N'1998-11-10' AS Date), N'M', N'https://www.facebook.com/omar.abuelenen587/', 1)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (2, N'Ali Hassan', N'Tanta', N'010256823', CAST(N'1995-01-03' AS Date), N'M', N'https://www.facebook.com/ali.hassan.3950', 1)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (3, N'AmJad', N'Cairo', N'0105486245', CAST(N'1995-01-03' AS Date), N'M', N'https://www.facebook.com/amgd.sobhy.581', 2)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (4, N'Marwan Mohsen', N'Cairo', N'012546853', CAST(N'1999-01-04' AS Date), N'M', N'https://www.facebook.com/marwanmohsen999', 3)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (5, N'Ramdan Sobhy', N'Alex', N'0158632542', CAST(N'1995-01-04' AS Date), N'M', N'https://www.facebook.com/RamadanSob7i', 4)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (6, N'Ibrahim Hamad', N'Tanta', N'01010001122', CAST(N'1996-01-01' AS Date), N'M', N'https://www.facebook.com/ibrahim.hamad.22', 2)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (7, N'Eman Mohamed', N'Cairo', N'01011001100', CAST(N'1995-06-01' AS Date), N'F', N'https://www.facebook.com/profile.php?id=100026742969381', 3)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (8, N'Mohamed Fayez', N'Cairo', N'0121122445566', CAST(N'1966-02-01' AS Date), N'M', N'https://www.facebook.com/mohamed.fayez.146612', 2)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (9, N'Ali Elashry', N'Tanta', N'0155522449966', CAST(N'1995-01-01' AS Date), N'M', N'https://www.facebook.com/elmandlawy.elashry', 1)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (10, N'Alaa El-Ghara', N'Tanta', N'01500112244', CAST(N'1996-07-01' AS Date), N'M', N'https://www.facebook.com/alaa.elghara.1', 3)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (11, N'Ahmed Elkhouly', N'Alex', N'01225242244', CAST(N'1996-11-01' AS Date), N'M', N'https://www.facebook.com/ahmed.elkhouly.33046', 2)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (12, N'Riham Saeed', N'Cairo', N'0125985432', CAST(N'1900-01-07' AS Date), N'F', N'https://www.facebook.com/reham.saeed.54922', 4)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (13, N'Sara Abbas', N'Alex', N'0101548523', CAST(N'1998-01-07' AS Date), N'F', N'https://www.facebook.com/sara.abbas.98622', 4)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (14, N'Aya Saeed', N'Alex', N'0115458462', CAST(N'1996-01-10' AS Date), N'F', N'https://www.facebook.com/smeshmes', 3)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (15, N'Radwa elsherbiny', N'Cairo', N'010254623', CAST(N'1900-01-07' AS Date), N'F', N'https://www.facebook.com/radwa.el.sherbiny', 5)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (16, N'Manal Aziz', N'Tanta', N'0114589693', CAST(N'2021-01-07' AS Date), N'F', N'https://www.facebook.com/manal.aziz.129', 2)
INSERT [dbo].[Student] ([Sid], [Sname], [Address], [Phone], [Date Of Birth], [Gender], [Social Media], [Did]) VALUES (17, N'Yousif Saeed ', N'Tanta', N'0152636982', CAST(N'1995-01-07' AS Date), N'M', N'https://www.facebook.com/youssef.saeed.796', 2)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[teach] ([Cid], [Iid]) VALUES (1, 1)
INSERT [dbo].[teach] ([Cid], [Iid]) VALUES (2, 1)
INSERT [dbo].[teach] ([Cid], [Iid]) VALUES (3, 2)
INSERT [dbo].[teach] ([Cid], [Iid]) VALUES (4, 2)
GO
SET IDENTITY_INSERT [dbo].[Topic] ON 

INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (6, N'Data Science')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (3, N'Database')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (7, N'Graphics')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (9, N'Languages')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (2, N'Machine Learning')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (5, N'Network')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (1, N'Operating System')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (4, N'Programming')
INSERT [dbo].[Topic] ([Tid], [Tname]) VALUES (8, N'Web')
SET IDENTITY_INSERT [dbo].[Topic] OFF
GO
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'omar@gmail.com', N'123', 1)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'ali@gmail.com', N'123', 2)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'amjad@gmail.com', N'123', 3)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'marwan@gmail.com', N'123', 4)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'ramdan@gmail.com', N'123', 5)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'ibrahim@gmail.com', N'123', 6)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'eman@gmail.com', N'123', 7)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'mohamed@gmail.com', N'123', 8)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'ali1@gmail.com', N'123', 9)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'alaa@gmail.com', N'123', 10)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'ahmed@gmail.com', N'123', 11)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'riham@gmail.com', N'123', 12)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'sara@gmail.com', N'123', 13)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'AyaSaeed@gmail.com', N'123', 14)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'manal@gmail.com', N'123', 16)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'Yousef@gmail.com', N'123', 17)
INSERT [dbo].[User] ([Email], [Password], [Sid]) VALUES (N'Radwa@gmail.com', N'123', 15)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__83BFD849E719B3C5]    Script Date: 4/16/2021 10:05:47 PM ******/
ALTER TABLE [dbo].[Department] ADD UNIQUE NONCLUSTERED 
(
	[Dname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Question__0DA875F8D8423F82]    Script Date: 4/16/2021 10:05:47 PM ******/
ALTER TABLE [dbo].[QuestionType] ADD UNIQUE NONCLUSTERED 
(
	[QType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Topic__48581FED156923E8]    Script Date: 4/16/2021 10:05:47 PM ******/
ALTER TABLE [dbo].[Topic] ADD UNIQUE NONCLUSTERED 
(
	[Tname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__A9D10534C22BDCDA]    Script Date: 4/16/2021 10:05:47 PM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[enrolment] ADD  DEFAULT (NULL) FOR [Date]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT (NULL) FOR [Social Media]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([Eid])
REFERENCES [dbo].[Exam] ([Eid])
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([Qid])
REFERENCES [dbo].[Question] ([Qid])
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_Answer] FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_Answer]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_AnswerExam] FOREIGN KEY([Eid])
REFERENCES [dbo].[Exam] ([Eid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_AnswerExam]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_AnswerExam1] FOREIGN KEY([Qid])
REFERENCES [dbo].[Question] ([Qid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_AnswerExam1]
GO
ALTER TABLE [dbo].[consists of]  WITH CHECK ADD FOREIGN KEY([Eid])
REFERENCES [dbo].[Exam] ([Eid])
GO
ALTER TABLE [dbo].[consists of]  WITH CHECK ADD FOREIGN KEY([Qid])
REFERENCES [dbo].[Question] ([Qid])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([Tid])
REFERENCES [dbo].[Topic] ([Tid])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [fk_Topic] FOREIGN KEY([Tid])
REFERENCES [dbo].[Topic] ([Tid])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [fk_Topic]
GO
ALTER TABLE [dbo].[enrolment]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
GO
ALTER TABLE [dbo].[enrolment]  WITH CHECK ADD FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
GO
ALTER TABLE [dbo].[enrolment]  WITH CHECK ADD  CONSTRAINT [fk_CourseID] FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[enrolment] CHECK CONSTRAINT [fk_CourseID]
GO
ALTER TABLE [dbo].[enrolment]  WITH CHECK ADD  CONSTRAINT [fk_StudentID] FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[enrolment] CHECK CONSTRAINT [fk_StudentID]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [fk_Exam] FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [fk_Exam]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD FOREIGN KEY([Did])
REFERENCES [dbo].[Department] ([Did])
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [fk_Department1] FOREIGN KEY([Did])
REFERENCES [dbo].[Department] ([Did])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [fk_Department1]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Correct Answer id])
REFERENCES [dbo].[Choice] ([CHid])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([QTid])
REFERENCES [dbo].[QuestionType] ([QTid])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [fk_Question1] FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [fk_Question1]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [fk_QuestionType] FOREIGN KEY([QTid])
REFERENCES [dbo].[QuestionType] ([QTid])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [fk_QuestionType]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Did])
REFERENCES [dbo].[Department] ([Did])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_Department] FOREIGN KEY([Did])
REFERENCES [dbo].[Department] ([Did])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_Department]
GO
ALTER TABLE [dbo].[teach]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
GO
ALTER TABLE [dbo].[teach]  WITH CHECK ADD FOREIGN KEY([Iid])
REFERENCES [dbo].[Instructor] ([Iid])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
GO
/****** Object:  StoredProcedure [dbo].[Answerinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[Answerinsertupdatedelete]  (    @Sid           INT   = 0  ,
										         @Eid           INT   = 0  ,
												 @GivenAnswerid INT   = NULL,
												 @Grade         INT   = 0,
												 @Qid		    INT   = 0,
												 @StatementType NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Answer    
                        (Sid,Eid,[Given Answer id],Grade,Qid)  
            VALUES      (@Sid,@Eid,@GivenAnswerid,@Grade,@Qid)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Answer   
			Where  Sid = @Sid and Eid=Eid and [Given Answer id]=@GivenAnswerid and Qid = @Qid
			END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Answer  
            SET    Sid               =  @Sid,
				   Eid               = @Eid,
				   [Given Answer id] = @GivenAnswerid,
				   Grade =@Grade,
				   Qid = @Qid
            WHERE  Sid = @Sid and Eid=Eid and [Given Answer id]=@GivenAnswerid and Qid = @Qid
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Answer     
            WHERE   Sid = @Sid and Eid=Eid and [Given Answer id]=@GivenAnswerid
        END  
  END
GO
/****** Object:  StoredProcedure [dbo].[Choiceinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Choiceinsertupdatedelete]  (@CHid            INT  ,  
                                            @Choice          varchar(50)  =''    ,
										      @Qid             INT  =0,
                                            @StatementType   NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Choice    
                        (Choice,Qid)  
            VALUES      
						  (@Choice,@Qid)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Choice   
			  Where CHid=@CHid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Choice    
            SET    Choice   = @Choice,
				     Qid      = @Qid
            WHERE  CHid=@CHid  
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Choice    
            WHERE  CHid=@CHid 
        END  
  END 
GO
/****** Object:  StoredProcedure [dbo].[consistsofinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create PROCEDURE [dbo].[consistsofinsertupdatedelete]  (@Eid       INT   = 0  ,
										         @Qid      INT   = 0  ,
												 @StatementType NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO [consists of]    
                        (Eid,Qid)  
            VALUES      (@Eid,@Qid)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   [consists of]   
			Where  Eid = @Eid and Qid=@Qid
			END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE [consists of]   
            SET    Eid   =  @Eid,
				   Qid   = @Qid
            WHERE  Eid = @Eid and Qid=@Qid
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM [consists of]    
            WHERE   Eid = @Eid and Qid=@Qid
        END  
  END
GO
/****** Object:  StoredProcedure [dbo].[Courseinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Courseinsertupdatedelete] (@Cid            INT  ,   
                                          @Cname           varchar(50)  = '',
										    @Tid             INT          = 0,
                                          @StatementType   NVARCHAR(20) ='Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Course   
                        (Cname,Tid)  
            VALUES     
						  (@Cname,@Tid)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Course  
			  Where Cid=@Cid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Course   
            SET    Cname = @Cname,
				     Tid   = @Tid
            WHERE  Cid   = @Cid  
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Course   
            WHERE  Cid = @Cid  
        END  
  END 
GO
/****** Object:  StoredProcedure [dbo].[Departmentinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Departmentinsertupdatedelete] (@Did            INT  ,  
                                               @Dname           varchar(50) ='',  
                                               @StatementType NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Department  
                                    (Dname)  
            VALUES     
                                    (@Dname)  
         END  

       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Department 
			Where Did=@Did
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Department  
            SET    Dname = @Dname
            WHERE  Did   = @Did  
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Department  
            WHERE  Did = @Did  
        END  
  END 
GO
/****** Object:  StoredProcedure [dbo].[enrolmentinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[enrolmentinsertupdatedelete]  (  @Date     Date  =''  ,
										         @Cid      INT   = 0  ,
										         @Sid      INT   = 0  ,
												 @StatementType NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO enrolment    
                        (Date,Cid,Sid)  
            VALUES      (@Date,@Cid,@Sid)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   enrolment   
			Where  Cid = @Cid and Sid=@Sid
			END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE enrolment    
            SET    Date  =  @Date,
				   Sid   =  @Sid,
				   Cid   = @Cid
            WHERE  Cid = @Cid and Sid=@Sid
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM enrolment    
            WHERE   Cid = @Cid and Sid=@Sid
        END  
  END
GO
/****** Object:  StoredProcedure [dbo].[Examinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Examinsertupdatedelete]  (@Eid            INT  ,  
                                          @Duration       INT =0   ,
										    @Cid            INT = 0,
											@Ename			Nvarchar(50)= ' ',
                                          @StatementType NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Exam   
                        (Duration,Cid,Ename)  
            VALUES      
						  (@Duration,@Cid,@Ename)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Exam  
			  Where Eid=@Eid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Exam   
            SET    Duration = @Duration,
				     Cid      = @Cid
            WHERE  Eid=@Eid  
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Exam   
            WHERE  Eid=@Eid 
        END  
  END 
GO
/****** Object:  StoredProcedure [dbo].[GenerateExam]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateExam] (@Cid INT , 
							   @NChoice INT =0 , 
							   @Ntrue INT =0)


AS
declare @countNchoice int = (select Count(Qid) from Question where QTid=1 and CID=@Cid) ;
declare @countTrue int = (select Count(Qid) from Question where QTid=2 and CID=@Cid);


if (@countNchoice >= @NChoice and @countTrue >= @Ntrue )
begin 
SELECT * from 
(select TOP (@NChoice) * FROM Question
where QTid = 1 and CID = @Cid
ORDER BY NEWID() ) Cho

union

SELECT * from 
(select TOP (@Ntrue) * FROM Question
where QTid = 2 and CID = @Cid
ORDER BY NEWID() ) T
end

else 
begin
 return 0
end
GO
/****** Object:  StoredProcedure [dbo].[getAllDeptNames]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[getAllDeptNames] 
  as
  select Dname from Department 
GO
/****** Object:  StoredProcedure [dbo].[GetAnswerID]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE procedure [dbo].[GetAnswerID] (@Answer nvarchar(50), @Qid int)
  as
  select c.CHid from Choice c where c.Choice=@Answer and c.Qid = @Qid
GO
/****** Object:  StoredProcedure [dbo].[getCourseIDbyName]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getCourseIDbyName]
@Cname Nvarchar(50)
AS
SELECT Cid 
FROM Course
WHERE Cname = @Cname;
GO
/****** Object:  StoredProcedure [dbo].[getCourseNamebyId]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getCourseNamebyId]
@id INT
AS
SELECT Cname 
FROM Course
WHERE Cid = @id;
GO
/****** Object:  StoredProcedure [dbo].[getCourseNames]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getCourseNames]
AS
SELECT Cname FROM Course;
GO
/****** Object:  StoredProcedure [dbo].[GetDidByDname]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create Procedure [dbo].[GetDidByDname] (@dname nvarchar(50))
  as
  select Did from Department where Dname = @dname
GO
/****** Object:  StoredProcedure [dbo].[getEid]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getEid]
AS
select top (1)Eid  from Exam order by Eid desc
GO
/****** Object:  StoredProcedure [dbo].[GetEidbyEname]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetEidbyEname]  (@Ename nvarchar(50), @cid int )
  as
  select Eid , Duration from Exam where Ename = @Ename and Cid = @cid
GO
/****** Object:  StoredProcedure [dbo].[GetExamQuestion]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[GetExamQuestion]  (@Eid int )
  as
  select q.Question , q.Qid , q.Points from [consists of] c , Question q where q.Qid = c.Qid and c.Eid = @Eid
GO
/****** Object:  StoredProcedure [dbo].[GetExamsByCourseID]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[GetExamsByCourseID]  (@Cid int)
  as
  select Ename from Exam where Cid = @Cid
GO
/****** Object:  StoredProcedure [dbo].[getlastCHid]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getlastCHid]
AS
SELECT Max(CHid) as CHid
FROM Choice
GO
/****** Object:  StoredProcedure [dbo].[getQid]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[getQid]
AS
select top (1)Qid  from Question order by Qid desc
GO
/****** Object:  StoredProcedure [dbo].[GetQIdByName]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[GetQIdByName]  (@Question varchar(500) )
  as
  select q.Qid from  Question q where q.Question = @Question 
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionAnswer]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetQuestionAnswer]  (@Question varchar(500) )
  as
  select c.Choice from Choice c , Question q where c.Qid = q.Qid and q.Question = @Question 
GO
/****** Object:  StoredProcedure [dbo].[getSid]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getSid]
AS
select top (1)sid  from Student order by sid desc
GO
/****** Object:  StoredProcedure [dbo].[GetStudentAllExams]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetStudentAllExams] (@sid int)
as
select s.Sname ,e.Ename, c.Cid ,c.Cname, sum (a.Grade)  'totalPoinst' from Student s , Exam e , Answer a , Course c
where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid and s.Sid = @sid
group by s.Sname , c.Cid , e.Eid,e.Ename,c.Cname
GO
/****** Object:  StoredProcedure [dbo].[GetStudentCourse]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[GetStudentCourse] (@Sid  int )

  as 

  select c.Cname  from enrolment e, Course c where e.Cid = c.Cid and e.Sid = @Sid
GO
/****** Object:  StoredProcedure [dbo].[GetStudentGrade]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetStudentGrade] (@sid int, 
								  @Cid int,
								  @Eid int)
as
update Answer 
set Grade = q.Points 
from Answer a inner join Question q 
on q.Qid = a.Qid and q.[Correct Answer id]=a.[Given Answer id] 

update Answer 
set Grade = 0 
from Answer a inner join Question q 
on q.Qid = a.Qid and q.[Correct Answer id] !=a.[Given Answer id] 

select s.Sname , c.Cid , sum (a.Grade)  'totalPoinst' from Student s , Exam e , Answer a , Course c
where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid and s.Sid = @sid and c.Cid = @Cid and e.Eid=@Eid
group by s.Sname , c.Cid
GO
/****** Object:  StoredProcedure [dbo].[GetStudentGrade1]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetStudentGrade1] (@sid int, 
								  @Cid int,
								  @Eid int)
as
update Answer 
set Grade = q.Points 
from Answer a inner join Question q 
on q.Qid = a.Qid and q.[Correct Answer id]=a.[Given Answer id] 

update Answer 
set Grade = 0 
from Answer a inner join Question q 
on q.Qid = a.Qid and q.[Correct Answer id] !=a.[Given Answer id] 



select s.Sname , c.Cid , sum (a.Grade)  'totalPoinst' from Student s , Exam e , Answer a , Course c
where a.Sid = s.Sid and e.Eid = a.Eid and e.Cid = c.Cid and s.Sid = @sid and c.Cid = @Cid and e.Eid=@Eid
group by s.Sname , c.Cid
GO
/****** Object:  StoredProcedure [dbo].[getTopIDbyName]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[getTopIDbyName]
@Tname Nvarchar(50)
AS
SELECT tid 
FROM Topic
WHERE Tname = @Tname;
GO
/****** Object:  StoredProcedure [dbo].[getTopNames]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[getTopNames]
AS
SELECT Tname 
FROM Topic
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUser]    (@Sid int =0,
								@Email Nvarchar(50)=' ',
								@Password Nvarchar(50)=' ')

AS  
  Begin
  Insert into dbo.[User]  (Sid,Email,Password) Values (@Sid , @Email , @Password)
  End
GO
/****** Object:  StoredProcedure [dbo].[Instructorinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Instructorinsertupdatedelete] (@Iid            INT  ,  
                                               @Iname           varchar(50)  = '',  
                                               @address         varchar(50)  = '',  
                                               @Phone           VARCHAR(20)  = '',  
                                               @Did             INT=0,
                                               @StatementType   NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Instructor  
                        (Iname, Address,Phone,  Did)  
            VALUES      
                        (@Iname,@address,@Phone,@Did)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Instructor 
			  Where Iid=@Iid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Instructor  
            SET    Iname   = @Iname,  
                   Address = @address,  
                   Phone   = @Phone,  
				     Did     = @Did
            WHERE  Iid = @Iid  
        END  
       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Instructor  
            WHERE  Iid = @Iid   
        END  
  END   
GO
/****** Object:  StoredProcedure [dbo].[InstructorStudent]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InstructorStudent]
as
select  i.Iname , c.Cname , count(s.Sname) as 'total Student' from   Course c , teach t , Instructor i , enrolment e , Student s 
where c.Cid = t.Cid and i.Iid = t.Iid and e.Sid = s.Sid and e.Cid = c.Cid
group by i.Iname , c.Cname 
GO
/****** Object:  StoredProcedure [dbo].[InstructorStudentWithID]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InstructorStudentWithID] @Iid int 
as
select  i.Iname , c.Cname , count(s.Sname) as 'total Student' from   Course c , teach t , Instructor i , enrolment e , Student s 
where c.Cid = t.Cid and i.Iid = t.Iid and e.Sid = s.Sid and e.Cid = c.Cid and i.Iid = @Iid
group by i.Iname , c.Cname 
GO
/****** Object:  StoredProcedure [dbo].[Loginform]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[Loginform] (@email nvarchar(50) ,@password  nvarchar(50))
AS
select sid from [User] where Email=@email and Password=@password
GO
/****** Object:  StoredProcedure [dbo].[Questioninsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Questioninsertupdatedelete]  (  @Qid	                INT  ,  
                                               @Question            varchar(500) = '' ,
										         @Points              INT          = 0  ,
										         @CorrectAnswerid     INT          = 0  ,
										         @QTid                INT          = 0   ,
											     @Cid                 INT          = 0,
                                               @StatementType NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Question    
                        (Question,Points,[Correct Answer id],QTid,CID)  
            VALUES      (@Question,@Points,@CorrectAnswerid,@QTid,@Cid)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Question   
			Where Qid = @Qid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Question    
            SET    Question            = @Question,
				   Points                = @Points,
				   [Correct Answer id]   = @CorrectAnswerid,
				   QTid                  = @QTid,
				   CID                   = @Cid
            WHERE    Qid = @Qid
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Question    
            WHERE   Qid = @Qid
        END  
  END
GO
/****** Object:  StoredProcedure [dbo].[QuestionTypeinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[QuestionTypeinsertupdatedelete] (@QTid            INT  ,  
                                                 @QType           varchar(50) ='',  
                                                 @StatementType   NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO [Question Type]   
                        (QType)  
            VALUES     
						  (@QType)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   [Question Type] 
			  Where QTid=@QTid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE [Question Type]   
            SET    QType = @QType
            WHERE  QTid = @QTid  
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM [Question Type]   
            WHERE  QTid = @QTid  
        END  
  END
GO
/****** Object:  StoredProcedure [dbo].[studentinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[studentinsertupdatedelete] (@sid            INT  ,  
                                            @Sname           varchar(50) ='',  
                                            @address         varchar(50)='',  
                                            @Phone           VARCHAR(20)='',  
                                            @Date_Of_Birth   Date='', 
										      @Social_Media    VARCHAR(250)='',
										      @Did             INT=0,
										      @Gender          nVarchar(1)='',
                                            @StatementType   NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Student  
                        (Sname,  Address,Phone,[Date Of Birth],[Social Media],Did,[Gender])  
            VALUES      
						  (@Sname,@address,@Phone,@Date_Of_Birth,@Social_Media,@Did,@Gender)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Student 
			Where sid=@sid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Student  
            SET    Sname = @Sname,  
                   Address = @address,  
                   Phone = @Phone,  
                   [Date Of Birth] = @Date_Of_Birth  ,
				     [Social Media] = @Social_Media ,
				     Did = @Did,
				     Gender = @Gender
            WHERE  sid = @sid  
        END

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Student  
            WHERE  sid = @sid  
        END  
  END   
GO
/****** Object:  StoredProcedure [dbo].[Topicinsertupdatedelete]    Script Date: 4/16/2021 10:05:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Topicinsertupdatedelete] (@Tid             INT  ,  
                                          @Tname           varchar(50) ='',  
                                          @StatementType   NVARCHAR(20) = 'Select')  
AS  
  BEGIN  
      IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO Topic   
                        (Tname)  
            VALUES     
                        (@Tname)  
         END  
  
       IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   Topic  
			  Where Tid=@Tid
        END  
  
       IF @StatementType = 'Update'  
        BEGIN  
            UPDATE Topic   
            SET    Tname = @Tname
            WHERE  Tid = @Tid  
        END  

       IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM Topic   
            WHERE  Tid = @Tid  
        END  
  END 
GO
USE [master]
GO
ALTER DATABASE [ExaminationSystem] SET  READ_WRITE 
GO
