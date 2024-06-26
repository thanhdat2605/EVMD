USE [master]
GO
/****** Object:  Database [EVMD]    Script Date: 1/5/2020 1:09:55 PM ******/
CREATE DATABASE [EVMD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EVMD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EVMD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EVMD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EVMD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EVMD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EVMD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EVMD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EVMD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EVMD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EVMD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EVMD] SET ARITHABORT OFF 
GO
ALTER DATABASE [EVMD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EVMD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EVMD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EVMD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EVMD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EVMD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EVMD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EVMD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EVMD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EVMD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EVMD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EVMD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EVMD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EVMD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EVMD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EVMD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EVMD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EVMD] SET RECOVERY FULL 
GO
ALTER DATABASE [EVMD] SET  MULTI_USER 
GO
ALTER DATABASE [EVMD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EVMD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EVMD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EVMD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EVMD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EVMD', N'ON'
GO
ALTER DATABASE [EVMD] SET QUERY_STORE = OFF
GO
USE [EVMD]
GO
/****** Object:  Table [dbo].[Data]    Script Date: 1/5/2020 1:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[Word] [nvarchar](50) NOT NULL,
	[Meaning] [nvarchar](max) NULL,
	[Usage] [nvarchar](max) NULL,
	[Example] [nvarchar](max) NULL,
	[MaGrade] [int] NULL,
	[Lop10] [bit] NULL,
	[Lop11] [bit] NULL,
	[Lop12] [bit] NULL,
	[ID] [int] NULL,
 CONSTRAINT [PK_Data] PRIMARY KEY CLUSTERED 
(
	[Word] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 1/5/2020 1:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeInt] [nvarchar](50) NOT NULL,
	[MaGrade] [int] NOT NULL,
 CONSTRAINT [PK_Grade_1] PRIMARY KEY CLUSTERED 
(
	[MaGrade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade10]    Script Date: 1/5/2020 1:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade10](
	[Word] [nvarchar](50) NOT NULL,
	[Meaning] [nvarchar](max) NOT NULL,
	[Usage] [nvarchar](max) NULL,
	[Example] [nvarchar](max) NULL,
 CONSTRAINT [PK_Grade10] PRIMARY KEY CLUSTERED 
(
	[Word] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade11]    Script Date: 1/5/2020 1:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade11](
	[Word] [nvarchar](50) NOT NULL,
	[Meaning] [nvarchar](max) NOT NULL,
	[Usage] [nvarchar](max) NULL,
	[Example] [nvarchar](max) NULL,
 CONSTRAINT [PK_Grade11] PRIMARY KEY CLUSTERED 
(
	[Word] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade12]    Script Date: 1/5/2020 1:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade12](
	[Word] [nvarchar](50) NOT NULL,
	[Meaning] [nvarchar](max) NOT NULL,
	[Usage] [nvarchar](max) NULL,
	[Example] [nvarchar](max) NULL,
 CONSTRAINT [PK_Grade12] PRIMARY KEY CLUSTERED 
(
	[Word] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 1/5/2020 1:09:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Permission] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'abbreviation', N'sự tóm tắt, sự tóm gọn', N'danh từ (noun)', N'abbreviation table: bảng tóm tắt.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Abelian category', N'phạm trù Aben', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'above', N'trên, ở phía trên', N'giới từ (preposition)', N'', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'abscissa', N'hoành độ', N'danh từ (noun)', N'From the definition of a vector, we conclude that two vectors are equal if and only if they have equal abscissas and equal ordinate: Từ định nghĩa tọa độ của vector, ta thấy hai vector bằng nhau khi và chỉ khi chúng có hành độ bằng nhau và tung độ bằng nhau.', 12, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'absolute', N'tuyệt đối', N'tính từ (adjective)', N'absolute value: giá trị tuyệt đối.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'absolute uncertainties', N'sai số tuyệt đối ', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'absolute value bar', N'dấu giá trị tuyệt đối', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'absolute values', N'giá trị tuyệt đối', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'abstract category', N'phạm trù trừu tượng', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'absurd', N'vô lí', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'accept', N'thừa nhận', N'động từ (verb)', N'we accept the below theorem: Ta thừa nhận định lí sau đây.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'accumulative carry', N'số mang sang được tích luỹ', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'accuracy', N'độ chính xác', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'across', N'cắt', N'động từ (verb)', N'a reflection across line IM: phép đối xứng đi cắt đường thẳng IM.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'acute', N'nhọn', N'tính từ (adjective)', N'acute angle: góc nhọn
', 11, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'addition', N'phép cộng', N'danh từ (noun)', N'rule of addition:qui tắc cộng.
', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'additive category', N'phạm trù cộng tính', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'adsolute value', N'giá trị tuyệt đối', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'algebra', N'Đại số', N'danh từ (noun)', N'It''s a algebra 10: Nó là quyển sách đại số 10', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'alternate', N'so le', N'động từ (verb)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'altitude', N'đường cao', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'amount', N'số lượng, lượng', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'analogue calculator', N'máy tính tương tự, máy tính mô hình', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'analyze', N'phân tích', N'động từ (verb)', N'analyze vectors AC and BD: phân tích các vectơ AC và BD.
', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Angle', N'Góc', N'danh từ (noun)', N'Angle between two vector: Góc giữa hai vector.
Trigonometric values of any angle: Giá trị lượng giác của vector bất kì.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'angle between two lines', N'góc giữa hai đường thẳng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'anti-clockwise', N'ngược chiều kim đồng hồ', N'tính từ (adjective)', N'the positive direction of the rotation is the positive orientation of a trigonometric cicle meaning is anti-clockwise: chiều dương của phép quay là chiều dương của đường tròn lượng giác nghĩa là ngược chiều kim đồng hồ.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'apex', N'đỉnh', N'danh từ (noun)', N'S is the apex of the paramid SABC: S là đỉnh của hình chóp SABC.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'application', N'việc áp dụng', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'approach', N'dần tới (v.), sự gần đúng, phép xấp xỉ (n.)', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Approximate', N'Xấp xỉ', N'tính từ (adjective)', N'We get only approximate numbers during measurement and calculations: Trong đo đạc, tính toán ta thường chỉ nhận được các số gần đúng.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'approximate numbers', N'số gần đúng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Arbitrary', N'Tùy ý', N'tính từ (adjective)', N'Given an arbitrary point M of the Oxy coordinate plane: Cho bất kì một điểm M trong mặt phẳng Oxy.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Arc', N'Cung', N'danh từ (noun)', N'Symmetric arcs: Cung đối nhau.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'area', N'diện tích', N'danh từ (noun)', N'Among those, let find the greastest area: trong những cái sau, hãy tìm ra hình có diện tích lớn nhất.', 12, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'area of a circle', N'diện tích của hình tròn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Argument', N'lập luận', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'arithmetic sequence', N'cấp số cộng', N'danh từ (noun)', N'An arithmetic sequence is a (finite or infinite) sequence, where each term after the first is the sum of itsprevious term and a constant d: cấp số cộng là một dãy số (hữu hạng hay vô hạng) trong đó kể từ số hạng thứ hai, mỗi số hạng đề bằng số hạng đứng ngay trước nó công với một số không đổi d.', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'arrange', N'sắp xếp', N'động từ (verb)', N'arrange points I in ascending order and compile a sign chart: sắp xếp các điểm I theo thứ tự tăng dần và lập bảng biến thiên.', 12, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'arrangement', N'chỉnh hợp', N'danh từ (noun)', N'rule of addthe result of taking different k elements of the set A and arranging them in some order is called a k arrangement of given n elements: kết quả của việ lấy k phần tử khác nhau từ n phần tử của tập hợp A và sắp xếp lại theo một thứ tự nào đó được gọi là một chỉnh hợp chập k của n phần tử.
ition:qui tắc cộng.
', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'ascend', N'lên, tăng lên', N'động từ (verb)', N'arrange points I in ascending order and compile a sign chart: sắp xếp các điểm I theo thứ tự tăng dần và lập bảng biến thiên.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'assertion', N'khẳng định', N'danh từ (noun)', N'Prove the assertion 3 in the Note above : chứng minh khẳng định 3 trong chú ý.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'assess', N'khỏa sát', N'động từ (verb)', N'applications of differentitation in assessing and graphings functions: ứng dụng đạo hàm để khảo sát và vẽ đồ thị của hàm số.', 12, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'assessing', N'sự khảo sát', N'danh từ (noun)', N'applications of differentitation in assessing and graphings functions: ứng dụng đạo hàm để khảo sát và vẽ đồ thị của hàm số.', 12, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'associate', N'tương ứng, liên kết', N'tính từ (adjective)', N'An associate degree program in mathematics is typically a 2-year transfer program for students who plan to go on to pursue a bachelor''s degree in such majors as actuarial science, engineering or accounting: Một chương trình cấp bằng liên kết trong toán học thường là chương trình chuyển tiếp 2 năm cho những sinh viên dự định tiếp tục theo đuổi bằng cử nhân trong các chuyên ngành như khoa học tính toán, kỹ thuật hoặc kế toán.', 12, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'asymptote', N'tiệm cận', N'danh từ (noun)', N'An asymptote is a value that you get closer and closer to, but never quite reach: Một tiệm cận là một giá trị mà bạn ngày càng gần hơn, nhưng không bao giờ đạt được.
the graph equation y = 1 / 2x is an asymptote:phương trình đồ thị y=1/2x là một đường tiệm cận.', 12, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'attain', N'đạt được ', N'động từ (verb)', N'we should say that f(x) attains maximum at x0: ta nói rẳng hàm số f(x) đạt đến cực đại tại x0.', 12, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'automatic calculation', N'sự tính toán tự động', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Average', N'trung bình', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Axiom', N'tiền đề ', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Axis', N'Trục', N'danh từ (noun)', N'parabola y=x^2 has the axis of symmetru Oy: parabol y=x^2 có trục đối xứng là Oy.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'base', N'đáy (hình học); cơ số (đại số)', N'danh từ (noun)', N'ABC is the base of the paramid SABC: ABC là đáy của hình chóp SABC.
changing to the same base: đưa về cùng cơ số.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'base face', N'mặt đáy', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'base of a vector', N'giá của vectơ', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'base of the vector', N'giá của vector', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'bearing capacity', N'tải dung', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Binary', N'Hệ nhị phân', N'danh từ (noun)', N'The binary numeral system uses only two digits (0 và 1): Trong hệ nhị phân chỉ có 2 chữ số được sử đụng (0 và 1).', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'binary numeral system', N'hệ thống số nhị phân', N'danh từ (noun)', N'', NULL, 1, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Binomial', N'Nhị thức', N'danh từ (noun)', N'Linear binomials: Nhị thức bậc nhất.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'biquadratic equation', N'phương trình trùng phương', N'cụm danh từ (noun phrase)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'biquadratic function', N'hàm số trùng phương', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'bisect', N'chia đôi', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'bisectrix', N'đường phân giác', N'danh từ (noun)', N'You''ll find four possible triangles depending on which instrument you leave out, and two distinct paths on each:Bạn sẽ tìm thấy bốn tam giác khả thi tùy thuộc vào loại nhạc cụ bạn bỏ ra, và hai đường phân biệt trên mỗi tam giác.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'bound', N'giới hạn', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'bounded', N'bị giới hạn', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'calculate', N'tính toán', N'động từ (verb)', N'let''s calculate expression 29x12: hãy tính biểu thức 29x12.', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Calculation', N'Phép tính', N'danh từ (noun)', N'Do the following calculation 156x290: thực hiện phép tính 156x290.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'calculator', N'dụng cụ tính toán, máy tính', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'calculus', N'phép tính, tính toán', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'calculus of variations', N'tính biến phân', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'calibrate', N'định số, xác định các hệ số; chia độ lấy mẫu', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'calibration', N'sự định cỡ; sự lấy mẫu; sự chia độ', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'calk', N'sao, can (can dầu, can mười lít)', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cancel', N'giản ước (phân phối), gạch bỏ', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cancel out', N'triệt tiêu lẫn nhau, giản ước', N'cụm động từ (verb phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cancellable', N'giản ước được', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cancellation', N'sự giản ước; sự triệt tiêu nhau', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'candle-power', N'lực ánh sáng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'canonical', N'chính tắc', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Canonical equation', N'Phương trình chính tắc', N'danh từ (noun)', N' Equation x^2/a^2 =y^2/b^2 is called the canonical equation of an ellipse: Phương trình x^2/a^2 =y^2/b^2 được gọi là phương trình chính tắc của ellipse.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cantilever', N'dầm chìa, côngxon, giá đỡ', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'capacity', N'dung lượng, dung tích, năng lực, công suất, khả năng, khả năng thông qua', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'card', N'tấm bìa, phiếu tính có lỗ, bảng, quân bài', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cardinal', N'cơ bản, chính', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cardinality', N'bản số, lực lượng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cardioid', N'đường hình tim', N'danh từ (noun)', N'đường hình tim có đồ thị r=a(1-cosθ)', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'carriage', N'bàn trượt (của máy tính trên bàn), xe (lửa, ngựa)', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'carry', N'số mang sang hàng tiếp theo, sự chuyển sang, mang sang', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'case', N'trường hợp', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cast', N'ném, quăng', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'casting out', N'phương pháp thử tính (nhân hay cộng)', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'categorical', N'(thuộc) phạm trù', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'category', N'phạm trù, hạng mục', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'category of sets', N'phạm trù tập hợp', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'center', N'tâm', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'central angle', N'góc ở tâm', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Centroid', N'Trọng tâm', N'danh từ (noun)', N'O is a centroid of triangle ABC: O là trọng tâm của tam giác ABC.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'certain', N'chắc chắn', N'tính từ (adjective)', N'certain event: biến cố chắc chắn.', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'channel capacity', N'khả năng thông qua của kênh', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'chapter', N'chương', N'danh từ (noun)', N'', 10, 1, 1, 1, NULL)
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'characteristic', N'Nét đặc trưng', N'danh từ (noun)', N'Showing the characteristics of A''s elements: Chỉ ra tính chất đặc trưng cho các phần tử của A. ', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'chord', N'dây cung', N'danh từ (noun)', N'A chord of a circle is a straight line segment whose endpoints both lie on the circle: Dây cung của một đường tròn là một đoạn thẳng có hai mút nằm trên đường tròn.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'circle', N'đường tròn', N'danh từ (noun)', N'Draw a circle 30-centimetre-radius: vẽ hình tròn với bán kính 30cm.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Circumcircle', N'Ngoại tiếp', N'tính từ (adjective)', N'Triangle ABC is circumcircled in the circle with center O:Tam giác ABC ngoại tiếp đường tròn tâm O.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'circumference', N'chu vi đường tròn', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'close the bracket', N'đóng ngoặc', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'closed interval', N'đoạn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Closed inteval', N'Đoạn', N'danh từ (noun)', N'Closed interval [a;b]: Đoạn [a;b]', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cocomplete category', N'phạm trù đối đầy đủ', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Coefficient', N'Hệ số', N'danh từ (noun)', N'''a'' is a coefficient of the quation ax+b=0: ''a'' là hệ số của phương trình ax+b=0.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'coincide', N'trùng, chồng', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'coincident', N'trùng', N'tính từ (adjective)', N'the line a is coincident with the line b: đường thẳng a trung với đường thẳng b.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'colinear', N'đường thẳng', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'collectively', N'một cách chung nhất', N'động từ (verb)', N'strictly increasing or decreasing functions on K are collectively called monotonic function on K: hàm số đồng biến hoặc nghịch biến trên K được gọi chung là hàm số đơn điệu trên K.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'collinear', N'thẳng hàng', N'tính từ (adjective)', N'three collinear points A,B,C: ba điểm thẳng hàng A,B,C.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'colocally category', N'phạm trù địa phương', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Combination', N'tổ hợp', N'danh từ (noun)', N'Suppose set A has n elements (n>=1). Each subset of k elements of A is called a k-combination of the given n elements: Giả sử tập A có n phần tử (n>=1). Mỗi tập con gồm k phần tử của A được gọi là tổ hợp chập k của n phần tử đã cho.', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'combinatoric', N'đại số tổ hợp', N'danh từ (noun)', N'Combinatorics is an area of mathematics primarily concerned with counting, both as a means and an end in obtaining results, and certain properties of finite structures:toán học tổ hợp là một ngành toán học rời rạc, nghiên cứu về các cấu hình kết hợp các phần tử của một tập hợp có hữu hạn phần tử', 11, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'comment', N'nhận xét', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'common', N'thường xuyên, thập phân', N'danh từ (noun)', N'some common trigonometry equations: một số phương trình lượng giác thường gặp
common logarithm: logarit thập phân.
', 11, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'common difference', N'công sai', N'danh từ (noun)', N'number d is called the common difference of an arithmetic sequence: số d được gọi là công sai cảu cấp số cộng.
', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'common point', N'điểm chung', N'danh từ (noun)', N'the common point of two planes: điểm chung của hai mặt phẳng.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'common ratio', N'công bội', N'danh từ (noun)', N'number q is called the common ratio of the geometric sequence: số q được gọi là công bội của cấp số nhân.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'compile', N'lập', N'động từ (verb)', N'arrange points I in ascending order and compile a sign chart: sắp xếp các điểm I theo thứ tự tăng dần và lập bảng biến thiên.', 12, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Complement ', N'Phần bù', N'danh từ (noun)', N'The conplement of set A is the set of elements not in A: Phần bù của tập hợp A là tập hợp các phần từ không thuộc vào A.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'complement of two sets', N'phần bù của 2 tập hợp', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'complementary', N'đối', N'tính từ (adjective)', N'complementary event: biến cố đối.', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'complete category', N'phạm trù đầy đủ', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'complex', N'phức', N'tính từ (adjective)', N'complex number: số phức.', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'complex conjugate', N'số phức liên hợp', N'danh từ (noun)', N'complex conjugate of z : số phức liên hợp của z', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'complex numbers', N'số phức', N'danh từ (noun)', N'He classified real and complex numbers into classes which are algebraically independent: Anh ấy phân loại số thực và số phức thành các tập đại số độc lập.', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'complex-valued', N'hàm phức', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'composite fumction', N'hàm hợp', N'danh từ (noun)', N'we call y=f(g(x)) is the composite function of function y=f(u) with u=g(x): ta nói hàm y=f(g(x)) là hợp hàm của hàm số y=f(u) với u=g(x).', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'compute', N'tính', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'concave', N'lõm', N'tính từ (adjective)', N'concave downward arcs,concave upward arcs: điểm lồi , điểm lõm.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'concave downward arcs', N'cung lồi', N'danh từ (noun)', N'At any point of the arc AC, the tangent always lies above AC. AC is called concave downward arc : Tại mọi điểm của cung AC, tiếp tuyến luôn luôn ở phía trên AC. AC được gọi là một cung lồi.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'concave upward arcs', N'cung lõm', N'danh từ (noun)', N'At any point of the arc AC, the tangent always lies below AC. AC is called concave upward arc : Tại mọi điểm của cung AC, tiếp tuyến luôn luôn ở phía dưới AC. AC được gọi là một cung lõm
', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Concept', N'Khái niệm', N'danh từ (noun)', N'Sets are one of the most fundamental concepts in mathematics: Tập hợp là một khái niệm cơ bản của toán học. ', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'conclusion', N'Kết luận', N'danh từ (noun)', N'The conclusion of your solution is good, but the final sentence is too long and complicated: Kết luận bài làm của bạn tốt đấy, nhưng câu cuối cùng quá dài và phức tạp.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Concrete', N'Cụ thể ', N'tính từ (adjective)', N'T is a concrete value: T là một giá trị cụ thể.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'concurrent', N'đồng qui', N'tính từ (adjective)', N'prove 3 lines d,a,b is concurrent: chứng minh 3 đường thẳng d,a,b đồng qui', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'condition', N'điều kiện', N'danh từ (noun)', N'The sufficient condition of the monotonicity of a function was proved by the following theorem: điều kiện đủ về tính chất đơn điệu của hàm số được chứng minh dựa vào định lí sau đây.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cone', N'hình nón ', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'congruent ', N'giống nhau, tương tự, đồng dạng', N'tính từ (adjective)', N'rotational symmetry maps a line onto a line that is paralel to it or overlaps it, a line segment onto its congruent line segment, a triangle onto its congruent triangle and a circle onto a circle with the same radius: phép đối xứng tâm biến đường thẳng thành đường thẳng song song hoặc trùng với nó, biến đoạn thẳng thành đoạn thẳng bằng nó, biến tam giác thành tam giác bằng nó, biến đường tròn thành đường tròn có cùng bán kính.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Conjecture', N'sự giả định', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'conormal category', N'phạm trù đối chuẩn tắc', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'conplanar', N'đồng phẳng', N'tính từ (adjective)', N'Given 4 conlpanar points A,B,C,D: cho 4 điểm đồng phẳng A,B,C,D.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'consecutively', N'một cách liên tục', N'động từ (verb)', N'doing a rotation and a translation consecutively :thực hiện liên tiếp phép quay và phép tịnh tiến.', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'consider', N'xét', N'động từ (verb)', N'Consider the following function: xét các hàm số sau.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Constant', N'Hằng', N'danh từ (noun)', N'Constant function: Hàm số hằng.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'constant function', N'hàm hằng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'contain', N'chứa', N'động từ (verb)', N'The plane (Q) contains triangle ABC: mặt phẳng (Q) chứa tam giác ABC.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'continous', N'tính liên tục', N'tính từ (adjective)', N'continuous function: hàm liên tục', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'continuity', N'tính liên tục', N'danh từ (noun)', N'the continuity of function: tính liên tục của hàm số.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'continuous', N'liên tục', N'tính từ (adjective)', N'A funtion y=f(x) is continuous on the open interval {a;b}: hàm số y=f(x) liên tục trên khoảng {a;b}.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'contracdict', N'mâu thuẫn', N'động từ (verb)', N'this contracdicts the suppsition that d across d'': điều này mâu thuẫn với giả thiết d cắt d''.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Contradiction', N'sự phủ định', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'conventions', N'phương pháp', N'danh từ (noun)', N'', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Converge', N'đồng quy', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Convergence', N'tính đồng quy', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Converse ', N'Sự đảo ngược (ở đây chỉ mệnh đề đảo)', N'danh từ (noun)', N'The converse of a true proposition is not neccesarily true: Mệnh đề đảo của một mệnh đề đúng không nhất thiết là đúng.
The converse of ''P => Q'' is ''Q => P'':
Mệnh đề đảo của ''P => Q'' is ''Q => P''.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'convex', N'lồi', N'tính từ (adjective)', N'Given a convex ABCED: cho một đa giác lồi ABCED.', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Cooordinate plane', N'Mặt phẳng tọa độ', N'danh từ (noun)', N'A point M is in the coordinate plane Oxy: Điểm M nằm trong mặt phẳng tọa độ Oxy.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Coordinate', N'Tọa độ', N'danh từ (noun)', N'Determine the coordinates of intersection of parabola y=ax^2+bx+c with the y-axis: Xác định tọa độ giao điểm của parabol y=ax^2=bx=c với trục tung.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'coordinate expression', N'biểu thức tọa độ', N'danh từ (noun)', N'reflection symmetry preverves the distance between any two points: phép đối xứng trục bảo toàn khoảng cách giữa hai điểm.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'coplanar', N'đồng phẳng', N'tính từ (adjective)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'coplanarity', N'sự đồng phẳng', N'danh từ (noun)', N'concept of the conplanarity of the three vectors in space: khái niệm về sự đồng phẳng của ba vectơ trong không gian.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'corollary', N'hệ quả', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'correction card', N'bảng sửa chữa', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Correspondence', N'sự tương ứng', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Cosine ', N'Côsin', N'danh từ (noun)', N'Cosine axis: trục Côsin', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cotangent', N'cô-tang', N'danh từ (noun)', N'contangent functions: hàm cô-tang', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cross product', N'tích có hướng', N'danh từ (noun)', N'cross product (or the vector product) of two vector: tích có hướng (hoặc tích vec tơ) của hai vec tơ', NULL, 1, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cube', N'hình hộp (n)
lập phương (v)', N'danh từ (noun)
động từ (verb)', N'find x to get the volume of the cube is the largest: tìm x để thể tích hình hôp lớn nhất.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cube root', N'căn bậc ba', N'danh từ (noun)', N'In mathematics, a cube root of a number x is a number y such that y^3 = x: Trong toán học, một căn bậc ba của một số x là một số y sao cho y^3 = x.', NULL, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cubic function', N'hàm số bậc ba', N'danh từ (noun)', N'cubic function has shape of y= ax^3+bx^2+c x+d: hàm số bậc ba có dạng  y= ax^3+bx^2+c x+d.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cubic unit', N'đơn vị lập phương', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'curly bracket', N'dấu ngoặc {}', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'curve', N'đường cong', N'danh từ (noun)', N'Von Koch curve: đường cong Vôn Kốc.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'curved line', N'đường cong', N'danh từ (noun)', N'to draw a curved line: kẻ một đường cong', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'cylinder', N'hình trụ', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Decimal', N'Số thập phân', N'danh từ (noun)', N'Rational numbers can take the form of a finite decimal.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'decrease', N'nghịch biến', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Decreasing', N'Nghịch biến', N'danh từ (noun)', N'Decreasing function: Hàm nghịch biến.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'deduce', N'suy ra', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'deduction', N'suy diễn', N'danh từ (noun)', N'deduction works from the more general to the more specific : suy diễn là đi từ cái chung đến cái riêng, từ tổng quát đến cụ thể .
', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Definition', N'Định nghĩa', N'danh từ (noun)', N'Definition of absolute values: Định nghĩa của giá trị tuyệt đối.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'degenerate', N'suy biến', N'tính từ (adjective), danh từ (noun), động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'degenerate case', N'trường hợp suy biến', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'degree', N'độ', N'danh từ (noun)', N'120 degree: 120 độ.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'delayed carry', N'sự mang sang trễ', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Denominator', N'Mẫu số', N'danh từ (noun)', N'1/4 has a denominator is 4: 1/4 có mẫu số là 4.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'denote', N'chỉ,biểu lộ, áp dụng về, chứng tỏ', N'động từ (verb)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'derivative', N'đạo hàm', N'danh từ (noun)', N'derivaty theorem is included in the algrebra and analysis grade 11: lí thuyết đạo hàm được học trong chương trình đại số và giải tích lớp 11.
', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'derivative of a composite function', N'đạo hàm của hàm hợp', N'cụm danh từ (noun phrase)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'derivative of product', N'đạo hàm tích', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'derivative of quotient', N'đạo hàm thương', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'derivative of sum', N'đạo hàm tổng', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'determinant', N'định thức', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'determine', N'xác định', N'động từ (verb)', N'Determine the values of parameter m: Xác định giá trị của tham số m.', 12, 0, 0, 0, NULL)
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Diagonal', N'Đường chéo', N'danh từ (noun)', N'AD and BC are the diagonals of the paralledlogram ABCD: AD và BC là đường chéo của hình bình hành ABCD.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'diagonal line', N'đường gạch chéo', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'diagonal lines', N'những đường thẳng chéo nhau', N'danh từ (noun)', N'distance between two diagonal lines: khoảng cách giữa hai đường thẳng chéo nhau', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'diagram', N'biểu đồ', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'diameter', N'đường kính', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'diamond', N'hình thoi', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Difference', N'Sự khác nhau (ở đâu chỉ hiệu 2 tập hợp)', N'danh từ (noun)', N'the difference of A is the set that contain elements in set A but not set B: hiệu của A và B là tập hợp các phần tử có trong tập hợp A mà không có trong tập hợp B', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'difference of two sets', N'hiệu của 2 tập hợp', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'differential', N'vi phân', N'danh từ (noun)', N'the definition of differential is introduced to prepare the student for the study of integrals in the analysis grade 12: định nghĩa vi phân được đưa ra nhằm chuẩn bị cho việc học tích phân ở giải tích 12.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'differential and integral calculus', N'phép tính vi tích phân', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'differential calculus', N'tính vi phân', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'differentiation', N'đạo hàm', N'danh từ (noun)', N'applications of differentitation in assessing and graphings functions: ứng dụng đạo hàm để khảo sát và vẽ đồ thị của hàm số.', 12, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Digit', N'Chữ số', N'danh từ (noun)', N'6735 is a four-digit number: 6735 là một số có 4 chữ số.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'digit capacity', N'dung lượng chữ số', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'dihedral angle', N'góc giữa 2 mp', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'directed', N'có hướng', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'direction of projection', N'phương chiếu', N'danh từ (noun)', N'the direction b is the direction of projection: phương b được gọi là phương chiếu.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Direction vector ', N'Vector chỉ phương', N'danh từ (noun)', N'', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'discriminant', N'biệt thức (delta)', N'danh từ (noun)', N'In mathematics, the discriminant of the quadratic polynomial ax^2 + bx + c , a ≠ 0 is b^2 - 4ac: Trong toán học, biệt thức (delta) của đa thức bậc hai ax^2 + bx + c , a ≠ 0 là b^2 - 4ac.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'distance', N'khoảng cách', N'danh từ (noun)', N'reflection symmetry preverves the distance between any two points: phép đối xứng trục bảo toàn khoảng cách giữa hai điểm.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Distinct', N'khác biệt, phân biệt', N'tính từ (adjective)', N'This quadratic equation has two distinct roots: Phương trình bậc hai này có hai nghiệm phân biệt.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Diverge', N'phân kì', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Divergence', N'tính phân kì', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'divide', N'chia', N'động từ (verb)', N'60 divided by 12 is 5: 60:12 = 5', 10, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Divisible', N'Chia hết', N'tính từ (adjective)', N'39 is divisible by 3: 39 chia hết cho 3.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Divisor', N'Ước', N'danh từ (noun)', N'2 is a divisor of 4: 2 là ước của 4.
divisor of a and b: ước chung của a và b.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Domain', N'Tập xác định', N'danh từ (noun)', N'The set D is called the domain of the function: tập hợp D được gọi là tập xác định của hàm số.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'domain of a function', N'tập xác định của hàm số', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Dot product', N'Tích vô hướng', N'danh từ (noun)', N'The dot product of vector a and b is scalar,denoted by vector a.b: Tích vô hướng của vector a và b là một số, kí hiệu là vector a.b.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'double carry', N'sự mang sang kép', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'double root', N'nghiệm kép', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'downward', N'giảm', N'tính từ (adjective)', N'the function y=f(x) is increasing (upward) or decreasing (downward): hàm số y=f(x) đồng biến hoặc nghịch biến.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'draw', N'vẽ', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'dual category', N'phạm trù đối ngẫu', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'eccentricity', N'tâm sai', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Education publishing house', N'Nhà xuất bản GD', N'cụm danh từ (noun phrase)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Element', N'Phần tử', N'danh từ (noun)', N'a is the element of set A: a là một phần tử của tập hợp A. ', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'eliminated', N'bị loại', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'empty', N'rỗng', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'empty set', N'tập rỗng', N'danh từ (noun)', N'∅ symbolises for empty set: ∅ tượng trưng cho tập rỗng.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'end around carry', N'hoán vị vòng quanh', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'end-point', N'đầu mút', N'danh từ (noun)', N'f(x) attains the absolute maximum value and the absolute minimum value at end-points of the closed interval: f(x) đạt được GTLN và GTNN tại các đầu mút của đoạn.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Entailment', N'Sự kế thừa, sự kéo theo', N'danh từ (noun)', N'the proposition '' if P then Q '' is called propositional entailment: cho mệnh đề '' nếu P, thì Q '' được gọi là mệnh đề kéo theo.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'equal sets', N'các tập hợp bằng nhau', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Equation', N'Phương trình', N'danh từ (noun)', N'An equation with unknown x is a proposition with variables, of form f(x)=g(x): Một phương trình một ẩn x là mệnh đề chứ biến có dạng f(x)=g(x). ', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'equation of a tangent', N'phương trình tiếp tuyến', N'danh từ (noun)', N'the equation of a tangent to graph ( C) at point M: phương trình tiếp tuyến của đồ thị (C ) tại điểm M', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Equilateral', N'Đều', N'tính từ (adjective)', N'ABC is an equilateral triangle: ABC là tam giác đều.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'equilateral triangle', N'tam giác đều', N'danh từ (noun)
', N'', NULL, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Equivalent', N'Sự tương đương', N'danh từ (noun)', N'Two propositions, either of which is true if and only if the other is true: Khi hai mệnh đề tương đương, một trong hai sẽ đúng khi và chỉ khi mệnh đề còn lại đúng.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'equivalent propositions', N'mệnh đề tương đương', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'establish', N'lập', N'động từ (verb)', N'establish a graph: lập đồ thị', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Even', N'Chẵn', N'tính từ (adjective)', N'2 is a even number: 2 là số chẵn.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'even function', N'hàm số chẵn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'eveness', N'tính chẵn', N'danh từ (noun)', N'the eveness and oddness of the function is such an important thing: tính chẵn hay lẻ của hàm số thì rất quan trọng.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'event', N'biến cố', N'danh từ (noun)', N'an event is a subset of the sample space of an experiment: biến cố là một tập con của không gian mẫu.', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'exact category', N'phạm trù khớp', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'exact number', N'số đúng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'examine', N'xem xét', N'động từ (verb)', N'using the graph, examine whether the following functions have extrema or not: Sử dụng đồ thị, hãy xét xem các hàm số sau đây có cực trị hay không.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'excellent academic result', N'học lực giỏi', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'exist', N'tồn tại', N'động từ (verb)', N'these exists a plane containing both lines a,b: có tồn tại một mặt phẳng cùng chứa đường thẳng a,b.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'exponential', N'số mũ', N'tính từ (adjective)', N'exponential equation: phương trình mũ.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'exponential function', N'hàm số mũ', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'exponentiallizings', N'mũ hóa', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'expression', N'biểu thức', N'danh từ (noun)', N'', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'exterior angle', N'góc ngoài', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'external', N'ngoài', N'tính từ (adjective)', N'external homotheric center: tâm vị tự ngoài.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Extraneous', N'Không liên quan (ngoại lai)', N'danh từ (noun)', N'A resulting equation may have an extra solution other than the solution to the original equation. We called the extra solution an extraneous solution: Phương trình hệ quả có thể có thêm nghiệm không phải là nghiệm của phương trình ban đầu. Ta gọi đó là nghiệm ngoại lai.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'extrema', N'cực trị', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'extreme point', N'điểm cực trị', N'danh từ (noun)', N'Points of maximum and minimum are collectively called extreme points: các điểm cực đại và cực tiểu được gọi chung là điểm cực trị.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'face', N'mặt', N'danh từ (noun)', N'SAC is a face of paramid SABC: SAC là mặt bên của hình chóp SABC.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'factorial', N'giai thừa', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'false', N'sai', N'tính từ (adjective)', N'The proposition ''1+1=3'' is false.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'figure', N'hình vẽ', N'danh từ (noun)', N'the figure on page 22 is a triangle:hình vẽ trang 22 là hình tam giác
', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'finite', N'hữu hạn', N'tính từ (adjective)', N'finite limit of a sequence: giới hạn hữu hạn của dãy số.', 11, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'finite decimal', N'số thập phân hữu hạn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'first term', N'số hạng đầu tiên', N'danh từ (noun)', N'U1 is the first term of u(n): U1 là số hạng đầu tiên của u(n).', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'fix point', N'điểm cố định', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'fixed point', N'điểm cố định', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'fixed point calculation', N'sự tính toán với dấu phẩy cố định', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'floating point calculation', N'sự tính toán với dấu phẩy di động', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'flow capacity', N'khả năng thông qua', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Focal length', N'Tiêu cự', N'danh từ (noun)', N'The length F1F2=2c is called the focal length of the ellipse.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Foci', N'Tiêu điểm', N'danh từ (noun)', N'The points F1 and F2 are called the foci of the ellipse: Các điểm F1 và F2 được gọi là tiêu điểm của ellipse.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'focus', N'tiêu điểm', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'folded', N'gấp lại', N'động từ (verb)', N'a plastic bag was folded around the book: một cái túi nhựa được gấp lại quanh cuốn sách.', 12, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'follow', N'suy ra, kéo theo', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'form', N'dạng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'formula', N'công thức', N'danh từ (noun)', N'the fomulas of the volumme of a cube: công thức tính thể tích hình hộp.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Fraction', N'Phân số', N'danh từ (noun)', N'1/3 is a fraction: 1/3 là một phân số.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Function', N'Hàm số', N'danh từ (noun)', N'X is called a variable and Y is the function of X: X là biến số và Y là hàm số của X.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'function calculator', N'bộ phận tính hàm số', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'functional', N'giải tích hàm', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'functional calculus', N'phép tính phiếm hàm', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Fundamental', N'Cơ bản', N'tính từ (adjective)', N'That was a fundamental lesson: Đó là một bài học cơ bản.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'general', N'tổng quát', N'tính từ (adjective)', N'the general equation of a plane: phương trình tổng quát của mp', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'General equation', N'Phương trình tổng quát', N'danh từ (noun)', N'The equation of ax+by+c=o, where a, b not both zero, is called the general qeuation of the line: Phương trình ax+by+c=0 với a và b không đồng thời bằng 0, được gọi là phương trình tổng quát của đường thẳng.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'general term', N'số hạng tổng quát', N'danh từ (noun)', N'the nth term as well as the general term of the sequence: số hạng thứ n là số hang tổng quát của dãy số.', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'geometrical', N'hình học', N'danh từ (noun)', N'Geometrical illutration: Minh họa hình học.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Geometry', N'Hình học', N'danh từ (noun)', N'To apply the methods of algebgra to geometry: Vận dụng cách phương pháp đại số vào hình học.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'given', N'cho trước', N'tính từ (adjective)', N'given equation: phương trình cho trước.', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'global extrema', N'cực trị toàn phần', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'good behavior', N'hạnh kiểm tốt', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'graph of function', N'đồ thị của hàm số', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'graphic calculation', N'phép tính đồ thị', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'graphical calculation', N'phép tính đồ thị', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'greater', N'lớn hơn', N'tính từ (adjective)', N'x is greater than y: x lớn hơn y.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'greatest', N'lớn nhất, hay nhất, tốt nhất', N'tính từ (adjective)', N'Among those, let find the greastest area: trong những cái sau, hãy tìm ra hình có diện tích lớn nhất.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'greatest common divisor', N'ước chung lớn nhất', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'greatest value ', N'giá trị lớn nhất', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'guideline', N'sự hướng dẫn', N'danh từ (noun)', N'guidelines for assessing function: hướng dẫn khảo sát hàm số.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'half – open interval', N'nửa khoảng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'half of perimeter', N'nửa chu vi', N'cụm danh từ (noun phrase)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'heat capacity', N'nhiệt dung', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'height', N'chiều cao', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'hexagon', N'lục giác', N'động từ (verb)', N'equilateral hexagon: lục giác đều.
', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'high predicate calculus', N'phép tính vị từ cấp cao', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'homothetic center', N'tâm vị tự', N'danh từ (noun)', N'homotheties and homothetic center of two circles: phép vị tự và tâm vị tự của hai tam giác.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'homothety', N'phép vị tự', N'danh từ (noun)', N'homotheties and homothetic center of two circles: phép vị tự và tâm vị tự của hai tam giác.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'horizontal', N'theo chiều ngang', N'tính từ (adjective)', N'horizontal asymptotes: đường tiệm cân ngang.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'hyperbola', N'đường hypepol', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'hypotenus', N'cạnh huyền', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Hypothesis', N'Giả thuyết', N'danh từ (noun)', N'State the hypothesis of this proposition using the suficient coondition and nescessary condition : Nêu giả thuyết cho mệnh đề dưới dạng điều kiện cần và điều kiện đủ.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'icosahedron', N'hình hai mươi mặt', N'danh từ (noun)', N'regular icosahedron: hai mươi mặt đều.', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'iirational', N'vô tỉ', N'tính từ (adjective)', N'power with irrational exponent: lũy thừa với số mũ vô tỉ', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'illutration', N'minh họa', N'danh từ (noun)', N'illutration by graph: minh họa bằng đồ thị', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'imaginary', N'ảo', N'tính từ (adjective)', N'imaginary number: số ảo.', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'imationary', N'ảo', N'tính từ (adjective)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'imply', N'suy ra ', N'verb (động từ)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'impossible', N'không thể', N'tính từ (adjective)', N'impossible event: biến cố không thể.', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'inclusion', N'sự bao hàm', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'increase', N'đồng biến', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Increasing', N'Đồng biến', N'danh từ (noun)', N'Increasing function: Hàm đồng biến.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'increment', N'số gia', N'danh từ (noun)', N'let delta x is the increment of x: giả sử denta x là số gia của x.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'index', N'số mũ', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Induction', N'phương pháp qui nạp', N'danh từ (noun)', N'that''s the mathematical induction of we can say induction for short: đó là phương pháp quy nạp toán học hay ta có thể nói tắt là phương pháp qui nạp', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'induction hypothesis', N'giả thiết quy nạp', N'danh từ (noun)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Inequalities', N'bất đẳng thức', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'inequalities and inequations', N'bất đẳng thức và bất phương trình', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Inequality', N'bất đẳng thức', N'danh từ (noun)', N'', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Inequation', N'Bất phương trình', N'danh từ (noun)', N'Number -2 is an element of the solution set of inequation (2x+1)(1-x)<x^2: Số -2 thuộc tập nghiệm của bất phương trình (2x+1)(1-x)<x^2.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'inequations', N'bất phương trình', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'infer', N'suy luận, suy ra', N'động từ (verb)', N'from the variation chart, we infer x=0: từ bảng biến thiên, ta suy ra x=0.
then we infer M''N''=kMN: từ đó suy ra M''N''=kMN.', 12, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'infinite non-repeating decimal', N'số thập phân vô hạn không tuần hoàn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'infinite number', N'vô số', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'infinite repeating decimal', N'số thập phân vô hạn tuần hoàn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'infinitesimal calculus', N'phép tính các vô cùng bé', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'infinity', N'vô cực, vô cùng', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'inflection', N'sự uốn cong', N'danh từ (noun)', N'inflection point: điểm uốn.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'information capacity', N'dung lượng thông tin', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'initial', N'đầu', N'tính từ (adjective)', N'initial point A: điểm đầu A.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Inscribe', N'Nội tiếp', N'tính từ (adjective)', N'Quadrilateral ABCD is inscribed in the circle with center O:Tứ giác ABCD nội tiếp đường tròn tâm O.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'instance', N'ví dụ', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'intantaneouns', N'tức thì', N'tính từ (adjective)', N'a problem about finding instantaneouns velocity: bài toán tìm vận tốc tức thời.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'integer', N'số nguyên', N'danh từ (noun)', N'23 is an integer: 23 là số nguyên.', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'integer number', N'số nguyên', N'danh từ (noun)', N'Set of Z is set of integer numbers: Tập hợp Z là tập hợp các số nguyên.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'integral', N'tích phân', N'danh từ (noun)', N'derivatives and integrals were previously included only in the analasis grade 12: đạo hàm và giải tích được học trọn vẹn trong giải tích lớp 12.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'integral calculus', N'phép tính tích phân', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'intensity', N'cường độ', N'danh từ (noun)', N'a problem finding intantaneous intensity:bài toán tìm cường độ tức thời.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'intercept', N'giao điểm', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'interior', N'bên trong', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'internal', N'trong', N'tính từ (adjective)', N'internal homothetic center: tâm vị tự trong.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'internally tangent', N'tiếp xúc trong', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Intersect', N'Cắt', N'động từ (verb)', N'the line d intersects the line h at M: đường thẳng d cắt đường thẳng h tại M.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'intersecting planes', N'hai mặt phẳng cắt nhau', N'danh từ (noun)', N'the angle between two intersecting planes: góc giữa hai mp cắt nhau', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Intersection', N'Sự giao nhau', N'danh từ (noun)', N'Set C containing elements that also belong to A and to B at the same time is called the intersection of two sets A and B: tập hợp C chứa các phần tử vừa thuộc A và B thì được gọi là giao của A và B', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'intersection of two sets', N'giao của hai tập hợp', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Interval', N'Khoảng', N'danh từ (noun)', N'The function y=x^2 increases on the interval from 0 to positive infinity: Hàm số y=x^2 đồng biến trong khoảng từ 0 đến dương vô cùng.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'irrational', N'vô tỷ', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Irrational number', N'Số vô tỉ', N'danh từ (noun)', N'Rational numbers can take the form of a finite decimal.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'isometry', N'phép dời hình', N'danh từ (noun)', N'the reflection summetries is one of isometry: phép đối xứng trục là một trong những phép dời hình.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Isosceles', N'cân bằng', N'tính từ (adjective)', N'ABC is an isosceles triangle: ABC là tam giác cân.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'isosceles triangle', N'tam giác cân', N'danh từ (noun)
', N'', NULL, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'iterate', N'lấy nguyên hàm', N'động từ (verb)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'iteration', N'nguyên hàm', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'kernel', N'nhân', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'L.H.S. [= left hand', N'vế trái', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'lateral edge', N'cạnh bên', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'lateral face', N'mặt bên', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Law', N'Định lí ', N'danh từ (noun)', N'The law of cosines: Định lí côsin.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'least common multiple', N'bội chung nhỏ nhất', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'leg', N'cạnh góc vuông', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Lemma', N'bổ đề', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'length', N'độ dài', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'let', N'đặt', N'động từ (verb)', N'by letting t = x+a, we receive the equation:đặt t =x +a, ta được phương trình:', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'lie', N'nằm', N'động từ (verb)', N'point B lies between point A and C: điểm B nằm 2 điểm A và C.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'limit', N'giới hạn', N'danh từ (noun)', N'the limit of ratio x/y is 3: giới hạn của tỉ số x/y là 3.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'limiting case', N'trường hợp giới hạn', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'limit-point case', N'trường hợp điểm giới hạn', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'line', N'đường thẳng', N'danh từ (noun)', N'to draw a line: kẻ một đường thẳng', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'linear', N'bậc nhất', N'tính từ (adjective)', N'Linear binomials: Nhị thức bậc nhất.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'linear binomials', N'nhị thức bậc nhất', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Linear equation', N'Phương trình bậc nhất', N'danh từ (noun)', N'Solving the system of linear equations means finding its solutions: giải hệ phương trình bậc nhất nghĩa là tìm tập nghiệm của nó.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'linear function', N'hàm số bậc nhất', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'logarithm', N'logarit', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'logarithmic calculator', N'máy tính lôgarit', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'logarithmic capacity', N'dung lượng lôgarit', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'logarithmizing', N'logarit hóa', N'tính từ (adjective)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'logical', N'đại số logic', N'tính từ (adjective)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'logical calculus', N'phép tính lôgic', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'major axis', N'trục lớn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'map', N'biến, thay đổi', N'động từ (verb)', N'an isometry maps a circle onto a circle with the same radius:phép dời hình biến đường tròn thành đường tròn có cùng bán kính.,', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'marginal category', N'tần suất không điều kiện (của một dấu hiệu nào đó)', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'mathematician', N'nhà toán học', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Mathemetical Analysis', N'giải tích toán học', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'matrix', N'ma trận', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'matrix entry', N'hệ số ma trận', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'maxima', N'cực đại', N'danh từ (noun)', N'The maximum values are also called maxima: giá trị cực đại còn được gọi là cực đại.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'maximum', N'lớn nhất, cực đại', N'tính từ (adjective)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'maxtrix', N'đại số ma trận', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'mean ', N'trung bình', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'meaningful', N'có nghĩa', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'median', N'đường trung tuyến', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Medians', N'Trung tuyến', N'danh từ (noun)', N'A triangle have three medians: một tam giác có 3 đường trung tuyến.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'memory capacity', N'dung lượng bộ nhớ', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Midpiont', N'Điểm chính giữa, Trung điểm', N'danh từ (noun)', N'Midpoint of the arc: Điểm chính giữa của cung.
Midpoint of the line: Trung điểm của đường thẳng', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'minima', N'cực tiểu', N'danh từ (noun)', N'The minimum values are also called minima: giá trị cực tiểu còn được gọi là cực tiểu.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'minimum', N'nhỏ nhất, cực tiểu.', N'tính từ (adjective)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Ministry of education and training', N'Bộ GD và ĐT', N'cụm danh từ (noun phrase)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'minor axis', N'trục nhỏ', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'minus', N'trừ, (phép) trừ', N'giới từ (preposition)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'mobile', N'thay đổi', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'monotone indicating table', N'bảng biến thiên', N'danh từ (noun)', N'The monotone indicating table = Variation chart = variation table: Bảng biến thiên', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'monotonicity', N'tính đơn điệu', N'danh từ (noun)', N'the monotonicity of a function: tính đơn điệu của hàm số.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'monotonous', N'đơn điệu', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'multiple root', N'nghiệm bội', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Multiplication', N'Phép nhân', N'danh từ (noun)', N'We have a multiplication 2x3=6: Ta có phép nhân 2x3=6.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'multiply', N'nhân', N'giới từ (preposition)', N'12345679 multiply 9 is 111111111: 12345679 nhân 9 bằng 111111111.', 10, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'mutually exclusive', N'xung khắc', N'tính từ (adjective)', N'A and B is said to be mutually exclusive: ta nói A và B xung khắc.', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'necessary condition', N'điều kiện cần', N'danh từ (noun)', N'A necessary condition is a condition that must be present for an event to occur: Một điều kiện cần là một điều kiện phải có mặt cho một sự kiện xảy ra.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'negative', N'(số) âm ', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'negative carry', N'sự mang sang âm', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'negative infinity', N'âm vô cùng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'negative sign', N'dấu âm', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Non', N'Không', N'tính từ (adjective)', N'P(x) and Q(x) have non-negative values: P(x) và Q(x) có giá trị không âm.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'non - coplanar', N'khoông đồng phẳng', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'non-numerical calculation', N'sự tính toán không bằng số', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'normal category', N'phạm trù chuẩn tắc', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Normal vector ', N'Vector pháp tuyến', N'danh từ (noun)', N'', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'normal vector of a line', N'vec tơ pháp tuyến của đường thẳng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'number line', N'trục số', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Numerator', N'Tử số', N'danh từ (noun)', N'1/4 has a numerator is 1: 1/4 có tử số là 1.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'numerical calculation', N'sự tính toán bằng số', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'numerical calculus', N'phép tính bằng số', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'numerous', N'vô số', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'observation', N'sự quan sát', N'danh từ (noun)', N'Make an observation on the graph © ò the function: Quan sát đồ thị C của hàm số.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'obtained', N'thu được', N'tính từ (adjective)', N'Complete the chart with results obtained: hoàn thành bảng sau với kết quả thu được.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'obtuse angle', N'góc tù', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'ocdecahedron', N'hình mười hai mặt', N'danh từ (noun)', N'regular ocdecahedron: mười hai mặt đều.', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Odd', N'Lẻ', N'tính từ (adjective)', N'3 is a odd number: 3 là số chẵn.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'odd function', N'hàm số lẻ', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'oddness', N'tính lẻ', N'danh từ (noun)', N'the eveness and oddness of the function is such an important thing: tính chẵn hay lẻ của hàm số thì rất quan trọng.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'open interval', N'khoảng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'open the bracket', N'mở ngoặc', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'operation', N'phép toán', N'danh từ (noun)', N'operation on vectosr in space: phép toán về vectơ trong không gian.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'operational calculus', N'phép tính toán tử', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'opposite category', N'phạm trù đối', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'opposite sign', N'trái dấu', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'option', N'phương án', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'ordinary', N'thông thường', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'ordinary case', N'trường hợp thông thường', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'ordinate', N'tung độ', N'danh từ (noun)', N'From the definition of a vector, we conclude that two vectors are equal if and only if they have equal abscissas and equal ordinate: Từ định nghĩa tọa độ của vector, ta thấy hai vector bằng nhau khi và chỉ khi chúng có hành độ bằng nhau và tung độ bằng nhau.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'orientation', N'hướng, chiều', N'danh từ (noun)', N'the positive direction of the rotation is the positive orientation of a trigonometric cicle meaning is anti-clockwise: chiều dương của phép quay là chiều dương của đường tròn lượng giác nghĩa là ngược chiều kim đồng hồ.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Origin', N'gốc (gốc tọa độ)', N'danh từ (noun)', N'Coordinate origin: Gốc tọa độ', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'orthocentre', N'trực tâm', N'danh từ (noun)', N'orthocentre of a triangle: trực tâm của tam giác.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'orthogonal projection', N'hình chiếu vuông góc', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'outer ', N'nằm ngoài', N'tính từ (adjective)', N'outer point: điểm nằm ngoài.', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'outer point', N'điểm ngoài', N'tính từ (adjective)', N'the point which is not in the solid prism is called the outer point of the prism: điểm không thuộc khối lăng trụ được gọi là điểm ngoài của khối lăng trụ.', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Overlap', N'Trùng', N'động từ (verb)', N'The graph of y=|x| overlaps that of function y=-x: Đồ thị y=|x| trung với đồ thị y=-x.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'overlapping', N'sự trùng, sự chồng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'paralleepided', N'hình hộp đứng', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'parallel', N'song song', N'tính từ (adjective)', N'parallel lines: những đường thẳng song song
parallel of latitude: đường vĩ tuyến
the 17th parallel: vĩ tuyến 17', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'parallel planes', N'những mặt phẳng song song', N'danh từ (noun)', N'distance between two parallel planes: khoảng cách giữa hai mp song song', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'parallel vectors', N'vec tơ cùng phương', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'parallelogram', N'hình bình hành', N'danh từ (noun)', N'A flat shape with two pairs of parallel sides is a parallelogram: hình có hai cặp cạnh song song là hình bình hành.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'parameter', N'tham số', N'danh từ (noun)', N'the function is defined for any m: Hàm số xác định với mọi tham số m.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Parametric', N'tham số', N'tính từ (adjective)', N'In an equation (with 1 or multiple unkonwns ), some letter act as unknowns while others are considered constants and called parameters: Trong một phương trình (có một hay nhiều ẩn), ngoài cái chữ đóng vai trò ẩn số còn có những cách chứ khác được xem như những hằng số được gọi là tham số.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'parametric equation of a line', N'phương trình tham số của đường thẳng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'particle', N'chất điểm', N'danh từ (noun)', N'the particle doesn''t move with constan velocity: chất điểm chuyển động không đều.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'particular', N'riêng, đặc biệt, riêng biệt', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'particular case', N'trường hợp [riêng, đặc biệt]', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'pass through', N'đi qua', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'pentagonal', N'năm cạnh', N'tính từ (adjective)', N'pentagonal paramid: hình chóp ngũ giác.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Perimeter', N'Chu vi', N'danh từ (noun)', N'p=a+b+c is the fomula of pererimeter of the triangle : p=a+b+c là công thức tính chu vi của tam giác.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'periodic', N'tuần hoàn', N'tính từ (adjective)', N'function y=cosx is a periodic funtion: hàm sô y=cosx là hàm số tuần hoàn
', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'periodicity', N'sự tuần hoàn', N'danh từ (noun)', N'periodicity of trigonometric functions: tính tuần hoàn của hàm số lượng giác
', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'permutation', N'hoán vị', N'danh từ (noun)', N'Each result of the ordered arrangment of n elements of set A is called a permutiation of the n elements: Mỗi kết quả của sự sắp xếp thứ tự của tập hợp A được gọi là hoán vị của n phần tử đó.
', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'permutations', N'hoán vị', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Perpendicular ', N'Vuông góc', N'động từ (verb)', N'the parametic equations of the line n passing through M(x,y) and perpendicular to the line d: Phương trình tham số của đường thẳng n đi qua M(x,y) và vuông góc với đường thẳng d.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'perpendicular planes', N'những mặt phẳng vuông góc', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'pin', N'đỉnh', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'plus', N'cộng, cộng lại', N'giới từ (preposition)', N'29 plus 12 is 41: 29 cộng với 12 bằng 41.', 10, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'point of tangency', N'tiếp điểm', N'danh từ (noun)', N'point M is called the point of tangency: điểm M được gọi là tiếp điểm.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'point of the tangency', N'tiếp điểm', N'danh từ (noun)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'polygon', N'đa giác', N'danh từ (noun)', N'equilateral polygon: đa giác đều.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'polyhedral', N'đa diện', N'danh từ (noun)', N'solid polyhedral: khối đa diện', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'polyhedron', N'hình đa diện', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Polynomial', N'Đa thức', N'danh từ (noun)', N'Polynomial function: Hàm đa thức.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'positive', N'(số) dương', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'positive infinity', N'dương vô cùng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'positive sign', N'dấu dương', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'power', N'lũy thừa', N'danh từ (noun)', N'for any real number a, the nth power of a is the product of n factors a: Với a là số thực tùy ý, lũy thừa bậc n của a là tích của n thừa số a.
', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'power functions', N'hàm số lũy thừa', N'danh từ (noun)', N'power function of integer: hàm lũy thừa với số nguyên.', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'predicate calculus', N'phép tính vị từ', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'predict', N'dự đoán', N'động từ (verb)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'presentation', N'sự biểu diễn', N'danh từ (noun)', N'geometric prsentation of a sequence: biểu diễn hình học của dãy số.', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'preverse', N'bảo toàn', N'động từ (verb)', N'reflection symmetry preverves the distance between any two points: phép đối xứng trục bảo toàn khoảng cách giữa hai điểm.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'previous carry', N'sự mang sang trước (từ hàng trước)', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'prime number', N'số nguyên tố', N'danh từ (noun)', N'Prime number is a number that cannot be divided by any other number except itself and the number 1: Số nguyên tố là một số không thể chia cho bất kỳ số nào khác ngoại trừ chính nó và số 1', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'printing calculator', N'máy tính in', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'prism', N'hình lăng trụ', N'danh từ (noun)', N'vertexes of the prism: các đỉnh của hình lăng trụ.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'probability', N'xác suất', N'danh từ (noun)', N'Probability theory: lí thuyết xác xuất
', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'product', N'tích', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'progression', N'chuỗi', N'danh từ (noun)', N'arithmetic progression: chuỗi số cộng
geometric progression: chuỗi số nhân.', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'projection', N'phép chiếu', N'danh từ (noun)', N'paralel projective: phép chiếu song song.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'proof', N'chứng minh', N'động từ (verb)
', N'ending a proof: kết thúc phần chứng minh', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Property', N'Tính chất', N'danh từ (noun)', N'Properties of dot product: Tính chất của tính vô hướng.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Proposition', N'Mệnh đề', N'danh từ (noun)', N'A proposition cannot be both true and false: Một mệnh đề không thể vừa đúng vừa sai.
Each proposition must be either true or false: Mỗi mệnh đề phải hoặc đúng hoặc sai.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Propositional', N'thuộc về mệnh đề', N'tính từ (adjective)', N'propositional variable: Mệnh đề chứa biến
propositional entailment: Mệnh đề kéo theo', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'propositional calculus', N'phép tính mệnh đề', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'propositional entailment', N'mệnh đề kéo theo', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'propositional variable', N'mệnh đề chứa biến', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Provided that', N'giả sử', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'purely', N'một cách thuần khiết', N'trạng từ (adverb)', N'the purely imaginary number: số thuần ảo', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'pyramid', N'hình chóp', N'danh từ (noun)', N'triangular paramid: hình chóp tam giác.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'quadrangles', N'tứ giác', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Quadratic', N'Bậc hai', N'tính từ (adjective)', N'A quadratic equation has two distinct roots if and only if its discriminant is positive: Một phương trình bậc hai có hai nghiệm phân biệt khi và chỉ khi biệt thức (đen-ta) của nó dương.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'quadratic equation', N'phương trình bậc 2', N'danh từ (noun)', N'ax^2 + bx + c = 0 is a quadratic equation: ax^2 + bx + c = 0 là một phương trình bậc 2.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'quadratic function', N'hàm số bậc hai', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'quadratic functions', N'hàm số bậc hai', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Quadrilateral', N'Tứ giác', N'danh từ (noun)', N'Quadrilateral ABCD is a rhombus: Tứ giác ABCD là hình thoi.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'quadrilateral prism', N'lăng trụ tứ giác', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'quantity', N'đại lượng', N'danh từ (noun)', N'it''s a quantity that represent the quick or slow rate of the motion at instant of time t: đó là đại lượng đặc trưng cho sự nhanh chậm của chuyển động tại thời điểm t.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'quotient', N'thương', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'R.H.S. = right hand', N'vế phải', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Radical', N'Căn bậc', N'tính từ (adjective)', N'To solve radical equations, we usually square both sides of the equation to get resuling equation without the unknown inside the radical: Để giải phương trình có chứa dấu căn bậc 2, ta thường bình phương cả hai về để đưa về một phương trình không có biến nằm trong dấu căn.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'radii', N'bán kính (số nhiều)', N'danh từ (noun)', N'given these radii:cho những bán kính', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Radius', N'Bán kính', N'danh từ (noun)', N'A circle with center O and radius R: đường tròn tâm O bán kính R.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'range', N'tập giá trị', N'danh từ (noun)', N'range of function y=cosx: tập giá trị của hàm số y=cosx
', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rank', N'xếp hạng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Ratio', N'Tỉ lệ', N'danh từ (noun)', N'Golden ratio: Tỉ lệ vàng.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'ratio of similitude', N'tỉ số đồng dạng', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rational function', N'hàm phân thức', N'danh từ (noun)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rational number', N'số hữu tỉ', N'danh từ (noun)', N'Rational number is a number that can be expressed as the ratio of two whole numbers: một số có thể được biểu thị bằng tỷ lệ của hai số nguyên.
1/2 is a rational number: 1/2 là một số hữu tỉ.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'ray', N'tia', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'real', N'số thực', N'danh từ (noun)', N'A real number is a value of a continuous quantity that can represent a distance along a line: Một số thực là một giá trị của một đại lượng liên tục có thể biểu thị một khoảng cách dọc theo một đường thẳng.', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rectangle', N'hình chữ nhật', N'danh từ (noun)', N'Rectangle is a rectangle is a quadrilateral with four right angles: Hình chữ nhật là một tứ giác có bốn góc vuông.', 10, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rectangle cuboid', N'hình hộp chữ nhật', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rectangular solid', N'hình hộp chữ nhật', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'recurrent method', N'phương pháp truy hồi', N'danh từ (noun)', N'a sequence given by the recurrent method: dãy số cho bằng phương pháp truy hối.', 11, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'reflection', N'phép đối xứng', N'danh từ (noun)', N'reflection summetries:phép đối xứng trục.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'regular pyramid', N'hình chóp đều', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'regular tetrahedron', N'tứ diện đều', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'regulator capacity', N'công suất của cái điều hành', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Relationship', N'Hệ thức lượng', N'danh từ (noun)', N'Relationships within triangles: Hệ thức lượng trong tam giác', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'relative', N'tương đối', N'tính từ (adjective)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'relative position of two lines', N'Vị trí tương đối của 2 đường thẳng', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'remainder', N'số dư', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'remark', N'nhận xét', N'động từ (verb)', N'', 12, 0, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'remove', N'khử', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'represent', N'biểu diễn', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'representation', N'hình biểu diễn', N'danh từ (noun)', N'representation of a spatial figure: hình biểu diễn của hình học không gian.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'respectively', N'lần lượt
lần lượt', N'động từ (verb)', N'M,N are respectively midpoints of the lines a and b: M và N lần lượt là trung điểm của a và b
', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'restricted predicate calculus', N'phép tính hẹp các vị từ', N'cụm danh từ (noun phrase)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Restriction', N'giới hạn', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'revise', N'tịnh tiến (11), dịch nghĩa hiệu đính', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'reward', N'khen thưởng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rhombus', N'hình thoi', N'danh từ (noun)', N'A Rhombus is a flat shape with 4 equal straight sides: Hình thoi là hình có 4 cạnh bằng nhau.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'right angle', N'góc vuông', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'right prism', N'lăng trụ đứng', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'right triangle', N'tam giác vuông', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'right-side up', N'bề lõm ngửa lên', N'cụm tính từ (adjective phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Root', N'Nghiệm', N'danh từ (noun)', N'the root of the equation X+1=3 is 2: nghiệm của phương trình X+1=3 là 2.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rotation', N'phép quay', N'danh từ (noun)', N'the positive direction of the rotation is the positive orientation of a trigonometric cicle meaning is anti-clockwise: chiều dương của phép quay là chiều dương của đường tròn lượng giác nghĩa là ngược chiều kim đồng hồ.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rotational summetry', N'phép đối xứng tâm', N'danh từ (noun)', N'rotational symmetry maps a line onto a line that is paralel to it or overlaps it, a line segment onto its congruent line segment, a triangle onto its congruent triangle and a circle onto a circle with the same radius: phép đối xứng tâm biến đường thẳng thành đường thẳng song song hoặc trùng với nó, biến đoạn thẳng thành đoạn thẳng bằng nó, biến tam giác thành tam giác bằng nó, biến đường tròn thành đường tròn có cùng bán kính.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'round off number', N'làm tròn số', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'rounded number', N'số quy tròn', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'sample space', N'không gian mẫu', N'danh từ (noun)', N'the set of all posible outcomes of an experiment is called the sample space of an experiment: tập hợp các kết quả có thể xảy ra của một phép thử được gọi là không gian mẫu của phép thử đó.', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'satisfy', N'thỏa, thỏa mãn', N'động từ (verb)', N'function f(x) satisfies conditions of Langrange''s theorem: Hàm f(x) thỏa mãn các giả thiết của định lí La-găng.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'scalar', N'vô hướng', N'tính từ (adjective)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'segment', N'đoạn', N'danh từ (noun)', N'a segment of line: đoạn thẳng.', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'sequence', N'dãy số', N'danh từ (noun)', N'limit of a sequence: giới hạn của dãy số.', 11, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Set', N'Tập hợp', N'danh từ (noun)', N'A empty set is the set containing no elements: một tập hợp rỗng là tập hợp không chứ phần tử nào.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'set operations', N'các phép toán tập hợp', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'set theory', N'lí thuyết tập hợp (Cantor-German mathematician)', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'shape of an ellipse', N'hình dạng của elip', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'shrunk', N'(n.) sự co lại
(v.) co', N'danh từ (noun)
động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'side edge', N'cạnh bên', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'side face', N'mặt bên', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'sign', N'dấu', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'signs of linear binomials', N'dấu của nhị thức bậc nhất', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'similar', N'đồng dạng', N'tính từ (adjective)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'similarity', N'phép đồng dạng', N'danh từ (noun)', N'isometries and similarities in the plane: phép dời hình và phép đồng dạng trong mặt phẳng.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'similarly', N'một cách tương tự', N'động từ (verb)', N'', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'simple root', N'nghiệm đơn', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'simultaneous carry', N'sự mang sang đồng thời', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'single carry', N'sự mang sang lẻ', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'skew', N'chéo nhau', N'tính từ (adjective)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'slant', N'xiên', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'slope', N'độ dốc', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'smaller', N'nhỏ hơn', N'tính từ (adjective)', N'x is smaller than y: x nhỏ hơn y.', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'smallest value ', N'giá trị nhỏ nhất', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'solid pyramid', N'khối chóp', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'solution', N'cách giải', N'danh từ (noun)', N'the solution of triangle: giải tam giác.', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'solve', N'giải', N'động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'spatial', N'không gian', N'tính từ (adjective)', N'Spatial figure: hình học không gian.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'sphere', N'hình cầu ', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'spherical cap', N'cầu phân', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'square', N'hình vuông (n)
bình thương (v)', N'danh từ (noun)
động từ (verb)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'square cuboid', N'hình lập phương', N'danh từ (noun)', N'given square cuboid ABCD.A''B''C''D'':cho hình lập phương ABCD.A''B''C''D''.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'square roof ', N'căn bậc hai', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'State', N'Khẳng định', N'động từ (verb)', N'We state that the graph of quadratic function y=ax^2 +bx+c (a<>o) is a parabola: Ta khẳng định đồ thị của hàm số bậc hai y=ax^2 +bx+c (a<>o) là một parabola.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'subordinate', N'phụ', N'tính từ (adjective)', N'set a trigonometric expression as a subordinate unknown: 
đặt biểu thức lượng giác là một ẩn số phụ.', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Subset', N'Tập hợp con', N'danh từ (noun)', N'If all of the elements of set A are also the elements of set B, the set is a subset of set B: nếu tất cả phần tử của A cũng là phần tử của B thì khi đó ta nói A là tập hợp con của B', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'subtrac', N'trừ, trừ ra', N'động từ (verb)', N'1010 subtrac 500 is 510: 1010 trừ cho 500 là 510.', 10, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'successive carry', N'sự mang sang liên tiếp', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Sufficient', N'Đủ', N'tính từ (adjective)', N'P is the necessary and sufficient condition for Q or P if and only if Q: P là điều kiện cẩn và đủ để có Q, hoặc P khi và chỉ khi Q.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'sufficient condition', N'điều kiện đủ', N'danh từ (noun)', N'A sufficient condition is a condition or set of conditions that will produce the event: Một điều kiện đủ là một điều kiện hoặc tập hợp các điều kiện sẽ tạo ra sự kiện.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Supplementary', N'bù, bổ sung
bù, bổ sung', N'tính từ (adjective)', N'supplementary angle: Góc bù', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'surface area', N'diện tích bề mặt', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'surface area formula', N'công thức diện tích mặt', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'symbol', N'kí hiệu', N'danh từ (noun)', N'symbols used in this textbook: kí hiệu dùng trong sách
', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'symbols', N'kí hiệu', N'danh từ (noun)', N'symbols used in this textbook: kí hiệu dùng trong sách.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'symmertric', N'chính tắc', N'tính từ (adjective)', N'the symmertric form: dạng chính tắc.', NULL, 1, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Symmetry', N'Sự đối xứng', N'danh từ (noun)', N'O is the center of symmetry of the line y=x: O là tâm đối xứng của đường thẳng y=x.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'symmetry axis', N'trục đối xứng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'symmetry center', N'tâm đối xứng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'system', N'hệ, hệ thống', N'danh từ (noun)', N'the coordinate system Oxyz: hệ tọa độ Oxyz', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'systems of inequations with one unknown', N'hệ bất phương trình một ẩn', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'table calculator', N'máy tính dạng bảng', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'talented student', N'học sinh giỏi', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'tangent', N'tiếp tuyến', N'danh từ (noun)', N'tangent to a plane curve: tiếp tuyến của đường cong phẳng.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'taut', N'căng', N'tính từ (adjective)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'terminal', N'cuối', N'tính từ (adjective)', N'terminal point A: điểm cuối A.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'test card', N'phiếu kiểm tra', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'tetrahedron', N'hình tứ diện', N'danh từ (noun)', N'You have one tetrahedron:Bạn có một khối tứ diện.', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'textbook', N'sách giáo khoa', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the angle between two intersecting planes', N'góc giữa hai mp cắt nhau', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the axis of symmetry', N'trục đối xứng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the center of symmetry', N'tâm đối xứng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the dihedral angle', N'góc giữa 2 mặt phẳng', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the equator', N'đường Xích đạo', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the general equation of a line', N'phương trình tổng quát của đường thẳng', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the graph “falls” from left to right', N'đồ thị đi xuống từ trái sang phải', N'mệnh đề (clause)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the graph “rises” from left to right', N'đồ thị đi lên từ trái sang phải', N'mệnh đề (clause)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the same sign', N'cùng dấu', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the scalar product', N'tích vô hướng', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the second derivative', N'đạo hàm cấp hai', N'danh từ (noun)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the set of intergers', N'tập hợp số nguyên', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the set of natural numbers', N'tập hợp số tự nhiên', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the set of rational numbers', N'tập hợp số hữu tỉ', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the set of real number', N'tập hợp số thực', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the slope of tangent', N'hệ số góc của tiếp tuyến', N'cụm danh từ (noun phrase)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the symmetric form', N'dạng chính tắc', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the third derivative', N'đạo hàm cấp ba', N'danh từ (noun)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the variation of a function', N'sự biến thiên của hàm số', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the x-intercept', N'giao điểm với Ox', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'the y-intercept', N'giao điểm với trục Oy', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'theorem', N'định lí', N'danh từ (noun)', N'Pythagoras Theorem: định lí pytago.', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'theory', N'lí thuyết', N'danh từ (noun)', N'In theory, three cases could happen: theo lí thuyết, có ba trường hợp sẽ xảy ra.', 11, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'thermal capacity', N'nhiệt dung', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Thus', N'vậy', N'động từ (verb)', N'', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'trace out', N'vạch nên', N'động từ (verb)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Transcendental', N'siêu việt', N'tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Transformation', N'Phép biến đổi (10), phép biến hình (11)', N'danh từ (noun)', N'Lớp 10: To solve an equation, we usually transform it into a simpler equivalent equation. Such transformations are called equivalent transformation: Để giải một phương trình, thông thường ra biến đổi phương trình đó thành môt phương trình tương đương đơn giản hơn. Các phép biến đổi như vậy được gọi là các phép biến đổi tương đương.
Lớp 11: the rule for setting each point M of the plane corresponding to a unique defined point M'' of the plane is called  a transformation in the plane: quy tắc đặt tương ứng mỗi điểm M của mặt phẳng với một điểm xác định duy nhất M'' của mặt phẳng đó được gọi là phép biến hình trong mặt phẳng.', 10, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'translate', N'tịnh tiến (11), dịch nghĩa (10,11,12)', N'động từ (verb)', N'Translate the graph of function y=cosx: tịnh tiến đồ thị hàm số y=cosx.', 11, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'translation', N'phép tịnh tiến', N'danh từ (noun)', N'translations is one of isometry: phép tịnh tiến là một trong những phép dời hình.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'transversal', N'đường ngang (n), ngang (adj)', N'danh từ (noun)
tính từ (adjective)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'trapezoid', N'hình thang', N'danh từ (noun)', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'triangle', N'hình tam giác', N'danh từ (noun)', N'Triangle is a plane figure with three straight sides and three angles: Hình tam giác là hình được tạo bởi ba đường thẳng và có ba góc.', 10, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'triangle inequality', N'bất đẳng thức tam giác', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'triangular prism', N'lăng trụ tam giác', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Trig Derivative', N'Đạo hàm hàm lượng giác', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Trigonometric', N'Lượng giác', N'tính từ (adjective)', N'Trigonometric values: Giá trị lượng giác.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'trigonometry identity', N'đẳng thức', N'danh từ (noun)', N'basic trigonometry identities: các hằng đẳng thức cơ bản.', 11, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Trinomal', N'Tam thức', N'danh từ (noun)', N'ax^2+bx+c=0 is a trinomial equation: ax^2 +bx+c=0 là một phương trình tam thức.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'triple root', N'nghiệm bội ba', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'true', N'đúng', N'tính từ (adjective)', N'The proposition ''1+1=2'' is true.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'trump card', N'quân bài thắng', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'truncated', N'cụt, bị khuyết', N'tính từ (adjective)', N'truncated paramid: hình chóp cụt.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'two equivalent propositions', N'hai mệnh đề tương đương', N'danh từ (noun)', N'Two propositions are equal (or logically equivalent), p = q, if they always have the same value : Hai mệnh đề bằng nhau (hoặc tương đương), p = q, nếu chúng luôn có cùng giá trị.
', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'two opposite values', N'hai giá trị đối nhau', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'two perpendicular planes', N'hai mặt phẳng vuông góc', N'danh từ (noun)
', N'', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'uncertainty', N'sai số', N'danh từ (noun)', N'The absolute uncertainty of an approximate number obtained from measurement sometimes does not reflect the accuracy of the measurement: Sai số tuyệt đối của số gần đúng nhận đước trong một phép đo đạc hôi khi không phản ánh đầy đủ tính chính xác của phéo đo đó.', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'undefined', N'không xác định', N'tính từ (adjective)', N'the derivative values are undefined: đạo hàm không xác định.', 12, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'undesirable carry', N'sự mang sang không mong muốn', N'cụm danh từ (noun phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Union', N'Sự hợp thành', N'danh từ (noun)', N'Set C containing elements that belong to A and to B is called the union of A and B: Tập hợp C chứa các phần tử thuộc vào A và B được gọi là hợp của A và B.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'union of two sets', N'hợp của 2 tập hợp', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'unique', N'duy nhất', N'tính từ (adjective)', N'unique minimum value: giá trị cực tiểu duy nhất.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'unique solution', N'nghiệm duy nhất', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'unit', N'đơn vị', N'danh từ (noun)', N'imaginary unit: đơn vị ảo.', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'unit vector', N'vector đơn vị', N'danh từ (noun)', N'To find a unit vector with the same direction as a given vector, we divide by the magnitude of the vector : Để tìm một vectơ đơn vị có cùng hướng với một vectơ đã cho, chúng ta chia cho độ lớn của vectơ.', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Unknown', N'Ẩn', N'danh từ (noun)', N'Beside equations with one unknown, we also see equations with mutliple unknowns: Bên cạnh phương trình một ẩn, ta còn thấy nhiều phương trình với nhiều ẩn.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'upside down', N'bề lõm úp xuống', N'cụm tính từ (adjective phrase)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'upward', N'tăng', N'tính từ (adjective)', N'the function y=f(x) is increasing (upward) or decreasing (downward): hàm số y=f(x) đồng biến hoặc nghịch biến.', 12, 1, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Variable', N'Biến số', N'danh từ (noun)', N'Give two variables X and Y, where X contains a value which is an element of the set of numbers D: Cho hai biến số X và Y, trong đó X nhận giá trị thuộc tập số D.', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'variation', N'biến phân', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Variation table', N'Bảng biến thiên', N'danh từ (noun)', N'By the variation table, we can roughtly imagine the variation of a function (increasing or decreasing on which interval): Nhìn vào bảng biến thien, ta sơ bộ hình dung được đồ thị hàm số (đi lên trong khoảng nào hay đi xuống trong khoảng nào)', 10, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'variation trend', N'chiều biến thiên', N'danh từ (noun)', N'', NULL, 1, 0, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'velocity', N'vận tốc.', N'danh từ (noun)', N'a problem about finding instantaneouns velocity: bài toán tìm vận tốc tức thời.', NULL, 0, 1, 0, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'Vertex', N'Đỉnh', N'danh từ (noun)', N'Determine the coordiantes of the vertex anh function of the axis of symmetry of parabol: Xác định tạo đỏ của đỉnh, phương trình của trục đối xứng của parabol.', 10, 1, 1, 1, NULL)
GO
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'vertical', N'theo chiều dọc, đứng thẳng', N'tính từ (adjective)', N'vertical asymptotes: đường tiệm cận đứng.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'vertical angle', N'góc đối đỉnh', N'danh từ (noun)', N'', NULL, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'volume', N'thể tích', N'danh từ (noun)', N'find x to get the volume of the cube is the largest: tìm x để thể tích hình hôp lớn nhất.', 12, 1, 1, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'volume formula', N'công thức thể tích', N'danh từ (noun)', N'', NULL, 0, 0, 1, NULL)
INSERT [dbo].[Data] ([Word], [Meaning], [Usage], [Example], [MaGrade], [Lop10], [Lop11], [Lop12], [ID]) VALUES (N'width', N'chiều rộng', N'danh từ (noun)', N'', NULL, 0, 1, 1, NULL)
INSERT [dbo].[Grade] ([GradeInt], [MaGrade]) VALUES (N'Lớp 10', 10)
INSERT [dbo].[Grade] ([GradeInt], [MaGrade]) VALUES (N'Lớp 11', 11)
INSERT [dbo].[Grade] ([GradeInt], [MaGrade]) VALUES (N'Lớp 12', 12)
INSERT [dbo].[Login] ([Username], [Password], [Permission]) VALUES (N'user', N'user', 1)
INSERT [dbo].[Login] ([Username], [Password], [Permission]) VALUES (N'thanhdat', N'2605', 1)
INSERT [dbo].[Login] ([Username], [Password], [Permission]) VALUES (N'thanhdanh', N'2912', 1)
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_Grade] FOREIGN KEY([MaGrade])
REFERENCES [dbo].[Grade] ([MaGrade])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_Grade]
GO
USE [master]
GO
ALTER DATABASE [EVMD] SET  READ_WRITE 
GO
