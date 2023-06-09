USE [JobPortal]
GO
/****** Object:  Table [dbo].[TblAdminDetails]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAdminDetails](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](50) NULL,
	[EmailId] [nvarchar](250) NULL,
	[ContactNo] [bigint] NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_TblAdminDetails] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblApplyJobs]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblApplyJobs](
	[AppliedJobID] [int] IDENTITY(1,1) NOT NULL,
	[JobSeekerCode] [nvarchar](50) NULL,
	[PostJobCode] [nvarchar](50) NULL,
	[StatusID] [int] NULL,
	[AppliedDate] [date] NULL,
	[ResumePDF] [nvarchar](max) NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_TblApplyJobs] PRIMARY KEY CLUSTERED 
(
	[AppliedJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBenefits]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBenefits](
	[BenefitId] [int] IDENTITY(1,1) NOT NULL,
	[Benefits] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblBenefits] PRIMARY KEY CLUSTERED 
(
	[BenefitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[CityId] [int] NOT NULL,
	[StateId] [int] NULL,
	[CityName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCompanyDetails]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCompanyDetails](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[EmployerCode] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[NoOfEmployees] [nvarchar](50) NULL,
	[ContactNo] [bigint] NULL,
	[CompanyWebsite] [nvarchar](50) NULL,
	[CompanyEmail] [nvarchar](250) NULL,
	[AboutCompany] [nvarchar](1000) NULL,
	[IndustryId] [int] NULL,
	[CityId] [nvarchar](20) NULL,
	[Pincode] [int] NULL,
	[CompanyLogo] [nvarchar](max) NULL,
	[Portfolio] [nvarchar](max) NULL,
	[Slogan] [nvarchar](50) NULL,
	[Facebook] [nvarchar](100) NULL,
	[Twitter] [nvarchar](100) NULL,
	[LinkedIn] [nvarchar](100) NULL,
	[Instagram] [nvarchar](100) NULL,
	[Google+] [nvarchar](100) NULL,
	[OwnerName] [nvarchar](250) NULL,
	[HRName] [nvarchar](max) NULL,
	[HRNumber] [nvarchar](max) NULL,
	[HREmail] [nvarchar](max) NULL,
	[Source] [nvarchar](50) NULL,
	[RegistrationDate] [date] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_TblCompanyDetails_1] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCompanyFeedback]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCompanyFeedback](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[EmployerCode] [nvarchar](50) NULL,
	[Seekercode] [nvarchar](50) NULL,
	[Rating] [int] NULL,
	[Review] [nvarchar](250) NULL,
	[DoyouCurrentlyworkhere] [bit] NULL,
	[Follow] [bit] NULL,
	[StatusId] [int] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_TblCompanyFeedback] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountry](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCountry_1] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDegree]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDegree](
	[DegreeID] [int] IDENTITY(1,1) NOT NULL,
	[QualificationId] [int] NULL,
	[Degree] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblDegree] PRIMARY KEY CLUSTERED 
(
	[DegreeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEducationDetails]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEducationDetails](
	[EducationId] [int] IDENTITY(1,1) NOT NULL,
	[SeekerCode] [nvarchar](50) NULL,
	[SSC] [int] NULL,
	[SSCBoard] [int] NULL,
	[SSCPassingYear] [int] NULL,
	[SSCMarks] [int] NULL,
	[HSC] [int] NULL,
	[HSCBoard] [int] NULL,
	[HSCPassingYear] [int] NULL,
	[HSCMarks] [int] NULL,
	[UG] [int] NULL,
	[UGDegree] [int] NULL,
	[UGSpecialization] [int] NULL,
	[UGUniversity] [nvarchar](250) NULL,
	[UGPassingYear] [int] NULL,
	[UGMarks] [int] NULL,
	[UGCourseType] [nvarchar](20) NULL,
	[Graduation] [int] NULL,
	[GraduationDegree] [nvarchar](10) NULL,
	[GraduationSpecialization] [int] NULL,
	[GraduationUniversity] [nvarchar](250) NULL,
	[GraduationPassingYear] [int] NULL,
	[GraduationMarks] [int] NULL,
	[GCourseType] [nvarchar](20) NULL,
	[PG] [int] NULL,
	[PGDegree] [nvarchar](10) NULL,
	[PGSpecialization] [int] NULL,
	[PGUniversity] [nvarchar](250) NULL,
	[PGPassingYear] [int] NULL,
	[PGMarks] [int] NULL,
	[PGCourseType] [nvarchar](20) NULL,
 CONSTRAINT [PK_TblEducationDetails] PRIMARY KEY CLUSTERED 
(
	[EducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEmployementDetails]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmployementDetails](
	[EmployementId] [int] IDENTITY(1,1) NOT NULL,
	[SeekerCode] [nvarchar](50) NULL,
	[CurrentEmployement] [bit] NULL,
	[EmployementType] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Designation] [nvarchar](200) NULL,
	[JoiningDate] [nvarchar](50) NULL,
	[CurrentSalary] [nvarchar](50) NULL,
	[SkillID] [nvarchar](20) NULL,
	[JobProfile] [nvarchar](max) NULL,
	[NoticePeriod] [nvarchar](30) NULL,
 CONSTRAINT [PK_TblEmployementDetails] PRIMARY KEY CLUSTERED 
(
	[EmployementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEmployerReg]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmployerReg](
	[EmployeerId] [int] IDENTITY(1,1) NOT NULL,
	[EmployerCode] [nvarchar](50) NOT NULL,
	[EmployerName] [nvarchar](250) NULL,
	[EmailId] [nvarchar](250) NULL,
	[ContactNo] [bigint] NULL,
	[AlternateContactNo] [bigint] NULL,
	[Password] [nvarchar](20) NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_TblEmployerReg_1] PRIMARY KEY CLUSTERED 
(
	[EmployerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblIndustry]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblIndustry](
	[IndustryId] [int] IDENTITY(1,1) NOT NULL,
	[IndustryName] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblIndustry] PRIMARY KEY CLUSTERED 
(
	[IndustryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblInterview]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblInterview](
	[InterviewId] [int] IDENTITY(1,1) NOT NULL,
	[RoundName] [nvarchar](50) NULL,
	[AppliedJobId] [nvarchar](max) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[InterviewAddress] [nvarchar](max) NULL,
	[Date] [date] NULL,
	[Comment] [nvarchar](500) NULL,
	[InterviewType] [nvarchar](50) NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_TblInterview] PRIMARY KEY CLUSTERED 
(
	[InterviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblJobAlert]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblJobAlert](
	[JobAlertId] [int] IDENTITY(1,1) NOT NULL,
	[SeekerCode] [nvarchar](50) NULL,
	[CurrentIndustry] [int] NULL,
	[TotalExperience] [nvarchar](50) NULL,
	[CurrentLocation] [nvarchar](50) NULL,
	[Category] [int] NULL,
	[AlertEmail] [nvarchar](250) NULL,
	[AlertPhone] [bigint] NULL,
 CONSTRAINT [PK_TblJobAlert] PRIMARY KEY CLUSTERED 
(
	[JobAlertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblJobBenifits]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblJobBenifits](
	[JobBenefitId] [int] IDENTITY(1,1) NOT NULL,
	[JobBenefit] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblJobBenifits] PRIMARY KEY CLUSTERED 
(
	[JobBenefitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblJobCategory]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblJobCategory](
	[JobCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[IndustryId] [int] NULL,
	[JobCategory] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblJobCategory] PRIMARY KEY CLUSTERED 
(
	[JobCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblJobRegistration]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblJobRegistration](
	[PostJobId] [int] IDENTITY(1,1) NOT NULL,
	[PostJobCode] [nvarchar](50) NOT NULL,
	[CompanyId] [int] NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[OpportunityType] [nvarchar](20) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[JobCategoryId] [int] NULL,
	[JobDescription] [nvarchar](max) NULL,
	[JobLocation] [nvarchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[JobType] [nvarchar](50) NULL,
	[RequiredQualificationId] [nvarchar](20) NULL,
	[NoofOpenings] [nvarchar](50) NULL,
	[WorkingShifts] [nvarchar](50) NULL,
	[SalaryType] [nvarchar](50) NULL,
	[SalaryRange] [nvarchar](200) NULL,
	[Salary] [nvarchar](50) NULL,
	[JobBenefits] [nvarchar](200) NULL,
	[CollectResume] [bit] NULL,
	[TotalExperience] [nvarchar](50) NULL,
	[ExpectedJoiningDate] [date] NULL,
	[ApplicationStartDate] [date] NULL,
	[ApplicationEndDate] [date] NULL,
	[StatusId] [int] NULL,
	[ApprovalDate] [date] NULL,
	[RejectionReason] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_TblJobRegistration] PRIMARY KEY CLUSTERED 
(
	[PostJobCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblJobSeekerDetails]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblJobSeekerDetails](
	[SeekerId] [int] IDENTITY(1,1) NOT NULL,
	[SeekerCode] [nvarchar](50) NOT NULL,
	[SeekerName] [nvarchar](250) NULL,
	[EmailId] [nvarchar](250) NULL,
	[Password] [nvarchar](20) NULL,
	[ContactNo] [bigint] NULL,
	[AlternateContactNo] [bigint] NULL,
	[DOB] [date] NULL,
	[Gender] [nvarchar](10) NULL,
	[CorrespondenceAddress] [nvarchar](max) NULL,
	[PermanentAddress] [nvarchar](max) NULL,
	[Pincode] [int] NULL,
	[CityId] [int] NULL,
	[LanguageId] [nvarchar](20) NULL,
	[PhysicallyChallenged] [bit] NULL,
	[CasteCategory] [nvarchar](50) NULL,
	[MaritalStatus] [nvarchar](20) NULL,
	[DateOfRegistration] [date] NULL,
	[ProfileSummary] [nvarchar](max) NULL,
	[StatusId] [int] NULL,
	[ResumePDF] [nvarchar](max) NULL,
	[ProfileIMG] [nvarchar](max) NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_TblJobSeekerDetails] PRIMARY KEY CLUSTERED 
(
	[SeekerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLanguage]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLanguage](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblLanguage] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPayment]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Seekercode] [nvarchar](50) NULL,
	[EmployerCode] [nvarchar](50) NULL,
	[SubscriptionId] [int] NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[SubscriptionDate] [date] NULL,
	[PaymentDate] [date] NULL,
	[TransactionId] [nvarchar](50) NULL,
	[StatusId] [int] NULL,
	[GSTNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPayment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPlan]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlan](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[BenefitId] [nvarchar](50) NULL,
	[Plans] [nvarchar](50) NULL,
	[PlanPrice] [nvarchar](50) NULL,
	[PlanDuration] [nvarchar](50) NULL,
	[PlanRegistrationDate] [date] NULL,
	[Planfor] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPlan] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblprofileview]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblprofileview](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[SeekerCode] [nvarchar](50) NULL,
	[EmployerCode] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProjectDetails]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProjectDetails](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[SeekerCode] [nvarchar](50) NULL,
	[ProjectTitle] [nvarchar](max) NULL,
	[ClientName] [nvarchar](200) NULL,
	[ProjectStatus] [nvarchar](20) NULL,
	[TotalExperience] [nvarchar](50) NULL,
	[ProjectDetails] [nvarchar](max) NULL,
 CONSTRAINT [PK_TblProjectDetails] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblQualification]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblQualification](
	[QualificationId] [int] IDENTITY(1,1) NOT NULL,
	[Qualification] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblQualification] PRIMARY KEY CLUSTERED 
(
	[QualificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRequireQualification]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRequireQualification](
	[RequireQualificationId] [int] IDENTITY(1,1) NOT NULL,
	[RequireQualification] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblRequireQualification] PRIMARY KEY CLUSTERED 
(
	[RequireQualificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRound]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRound](
	[RoundID] [int] IDENTITY(1,1) NOT NULL,
	[EmployerCode] [nvarchar](25) NULL,
	[RoundName] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblRound] PRIMARY KEY CLUSTERED 
(
	[RoundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblShareJob]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblShareJob](
	[ShareId] [int] IDENTITY(1,1) NOT NULL,
	[Share] [nvarchar](100) NULL,
	[EmployerCode] [nvarchar](50) NULL,
	[Seekercode] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblShareJob] PRIMARY KEY CLUSTERED 
(
	[ShareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSkill]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSkill](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](200) NULL,
 CONSTRAINT [PK_TblSkill] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSpecialization]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSpecialization](
	[SpecializationId] [int] NOT NULL,
	[DegreeId] [int] NULL,
	[Specialization] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblSpecialization] PRIMARY KEY CLUSTERED 
(
	[SpecializationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NULL,
	[StateName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblStatus]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblStatus] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSubscription]    Script Date: 29-05-2023 19:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSubscription](
	[SubscriptionId] [int] IDENTITY(1,1) NOT NULL,
	[SubscriptionName] [nvarchar](100) NULL,
	[UserCategory] [nvarchar](10) NULL,
	[Benefits] [nvarchar](50) NULL,
	[SubscriptionDetails] [nvarchar](max) NULL,
	[SubscriptionDuration] [nvarchar](max) NULL,
	[PlanPricing] [bigint] NULL,
	[IsOffer] [nvarchar](10) NULL,
	[Offer] [int] NULL,
	[OfferedPrice] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblAdminDetails] ON 

INSERT [dbo].[TblAdminDetails] ([AdminId], [AdminName], [EmailId], [ContactNo], [ProfilePicture], [Password]) VALUES (1, N'Ravi Varma', N'ravi12@gmail.com', 7888954519, N'null', N'Ravi@123')
INSERT [dbo].[TblAdminDetails] ([AdminId], [AdminName], [EmailId], [ContactNo], [ProfilePicture], [Password]) VALUES (2, N'Sanket shah', N'sanketshah@gmail.com', 9812154586, N'null', N'sanket@321')
INSERT [dbo].[TblAdminDetails] ([AdminId], [AdminName], [EmailId], [ContactNo], [ProfilePicture], [Password]) VALUES (3, N'Kavita Kadam', N'kavita123@gmail.com', 7894561598, NULL, N'Kavita123@')
SET IDENTITY_INSERT [dbo].[TblAdminDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[TblApplyJobs] ON 

INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (30, N'JSC0006', N'PJC13', 23, CAST(N'2023-12-10' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (31, N'JSC0007', N'PJC13', 23, CAST(N'2023-12-14' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (32, N'JSC0008', N'PJC13', 12, CAST(N'2023-12-02' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (33, N'JSC0009', N'PJC13', 23, CAST(N'2023-12-02' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (34, N'JSC0010', N'PJC13', 23, CAST(N'2023-12-10' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (35, N'JSC0011', N'PJC13', 10, CAST(N'2023-12-02' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (36, N'JSC79', N'PJC13', 23, CAST(N'2023-05-03' AS Date), N'tanmayresume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (37, N'JSC0001', NULL, 22, CAST(N'2023-05-04' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (38, N'JSC80', N'PJC13', 22, CAST(N'2023-05-04' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (39, N'JSC0094', NULL, 22, CAST(N'2023-05-05' AS Date), N'Ashish Ostwal Resume (2).pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (40, N'JSC0001', NULL, 22, CAST(N'2023-05-10' AS Date), N'tanmayresume.pdf.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (41, N'JSC0001', NULL, 22, CAST(N'2023-05-10' AS Date), N'Admin Module..pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (43, N'JSC0001', N'PJC0002', 12, CAST(N'2023-05-11' AS Date), N'Admin Module Final.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (44, N'JSC0001', N'PJC0001', 22, CAST(N'2023-05-12' AS Date), N'Admin Module..pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (45, N'JSC81', N'PJC13', 22, CAST(N'2023-05-12' AS Date), N'Employeer Module Final.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (46, N'JSC0001', N'PJC0001', 22, CAST(N'2023-05-17' AS Date), N'Rita Sanjay Patil resume.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (47, N'JSC0001', N'PJC0001', 9, CAST(N'2023-05-17' AS Date), N'tanmayresume.pdf.pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (48, N'JSC0001', N'PJC0001', 9, CAST(N'2023-05-18' AS Date), N'Admin Module..pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (49, N'JSC0001', N'PJC0001', 9, CAST(N'2023-05-18' AS Date), N'Employeer_Module[1].pdf', 0)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (50, N'JSC0001', N'PJC0001', 9, CAST(N'2023-05-26' AS Date), N'Admin Module..pdf', NULL)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (51, N'JSC0001', N'PJC0001', 9, CAST(N'2023-05-26' AS Date), N'Admin Module..pdf', NULL)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (52, N'JSC0001', N'PJC0001', 9, CAST(N'2023-05-26' AS Date), N'Admin Module Final.pdf', NULL)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (53, N'JSC0001', N'PJC18', 9, CAST(N'2023-05-29' AS Date), N'tanmayresume.pdf.pdf', NULL)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (54, N'JSC0001', N'PJC0006', 9, CAST(N'2023-05-29' AS Date), N'tanmayresume.pdf.pdf', NULL)
INSERT [dbo].[TblApplyJobs] ([AppliedJobID], [JobSeekerCode], [PostJobCode], [StatusID], [AppliedDate], [ResumePDF], [isDelete]) VALUES (55, N'JSC0070', N'PJC0001', 9, CAST(N'2023-05-29' AS Date), N'mahesh.pdf', NULL)
SET IDENTITY_INSERT [dbo].[TblApplyJobs] OFF
GO
SET IDENTITY_INSERT [dbo].[tblBenefits] ON 

INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (1, N'Get Priority Access Jobs  ')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (2, N'Rank Higher in Search ')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (3, N'Unlimited Resume Search')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (4, N'Unlimited Resume Search')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (5, N'Email reminder')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (6, N'Contact Credit')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (7, N'Rank Higher in Search results – Automatic refresh boost for paid profile/')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (8, N'3 times Higher Profile Performance (Search Appearance and Recruiter Actions)/')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (9, N'Highlighted Profile in Naukri Database/')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (10, N'Access to Premium Resume Maker for 3 months/')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (11, N'Dedicated Relationship Manager/')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (12, N'Get Priority Access to jobs – within 24 hrs of being posted/')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (13, N'Receive profile based jobs on SMS - Max 3 per day/')
INSERT [dbo].[tblBenefits] ([BenefitId], [Benefits]) VALUES (14, N'Expand job search to openings posted on company websites')
SET IDENTITY_INSERT [dbo].[tblBenefits] OFF
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (1, 1, N'Anantapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (2, 1, N'Chittoor')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (3, 1, N'Cuddapah')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (4, 1, N'East Godavari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (5, 1, N'Alluri Sitarama Raju')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (6, 1, N'Anakapalli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (7, 1, N'Annamaya')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (8, 1, N'Bapatla')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (9, 1, N'Eluru')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (10, 1, N'Guntur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (11, 1, N'Kadapa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (12, 1, N'Kakinada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (13, 1, N'Konaseema')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (14, 1, N'Krishna')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (15, 1, N'Kurnool')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (16, 1, N'Manyam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (17, 1, N'N T Rama Rao')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (18, 1, N'Nandyal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (19, 1, N'Nellore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (20, 1, N'Palnadu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (21, 1, N'Prakasam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (22, 1, N'Sri Balaji')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (23, 1, N'Sri Satya Sai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (24, 1, N'Srikakulam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (25, 1, N'Visakhapatnam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (26, 1, N'Vizianagaram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (27, 1, N'West Godavari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (28, 2, N'Anjaw')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (29, 2, N'Central Siang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (30, 2, N'Changlang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (31, 2, N'Dibang Valley')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (32, 2, N'East Kameng')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (33, 2, N'East Siang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (34, 2, N'Kamle')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (35, 2, N'Kra Daadi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (36, 2, N'Kurung Kumey')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (37, 2, N'Lepa Rada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (38, 2, N'Lohit')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (39, 2, N'Longding')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (40, 2, N'Lower Dibang Valley')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (41, 2, N'Lower Siang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (42, 2, N'Lower Subansiri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (43, 2, N'Namsai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (44, 2, N'Pakke Kessang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (45, 2, N'Papum Pare')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (46, 2, N'Shi Yomi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (47, 2, N'Tawang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (48, 2, N'Tirap')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (49, 2, N'Upper Siang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (50, 2, N'Upper Subansiri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (51, 2, N'West Kameng')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (52, 2, N'West Siang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (53, 3, N'Bajali')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (54, 3, N'Baksa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (55, 3, N'Barpeta')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (56, 3, N'Biswanath')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (57, 3, N'Bongaigaon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (58, 3, N'Cachar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (59, 3, N'Charaideo')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (60, 3, N'Chirang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (61, 3, N'Darrang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (62, 3, N'Dhemaji')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (63, 3, N'Dhubri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (64, 3, N'Dibrugarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (65, 3, N'Dima Hasao')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (66, 3, N'Goalpara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (67, 3, N'Golaghat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (68, 3, N'Hailakandi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (69, 3, N'Hojai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (70, 3, N'Jorhat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (71, 3, N'Kamrup')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (72, 3, N'Kamrup Metropolitan')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (73, 3, N'Karbi Anglong')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (74, 3, N'Karimganj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (75, 3, N'Kokrajhar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (76, 3, N'Lakhimpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (77, 3, N'Majuli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (78, 3, N'Morigaon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (79, 3, N'Nagaon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (80, 3, N'Nalbari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (81, 3, N'Sivasagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (82, 3, N'Sonitpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (83, 3, N'South Salmara-Mankachar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (84, 3, N'Tamulpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (85, 3, N'Tinsukia')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (86, 3, N'Udalguri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (87, 3, N'West Karbi Anglong')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (88, 4, N'Araria')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (89, 4, N'Arwal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (90, 4, N'Aurangabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (91, 4, N'Banka')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (92, 4, N'Begusarai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (93, 4, N'Bhagalpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (94, 4, N'Bhojpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (95, 4, N'Buxar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (96, 4, N'Darbhanga')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (97, 4, N'East Champaran')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (98, 4, N'Gaya')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (99, 4, N'Gopalganj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (100, 4, N'Jamui')
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (101, 4, N'Jehanabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (102, 4, N'Kaimur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (103, 4, N'Katihar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (104, 4, N'Khagaria')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (105, 4, N'Kishanganj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (106, 4, N'Lakhisarai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (107, 4, N'Madhepura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (108, 4, N'Madhubani')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (109, 4, N'Munger')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (110, 4, N'Muzaffarpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (111, 4, N'Nalanda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (112, 4, N'Nawada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (113, 4, N'Patna')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (114, 4, N'Purnia')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (115, 4, N'Rohtas')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (116, 4, N'Saharsa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (117, 4, N'Samastipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (118, 4, N'Saran')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (119, 4, N'Sheikhpura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (120, 4, N'Sheohar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (121, 4, N'Sitamarhi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (122, 4, N'Siwan')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (123, 4, N'Supaul')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (124, 4, N'Vaishali')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (125, 4, N'West Champaran')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (126, 5, N'Balod')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (127, 5, N'Baloda Bazar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (128, 5, N'Balrampur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (129, 5, N'Bastar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (130, 5, N'Bemetara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (131, 5, N'Bijapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (132, 5, N'Bilaspur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (133, 5, N'Dantewada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (134, 5, N'Dhamtari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (135, 5, N'Durg')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (136, 5, N'Gariaband')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (137, 5, N'Gaurela Pendra Marwahi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (138, 5, N'Janjgir Champa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (139, 5, N'Jashpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (140, 5, N'Kabirdham')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (141, 5, N'Kanker')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (142, 5, N'Khairagarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (143, 5, N'Kondagaon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (144, 5, N'Korba')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (145, 5, N'Koriya')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (146, 5, N'Mahasamund')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (147, 5, N'Manendragarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (148, 5, N'Mohla Manpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (149, 5, N'Mungeli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (150, 5, N'Narayanpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (151, 5, N'Raigarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (152, 5, N'Raipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (153, 5, N'Rajnandgaon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (154, 5, N'Sakti')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (155, 5, N'Sarangarh Bilaigarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (156, 5, N'Sukma')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (157, 5, N'Surajpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (158, 5, N'Surguja')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (159, 6, N'Vasco Da Gama')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (160, 6, N'Ponda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (161, 6, N'Margoan')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (162, 6, N'Mapusa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (163, 6, N'Goa Velha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (164, 7, N'Ahmedabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (165, 7, N'Amreli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (166, 7, N'Anand')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (167, 7, N'Aravalli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (168, 7, N'Banaskantha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (169, 7, N'Bharuch')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (170, 7, N'Bhavnagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (171, 7, N'Botad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (172, 7, N'Chhota Udaipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (173, 7, N'Dahod')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (174, 7, N'Dang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (175, 7, N'Devbhoomi Dwarka')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (176, 7, N'Gandhinagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (177, 7, N'Gir Somnath')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (178, 7, N'Jamnagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (179, 7, N'Junagadh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (180, 7, N'Kheda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (181, 7, N'Kutch')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (182, 7, N'Mahisagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (183, 7, N'Mehsana')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (184, 7, N'Morbi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (185, 7, N'Narmada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (186, 7, N'Navsari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (187, 7, N'Panchmahal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (188, 7, N'Patan')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (189, 7, N'Porbandar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (190, 7, N'Rajkot')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (191, 7, N'Sabarkantha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (192, 7, N'Surat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (193, 7, N'Surendranagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (194, 7, N'Tapi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (195, 7, N'Vadodara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (196, 7, N'Valsad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (197, 8, N'Ambala')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (198, 8, N'Bhiwani')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (199, 8, N'Charkhi Dadri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (200, 8, N'Faridabad')
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (201, 8, N'Fatehabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (202, 8, N'Gurugram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (203, 8, N'Hisar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (204, 8, N'Jhajjar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (205, 8, N'Jind')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (206, 8, N'Kaithal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (207, 8, N'Karnal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (208, 8, N'Kurukshetra')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (209, 8, N'Mahendragarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (210, 8, N'Mewat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (211, 8, N'Palwal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (212, 8, N'Panchkula')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (213, 8, N'Panipat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (214, 8, N'Rewari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (215, 8, N'Rohtak')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (216, 8, N'Sirsa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (217, 8, N'Sonipat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (218, 8, N'Yamunanagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (219, 9, N'Bilaspur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (220, 9, N'Chamba')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (221, 9, N'Hamirpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (222, 9, N'Kangra')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (223, 9, N'Kinnaur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (224, 9, N'Kullu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (225, 9, N'Lahaul Spiti')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (226, 9, N'Mandi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (227, 9, N'Shimla')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (228, 9, N'Sirmaur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (229, 9, N'Solan')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (230, 9, N'Una')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (231, 10, N'Bokaro')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (232, 10, N'Chatra')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (233, 10, N'Deoghar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (234, 10, N'Dhanbad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (235, 10, N'Dumka')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (236, 10, N'East Singhbhum')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (237, 10, N'Garhwa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (238, 10, N'Giridih')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (239, 10, N'Godda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (240, 10, N'Gumla')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (241, 10, N'Hazaribagh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (242, 10, N'Jamtara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (243, 10, N'Khunti')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (244, 10, N'Koderma')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (245, 10, N'Latehar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (246, 10, N'Lohardaga')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (247, 10, N'Pakur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (248, 10, N'Palamu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (249, 10, N'Ramgarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (250, 10, N'Ranchi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (251, 10, N'Sahebganj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (252, 10, N'Seraikela Kharsawan')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (253, 10, N'Simdega')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (254, 10, N'West Singhbhum')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (255, 11, N'Bagalkot')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (256, 11, N'Bangalore Rural')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (257, 11, N'Bangalore Urban')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (258, 11, N'Belgaum')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (259, 11, N'Bellary')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (260, 11, N'Bidar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (261, 11, N'Chamarajanagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (262, 11, N'Chikkaballapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (263, 11, N'Chikkamagaluru')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (264, 11, N'Chitradurga')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (265, 11, N'Dakshina Kannada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (266, 11, N'Davanagere')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (267, 11, N'Dharwad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (268, 11, N'Gadag')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (269, 11, N'Gulbarga')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (270, 11, N'Hassan')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (271, 11, N'Haveri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (272, 11, N'Kodagu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (273, 11, N'Kolar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (274, 11, N'Koppal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (275, 11, N'Mandya')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (276, 11, N'Mysore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (277, 11, N'Raichur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (278, 11, N'Ramanagara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (279, 11, N'Shimoga')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (280, 11, N'Tumkur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (281, 11, N'Udupi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (282, 11, N'Uttara Kannada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (283, 11, N'Vijayanagara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (284, 11, N'Vijayapura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (285, 11, N'Yadgir')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (286, 12, N'Alappuzha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (287, 12, N'Ernakulam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (288, 12, N'Idukki')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (289, 12, N'Kannur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (290, 12, N'Kasaragod')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (291, 12, N'Kollam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (292, 12, N'Kottayam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (293, 12, N'Kozhikode')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (294, 12, N'Malappuram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (295, 12, N'Palakkad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (296, 12, N'Pathanamthitta')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (297, 12, N'Thiruvananthapuram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (298, 12, N'Thrissur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (299, 12, N'Wayanad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (300, 13, N'Agar Malwa')
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (301, 13, N'Alirajpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (302, 13, N'Anuppur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (303, 13, N'Ashoknagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (304, 13, N'Balaghat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (305, 13, N'Barwani')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (306, 13, N'Betul')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (307, 13, N'Bhind')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (308, 13, N'Bhopal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (309, 13, N'Burhanpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (310, 13, N'Chachaura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (311, 13, N'Chhatarpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (312, 13, N'Chhindwara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (313, 13, N'Damoh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (314, 13, N'Datia')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (315, 13, N'Dewas')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (316, 13, N'Dhar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (317, 13, N'Dindori')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (318, 13, N'Guna')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (319, 13, N'Gwalior')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (320, 13, N'Harda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (321, 13, N'Hoshangabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (322, 13, N'Indore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (323, 13, N'Jabalpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (324, 13, N'Jhabua')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (325, 13, N'Katni')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (326, 13, N'Khandwa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (327, 13, N'Khargone')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (328, 13, N'Maihar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (329, 13, N'Mandla')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (330, 13, N'Mandsaur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (331, 13, N'Morena')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (332, 13, N'Nagda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (333, 13, N'Narsinghpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (334, 13, N'Neemuch')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (335, 13, N'Niwari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (336, 13, N'Panna')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (337, 13, N'Raisen')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (338, 13, N'Rajgarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (339, 13, N'Ratlam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (340, 13, N'Rewa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (341, 13, N'Sagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (342, 13, N'Satna')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (343, 13, N'Sehore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (344, 13, N'Seoni')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (345, 13, N'Shahdol')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (346, 13, N'Shajapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (347, 13, N'Sheopur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (348, 13, N'Shivpuri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (349, 13, N'Sidhi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (350, 13, N'Singrauli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (351, 13, N'Tikamgarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (352, 13, N'Ujjain')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (353, 13, N'Umaria')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (354, 13, N'Vidisha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (355, 14, N'Ahmednagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (356, 14, N'Akola')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (357, 14, N'Amravati')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (358, 14, N'Aurangabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (359, 14, N'Beed')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (360, 14, N'Bhandara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (361, 14, N'Buldhana')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (362, 14, N'Chandrapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (363, 14, N'Dhule')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (364, 14, N'Gadchiroli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (365, 14, N'Gondia')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (366, 14, N'Hingoli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (367, 14, N'Jalgaon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (368, 14, N'Jalna')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (369, 14, N'Kolhapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (370, 14, N'Latur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (371, 14, N'Mumbai City')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (372, 14, N'Mumbai Suburban')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (373, 14, N'Nagpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (374, 14, N'Nanded')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (375, 14, N'Nandurbar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (376, 14, N'Nashik')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (377, 14, N'Osmanabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (378, 14, N'Palghar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (379, 14, N'Parbhani')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (380, 14, N'Pune')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (381, 14, N'Raigad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (382, 14, N'Ratnagiri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (383, 14, N'Sangli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (384, 14, N'Satara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (385, 14, N'Sindhudurg')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (386, 14, N'Solapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (387, 14, N'Thane')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (388, 14, N'Wardha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (389, 14, N'Washim')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (390, 14, N'Yavatmal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (391, 15, N'Bishnupur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (392, 15, N'Chandel')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (393, 15, N'Churachandpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (394, 15, N'Imphal East')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (395, 15, N'Imphal West')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (396, 15, N'Jiribam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (397, 15, N'Kakching')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (398, 15, N'Kamjong')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (399, 15, N'Kangpokpi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (400, 15, N'Noney')
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (401, 15, N'Pherzawl')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (402, 15, N'Senapati')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (403, 15, N'Tamenglong')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (404, 15, N'Tengnoupal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (405, 15, N'Thoubal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (406, 15, N'Ukhrul')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (407, 16, N'East Garo Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (408, 16, N'East Jaintia Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (409, 16, N'East Khasi Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (410, 16, N'Mairang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (411, 16, N'North Garo Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (412, 16, N'Ri Bhoi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (413, 16, N'South Garo Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (414, 16, N'South West Garo Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (415, 16, N'South West Khasi Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (416, 16, N'West Garo Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (417, 16, N'West Jaintia Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (418, 16, N'West Khasi Hills')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (419, 17, N'Aizawl')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (420, 17, N'Champhai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (421, 17, N'Hnahthial')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (422, 17, N'Kolasib')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (423, 17, N'Khawzawl')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (424, 17, N'Lawngtlai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (425, 17, N'Lunglei')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (426, 17, N'Mamit')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (427, 17, N'Saiha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (428, 17, N'Serchhip')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (429, 17, N'Saitual')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (430, 18, N'Chumukedima')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (431, 18, N'Dimapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (432, 18, N'Kiphire')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (433, 18, N'Kohima')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (434, 18, N'Longleng')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (435, 18, N'Mokokchung')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (436, 18, N'Mon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (437, 18, N'Niuland')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (438, 18, N'Noklak')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (439, 18, N'Peren')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (440, 18, N'Phek')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (441, 18, N'Shamator')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (442, 18, N'Tseminyu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (443, 18, N'Tuensang')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (444, 18, N'Wokha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (445, 18, N'Zunheboto')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (446, 19, N'Angul')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (447, 19, N'Balangir')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (448, 19, N'Balasore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (449, 19, N'Bargarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (450, 19, N'Bhadrak')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (451, 19, N'Boudh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (452, 19, N'Cuttack')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (453, 19, N'Debagarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (454, 19, N'Dhenkanal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (455, 19, N'Gajapati')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (456, 19, N'Ganjam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (457, 19, N'Jagatsinghpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (458, 19, N'Jajpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (459, 19, N'Jharsuguda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (460, 19, N'Kalahandi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (461, 19, N'Kandhamal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (462, 19, N'Kendrapara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (463, 19, N'Kendujhar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (464, 19, N'Khordha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (465, 19, N'Koraput')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (466, 19, N'Malkangiri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (467, 19, N'Mayurbhanj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (468, 19, N'Nabarangpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (469, 19, N'Nayagarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (470, 19, N'Nuapada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (471, 19, N'Puri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (472, 19, N'Rayagada')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (473, 19, N'Sambalpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (474, 19, N'Subarnapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (475, 19, N'Sundergarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (476, 20, N'Amritsar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (477, 20, N'Barnala')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (478, 20, N'Bathinda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (479, 20, N'Faridkot')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (480, 20, N'Fatehgarh Sahib')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (481, 20, N'Fazilka')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (482, 20, N'Firozpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (483, 20, N'Gurdaspur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (484, 20, N'Hoshiarpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (485, 20, N'Jalandhar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (486, 20, N'Kapurthala')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (487, 20, N'Ludhiana')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (488, 20, N'Malerkotla')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (489, 20, N'Mansa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (490, 20, N'Moga')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (491, 20, N'Mohali')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (492, 20, N'Muktsar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (493, 20, N'Pathankot')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (494, 20, N'Patiala')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (495, 20, N'Rupnagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (496, 20, N'Sangrur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (497, 20, N'Shaheed Bhagat Singh Nagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (498, 20, N'Tarn Taran')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (499, 21, N'Ajmer')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (500, 21, N'Alwar')
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (501, 21, N'Banswara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (502, 21, N'Baran')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (503, 21, N'Barmer')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (504, 21, N'Bharatpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (505, 21, N'Bhilwara')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (506, 21, N'Bikaner')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (507, 21, N'Bundi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (508, 21, N'Chittorgarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (509, 21, N'Churu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (510, 21, N'Dausa')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (511, 21, N'Dholpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (512, 21, N'Dungarpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (513, 21, N'Hanumangarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (514, 21, N'Jaipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (515, 21, N'Jaisalmer')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (516, 21, N'Jalore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (517, 21, N'Jhalawar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (518, 21, N'Jhunjhunu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (519, 21, N'Jodhpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (520, 21, N'Karauli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (521, 21, N'Kota')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (522, 21, N'Nagaur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (523, 21, N'Pali')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (524, 21, N'Pratapgarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (525, 21, N'Rajsamand')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (526, 21, N'Sawai Madhopur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (527, 21, N'Sikar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (528, 21, N'Sirohi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (529, 21, N'Sri Ganganagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (530, 21, N'Tonk')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (531, 21, N'Udaipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (532, 22, N'East Sikkim')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (533, 22, N'North Sikkim')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (534, 22, N'Pakyong')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (535, 22, N'Soreng')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (536, 22, N'South Sikkim')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (537, 22, N'West Sikkim')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (538, 23, N'Ariyalur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (539, 23, N'Chengalpattu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (540, 23, N'Chennai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (541, 23, N'Coimbatore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (542, 23, N'Cuddalore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (543, 23, N'Dharmapuri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (544, 23, N'Dindigul')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (545, 23, N'Erode')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (546, 23, N'Kallakurichi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (547, 23, N'Kanchipuram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (548, 23, N'Kanyakumari')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (549, 23, N'Karur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (550, 23, N'Krishnagiri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (551, 23, N'Madurai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (552, 23, N'Mayiladuthurai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (553, 23, N'Nagapattinam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (554, 23, N'Namakkal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (555, 23, N'Nilgiris')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (556, 23, N'Perambalur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (557, 23, N'Pudukkottai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (558, 23, N'Ramanathapuram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (559, 23, N'Ranipet')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (560, 23, N'Salem')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (561, 23, N'Sivaganga')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (562, 23, N'Tenkasi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (563, 23, N'Thanjavur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (564, 23, N'Theni')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (565, 23, N'Thoothukudi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (566, 23, N'Tiruchirappalli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (567, 23, N'Tirunelveli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (568, 23, N'Tirupattur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (569, 23, N'Tiruppur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (570, 23, N'Tiruvallur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (571, 23, N'Tiruvannamalai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (572, 23, N'Tiruvarur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (573, 23, N'Vellore')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (574, 23, N'Viluppuram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (575, 23, N'Virudhunagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (576, 24, N'Adilabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (577, 24, N'Bhadradri Kothagudem')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (578, 24, N'Hyderabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (579, 24, N'Jagtial')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (580, 24, N'Jangaon')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (581, 24, N'Jayashankar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (582, 24, N'Jogulamba')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (583, 24, N'Kamareddy')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (584, 24, N'Karimnagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (585, 24, N'Khammam')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (586, 24, N'Komaram Bheem')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (587, 24, N'Mahabubabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (588, 24, N'Mahbubnagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (589, 24, N'Mancherial')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (590, 24, N'Medak')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (591, 24, N'Medchal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (592, 24, N'Mulugu')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (593, 24, N'Nagarkurnool')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (594, 24, N'Nalgonda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (595, 24, N'Narayanpet')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (596, 24, N'Nirmal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (597, 24, N'Nizamabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (598, 24, N'Peddapalli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (599, 24, N'Rajanna Sircilla')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (600, 24, N'Ranga Reddy')
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (601, 24, N'Sangareddy')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (602, 24, N'Siddipet')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (603, 24, N'Suryapet')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (604, 24, N'Vikarabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (605, 24, N'Wanaparthy')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (606, 24, N'Warangal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (607, 24, N'Hanamkonda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (608, 24, N'Yadadri Bhuvanagiri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (609, 25, N'Dhalai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (610, 25, N'Gomati')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (611, 25, N'Khowai')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (612, 25, N'North Tripura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (613, 25, N'Sepahijala')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (614, 25, N'South Tripura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (615, 25, N'Unakoti')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (616, 25, N'West Tripura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (617, 26, N'Agra')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (618, 26, N'Aligarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (619, 26, N'Ambedkar Nagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (620, 26, N'Amethi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (621, 26, N'Amroha')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (622, 26, N'Auraiya')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (623, 26, N'Ayodhya')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (624, 26, N'Azamgarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (625, 26, N'Baghpat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (626, 26, N'Bahraich')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (627, 26, N'Ballia')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (628, 26, N'Balrampur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (629, 26, N'Banda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (630, 26, N'Barabanki')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (631, 26, N'Bareilly')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (632, 26, N'Basti')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (633, 26, N'Bhadohi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (634, 26, N'Bijnor')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (635, 26, N'Budaun')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (636, 26, N'Bulandshahr')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (637, 26, N'Chandauli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (638, 26, N'Chitrakoot')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (639, 26, N'Deoria')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (640, 26, N'Etah')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (641, 26, N'Etawah')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (642, 26, N'Farrukhabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (643, 26, N'Fatehpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (644, 26, N'Firozabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (645, 26, N'Gautam Buddha Nagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (646, 26, N'Ghaziabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (647, 26, N'Ghazipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (648, 26, N'Gonda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (649, 26, N'Gorakhpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (650, 26, N'Hamirpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (651, 26, N'Hapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (652, 26, N'Hardoi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (653, 26, N'Hathras')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (654, 26, N'Jalaun')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (655, 26, N'Jaunpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (656, 26, N'Jhansi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (657, 26, N'Kannauj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (658, 26, N'Kanpur Dehat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (659, 26, N'Kanpur Nagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (660, 26, N'Kasganj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (661, 26, N'Kaushambi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (662, 26, N'Kheri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (663, 26, N'Kushinagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (664, 26, N'Lalitpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (665, 26, N'Lucknow')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (666, 26, N'Maharajganj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (667, 26, N'Mahoba')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (668, 26, N'Mainpuri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (669, 26, N'Mathura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (670, 26, N'Mau')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (671, 26, N'Meerut')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (672, 26, N'Mirzapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (673, 26, N'Moradabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (674, 26, N'Muzaffarnagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (675, 26, N'Pilibhit')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (676, 26, N'Pratapgarh')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (677, 26, N'Prayagraj')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (678, 26, N'Raebareli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (679, 26, N'Rampur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (680, 26, N'Saharanpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (681, 26, N'Sambhal')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (682, 26, N'Sant Kabir Nagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (683, 26, N'Shahjahanpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (684, 26, N'Shamli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (685, 26, N'Shravasti')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (686, 26, N'Siddharthnagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (687, 26, N'Sitapur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (688, 26, N'Sonbhadra')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (689, 26, N'Sultanpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (690, 26, N'Unnao')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (691, 26, N'Varanasi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (692, 27, N'Almora')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (693, 27, N'Bageshwar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (694, 27, N'Chamoli')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (695, 27, N'Champawat')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (696, 27, N'Dehradun')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (697, 27, N'Haridwar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (698, 27, N'Nainital')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (699, 27, N'Pauri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (700, 27, N'Pithoragarh')
GO
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (701, 27, N'Rudraprayag')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (702, 27, N'Tehri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (703, 27, N'Udham Singh Nagar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (704, 27, N'Uttarkashi')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (705, 28, N'Alipurduar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (706, 28, N'Bankura')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (707, 28, N'Birbhum')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (708, 28, N'Cooch Behar')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (709, 28, N'Dakshin Dinajpur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (710, 28, N'Darjeeling')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (711, 28, N'Hooghly')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (712, 28, N'Howrah')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (713, 28, N'Jalpaiguri')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (714, 28, N'Jhargram')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (715, 28, N'Kalimpong')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (716, 28, N'Kolkata')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (717, 28, N'Malda')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (718, 28, N'Murshidabad')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (719, 28, N'Nadia')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (720, 28, N'North 24 Parganas')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (721, 28, N'Paschim Bardhaman')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (722, 28, N'Paschim Medinipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (723, 28, N'Purba Bardhaman')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (724, 28, N'Purba Medinipur')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (725, 28, N'Purulia')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (726, 28, N'South 24 Parganas')
INSERT [dbo].[tblCity] ([CityId], [StateId], [CityName]) VALUES (727, 28, N'Uttar Dinajpur')
GO
SET IDENTITY_INSERT [dbo].[TblCompanyDetails] ON 

INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (1, N'EMP0001', N'Infosys', N'5000', 7845965895, N'https://www.infosys.com', N'infosys12@gmail.com', N'Established in 1981, Infosys is a NYSE listed global consulting and IT services company with more than 346k employees. From a capital of US$250, we have grown to become a US$ 17.94 billion (LTM FY23 revenues) company with a market capitalization of approximately US$ 75.39 billion.', 5, N'371', 416205, N'companyLogo.png', NULL, N'Just do it (Nike)', N'https://www.facebook.com/Infosys/', N'https://twitter.com/Infosys', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Sagar Koli', N'8551810587', N'sagarkoli219@gmail.com', NULL, CAST(N'2001-12-12' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (2, N'EMP0002', N'Bajaj Finance', N'2000', 9865147532, N'www.bajajfinserv.in', N'bajajfinance44@gmail.com', N'Bajaj Finance Limited is a deposit-taking Non-Banking Financial Company registered with the RBI. The company has a diversified lending portfolio across retail, SMEs and commercial customers', 5, N'380', 411203, N'companylogo1.jpg', NULL, N'Finger lickin'' good (KFC)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Ankita Nannaware', N'9022149446', N'ankitanannaware456@gmail.com', NULL, CAST(N'2000-06-06' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (3, N'EMP0003', N'Tata Group', N'3000', 8754213698, N'https://www.tata.com/', N'tata78@gmail.com', N'Tata Group is an Indian multinational conglomerate headquartered in Mumbai, India. It is one of the largest and most highly profitable companies of India.', 5, N'257', 411203, N'companylogo1.jpg', NULL, N'Eat fresh (Subway)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Aarushi Musale', N'7350243390', N'aarushimusale20@gmail.com', NULL, CAST(N'1999-09-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (4, N'EMP0004', N'HDFC Bank', N'6000', 9632514875, N'https://www.hdfcbank.com/', N'hdfcbank99@gmail.com', N'HDFC is India''s premier housing finance company and enjoys an impeccable track record in India as well as in international markets. Since its inception in 1977, the Corporation has maintained a consistent and healthy growth in its operations to remain the market leader in mortgages.', 6, N'371', 411202, N'companylogo1.jpg', NULL, N'Save money. Live better. (Walmart)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Prathmesh Nimbalkar', N'8652184592', N'nimbalkarprathmesh01@gmail.com', NULL, CAST(N'2015-06-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (5, N'EMP0005', N'Hindustan Unilever', N'8000', 9512364587, N'https://www.hul.co.in/', N'hul56@gmail.com', N'Hindustan Unilever Limited is an Indian consumer goods company headquartered in Mumbai. It is a subsidiary of the British company Unilever', 3, N'380', 410205, N'companylogo1.jpg', NULL, N'Have a break. Have a KitKat. (KitKat)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Dhanshri Dhamdhere', N'9325342207', N'shindedhanshri194@gmail.com', NULL, CAST(N'1999-01-02' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (6, N'EMP0006', N'Tata Motors Ltd', N'4000', 9463521754, N'https://www.tatamotors.com/', N'tml63@gmail.com', N'Tata Motors Limited is an Indian multinational automotive manufacturing company, headquartered in Mumbai, India, which is part of the Tata Group.', 5, N'164', 410203, N'companylogo1.jpg', NULL, N'Red Bull gives you wings (Red Bull)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Rajshri Mahajan', N'8698666276', N'rajshri.mahajan248@gmail.com', NULL, CAST(N'2016-08-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (7, N'EMP0007', N'Mahindra & Mahindra Ltd', N'3500', 9152634587, N'https://www.mahindra.com/', N'm&m321@gmail.com', N'Mahindra & Mahindra Limited is an Indian multinational automotive manufacturing corporation headquartered in Mumbai. It was established in 1945 as Mahindra & Mohammed and later renamed as Mahindra & Mahindra', 11, N'371', 412206, N'companylogo1.jpg', NULL, N' A diamond is forever (De Beers)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Rahul Bajaj', N'4562367956', N'rahul12@gmail.com', NULL, CAST(N'1999-09-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (8, N'EMP0008', N' Bajaj Auto Limited', N'2000', 9463215847, N'https://www.bajajauto.com/', N'bal965@gmail.com', N'Bajaj Auto Limited is an Indian multinational automotive manufacturing company based inPune.It manufactures Motorcycle, scooters and auto rickshaws. Bajaj Auto is a part of the Bajaj Group. It was founded by Jamnalal bajaj (1889–1942) in Rajasthan in the 1940s.', 1, N'257', 416206, N'companylogo1.jpg', NULL, N'Just do it (Nike)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Veda Krishnamurthi', N'8965478956', N'veda1@gmail.com', NULL, CAST(N'1997-10-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (9, N'EMP0009', N'UltraTech Cement Ltd', N'3200', 9654875142, N'https://www.ultratechcement.com/', N'ucl864@gmail.com', N'UltraTech Cement Limited is an Indian cement company based in Mumbai. It is the largest manufacturer of grey cement, ready-mix concrete and white cement in India with an installed capacity of 116.75 million tonnes per annum.', 3, N'578', 412042, N'companylogo1.jpg', NULL, N'Finger lickin'' good (KFC)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Ratan Tata', N'8574196328', N'ratantata12@gmail.com', NULL, CAST(N'2000-11-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (10, N'EMP0010', N'Tech Mahindra Ltd', N'1400', 9345962154, N'https://www.techmahindra.com/', N'techM66@gmail.com', N'Tech Mahindra is an Indian multinational information technology services and consulting company. Part of the Mahindra Group, the company is headquartered in Pune and has its registered office in Mumbai', 7, N'578', 413204, N'companylogo1.jpg', NULL, N'Eat fresh (Subway)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Mukesh Ambani', N'7845129638', N'mukesh12@gmail.com', NULL, CAST(N'2000-11-11' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (11, N'EMP0011', N'Larsen & Toubro Infotech Ltd', N'6000', 7856394578, N'https://www.larsentoubro.com/', N'l&t45@gmail.com', N'LTIMindtree Limited is an Indian multinational information technology services and consulting company based in Mumbai. A subsidiary of Larsen & Toubro, the company was incorporated in 1996 and employs more than 90,000 people.[3]', 7, N'380', 413205, N'companylogo1.jpg', NULL, N'Save money. Live better. (Walmart)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Sagar Otari', N'9977284613', N'sagarOtari@gmail.com', NULL, CAST(N'2005-08-02' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (12, N'EMP0012', N'Hexaware Technologies Ltd', N'3500', 9286459874, N'https://hexaware.com/', N'htl872@gmail.com', N'Hexaware is a global technology and business process services company. Our 30,000 Hexawarians wake up every day with a singular purpose; to create smiles through great people and technology. With this purpose gaining momentum, we are well on our way to realizing our vision of being the most loved digital transformation partner in the world. ', 7, N'380', 411210, N'companylogo1.jpg', NULL, N'Have a break. Have a KitKat. (KitKat)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Monali Choudhari', N'9845623187', N'monalichoudhari@gmail.com', NULL, CAST(N'2003-04-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (14, N'EMP0015', N'Mphasis Ltd', N'3000', 9975481326, N'https://www.mphasis.com/', N'mphasis@gmail.com', N'Mphasis Limited is an Indian multinational information technology services and consulting company based in Bengaluru', 5, N'371', 416205, N'companylogo1.jpg', NULL, N'Red Bull gives you wings (Red Bull)', N'https://www.facebook.com/bajajfinserv/', N'https://twitter.com/Bajaj_Finance', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', NULL, N'Rahul Mahajan', N'9463281765', N'rahulmahajan@gmail.com', NULL, CAST(N'2003-04-01' AS Date), 0)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (17, N'EMP0004', N'Acenture', N'600', 8965321546, N'qwertyuiokjnbvcxds', N'Vitthal@gmail.com', N'qwertyuiokjnbvcxds', 7, N'1', 416203, N'banner image.jpg', N'wertyuiokjnbvcxdsfghj', N'qwertyuiokjnbvcxs', N'qwertyopkjbvcx', N'wertyuiopjkbvcxz', N'qwertyuiokjnbvc', N'qwertyuiopkjb', N'wertyuikjnb ', N'Saurabh', N'Pratiksha', N'7666269718', N'ashu@gmail.com', N'NewsPaper', CAST(N'2023-04-27' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (18, N'EMP0004', N'Infosys', N'600', 8965321546, N'qwertyuiokjnbvcxds', N'Vitthal@gmail.com', N'qwertyuiolmnbvcxzasdfghjk', 7, N'5', 416203, N'banner image.jpg', N'wertyuiokjnbvcxdsfghj', N'qwertyuiokjnbvcxs', N'qwertyopkjbvcx', N'sdfghjmnbxdfgh', N'qwertyuiokjnbvc', N'qwertyuiopkjb', N'wertyuikjnb ', N'Aashish', N'Pratiksha', N'7666269718', N'Mitali@gmail.com', N'NewsPaper', CAST(N'2023-04-27' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (21, N'EMP0004', N'Lotus', N'2000', 8965321546, N'qwertyuiokjnbvcxds', N'Vitthal@gmail.com', N'qwertyuio', 5, N'355', 416203, N'banner image.jpg', N'wertyuiokjnbvcxdsfghj', N'wertyuiokjnbv', N'dfghjknm cxd', N'wertyuiopjkbvcxz', N'qwertyuiokjnbvc', N'qwertyuioknbvcxs', N'wertyuknb', N'Mitali', N'Mitali', N'7666269718', N'ashu@gmail.com', N'Television', CAST(N'2023-04-27' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (23, N'EMP0004', N'Tech Mahindra', N'100', 7083176060, N'qwertyuiop', N'qwertyuiop', N'qwertyuioplkjhgfdsa', 8, N'371', 411043, N'_DSC0483.jpg', N'qwertyuiop', N'asdfghjkl', N'qwertyuiop', N'qwertyuiop', N'sdfghjkl', N'qwertyuiop', N'qwertyuiop', N'Ratan Tata', N'Ashish', N'9636258963', N'ashu@gmail.com', N'Television', CAST(N'2023-05-03' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (24, N'EMP0001', N'Awasthi Enterprises', N'125', 885858585, N'www.Awasthigroup.com', N'awasthigroup2rediffmail.com', N'Designing & Engineering', 8, N'46', 422151, N'Admin.jpg', N'Design to build future', N'asdfghjkl', N'qwertyuiop', N'qwertyuiop', N'sdfghjkl', N'qwertyuiop', N'qwertyuiop', N'anand Awasthi', N'Sandesh', N'985858585', N'sandeshk@gmail.com', N'Email', CAST(N'2023-05-05' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (25, N'EMP0001', N'Tech Mahindra', N'100', 9958585859, N'www.Awasthigroup.com', N'awasthigroup2rediffmail.com', N'Designing & Engineering', 6, N'97', 411043, N'Admin.jpg', N'qwertyuiop', N'asdfghjkl', N'qwertyuiop', N'qwertyuiop', N'sdfghjkl', N'qwertyuiop', N'qwertyuiop', N'Ratan Tata', N'Ashish', N'9636258963', N'ashu@gmail.com', N'Television', CAST(N'2023-05-05' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (26, N'EMP0004', N'Persistant', N'500', 7894561236, N'https://www.persistent.com/', N'Persistant12@gmail.com', N'Ab cd gf hj ', 5, N'371', 411043, N'Persistent_Systems.png', N'qwertyuiop', N' A trusted Digital Engineering and Enterprise Mode', N'https://www.facebook.com/Infosys/', N'https://twitter.com/Infosys', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', N'Ratan Tata', N'Sandesh', N'9636258963', N'sandeshk@gmail.com', N'Television', CAST(N'2023-05-12' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (27, N'EMP0004', N'Awasthi Enterprises', N'100', 8624077183, N'www.Awasthigroup.com', N'awasthigroup2rediffmail.com', N'AAAAAAAAAAAAAAAA', 3, N'151', 411043, NULL, NULL, N' A trusted Digital Engineering and Enterprise Mode', N'https://www.facebook.com/Infosys/', N'https://twitter.com/Infosys', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', N'Ratan Tata', N'Sandesh', N'9636258963', N'sandeshk@gmail.com', N'Television', CAST(N'2023-05-23' AS Date), NULL)
INSERT [dbo].[TblCompanyDetails] ([CompanyId], [EmployerCode], [CompanyName], [NoOfEmployees], [ContactNo], [CompanyWebsite], [CompanyEmail], [AboutCompany], [IndustryId], [CityId], [Pincode], [CompanyLogo], [Portfolio], [Slogan], [Facebook], [Twitter], [LinkedIn], [Instagram], [Google+], [OwnerName], [HRName], [HRNumber], [HREmail], [Source], [RegistrationDate], [isDelete]) VALUES (28, N'EMP0004', N'Awasthi Enterprises', N'125', 8624077183, N'https://www.persistent.com/', N'qwertyuiop', N'AAAAAAA', 8, N'17', 411043, N'Updated JobPortal.pdf', N'Updated JobPortal.pdf', N' A trusted Digital Engineering and Enterprise Mode', N'https://www.facebook.com/Infosys/', N'https://twitter.com/Infosys', N'https://www.linkedin.com/company/infosys/', N'https://www.instagram.com/infosys/', N'https://www.google.com/finance/quote/BAJFINANCE:NSE', N'Ratan Tata', N'Sandesh', N'9636258963', N'sandeshk@gmail.com', N'Television', CAST(N'2023-05-23' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[TblCompanyDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[TblCompanyFeedback] ON 

INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (1, 1, N'EMP0001', N'JSC0001', 4, N'qwertyuiop', 0, 0, 9, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (2, 2, N'EMP0002', N'JSC0002', 2, N'Really healthy working environment', NULL, 1, 10, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (3, 3, N'EMP0003', N'JSC0003', 1, N'People here are very encouraging and hard working. It motivates you to do better.', NULL, 1, 9, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (4, 4, N'EMP0004', N'JSC0004', 2, N'Work culture, time off and employee well being are good', NULL, 1, 9, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (5, 5, N'EMP0005', N'JSC0005', 3, N'Great company to work. Good culture.', NULL, 0, 4, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (6, 6, N'EMP0006', N'JSC0006', 2, N'Good management and company support to their employees', NULL, 1, 4, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (7, 7, N'EMP0007', N'JSC0007', 2, N'Good management ', NULL, 1, 4, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (8, 8, N'EMP0008', N'JSC0008', 2, N'Good work environment', NULL, 0, 4, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (9, 9, N'EMP0009', N'JSC0009', 1, N'Good Experience', NULL, 0, 4, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (10, 10, N'EMP0010', N'JSC0010', 2, N'Thanks for opportunity good experience', NULL, 0, 4, 0)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (11, 11, N'EMP0011', N'JSC00100', 2, NULL, NULL, 1, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (12, 12, N'EMP0012', NULL, 4, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (13, 14, N'EMP0015', NULL, 5, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (14, 17, N'EMP0004', NULL, 3, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (15, 18, N'EMP0004', NULL, 1, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (16, 21, N'EMP0004', NULL, 4, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (17, 23, N'EMP0004', NULL, 2, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (18, 24, N'EMP0001', NULL, 5, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (19, 25, N'EMP0001', NULL, 3, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (20, 26, N'EMP0004', NULL, 4, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (21, 27, N'EMP0004', NULL, 2, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (22, 28, N'EMP0004', NULL, 5, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (24, 3, N'EMP0003', N'JSC0001', 5, N'BEST!!', 1, 0, NULL, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (25, 4, N'EMP0004', N'JSC0001', 5, N'qwertyuiop', 0, 1, NULL, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (26, 1, N'EMP0001', N'JSC0070', 4, N'qwertyuiop', NULL, 0, NULL, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (27, 5, N'EMP0005', N'JSC0070', 5, N'qwertyuiop', NULL, 0, NULL, NULL)
INSERT [dbo].[TblCompanyFeedback] ([ReviewId], [CompanyId], [EmployerCode], [Seekercode], [Rating], [Review], [DoyouCurrentlyworkhere], [Follow], [StatusId], [isDelete]) VALUES (28, 6, N'EMP0006', N'JSC0070', 4, N'qwertyuiop', NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblCompanyFeedback] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCountry] ON 

INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (2, N'USA')
INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (3, N'UK')
INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (4, N'Australia')
SET IDENTITY_INSERT [dbo].[tblCountry] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDegree] ON 

INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (1, 1, N'CBSE')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (2, 1, N'ICSE')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (3, 1, N'Diploma')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (4, 1, N'National Open School')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (5, 1, N'IB(International Baccalauraeate)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (6, 1, N'State Board')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (7, 1, N'Andra Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (8, 1, N'Arunachal Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (9, 1, N'Assam')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (10, 1, N'Bihar')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (11, 1, N'Chhatisgarh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (12, 1, N'Goa')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (13, 1, N'Gujrat')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (14, 1, N'Haryana')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (15, 1, N'Himachal Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (16, 1, N'Jharkhand')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (17, 1, N'Karnataka')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (18, 1, N'kerala')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (19, 1, N'Madhya Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (20, 1, N'Maharashtra')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (21, 1, N'Manipur')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (22, 1, N'Meghalaya')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (23, 1, N'Mizoram')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (24, 1, N'Nagaland')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (25, 1, N'Odisa')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (26, 1, N'Punjab')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (27, 1, N'Rajasthan')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (28, 1, N'Tamil Nadu')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (29, 1, N'Telangana')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (30, 1, N'Tripura')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (31, 1, N'Uttar Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (32, 1, N'Uttarakhand')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (33, 1, N'West Bengal')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (34, 1, N'Other')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (35, 2, N'CBSE')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (36, 2, N'CISCE(ICSE/ISC)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (37, 2, N'Diploma')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (38, 2, N'National Open School')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (39, 2, N'IB(International Baccalauraeate)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (40, 2, N'State Board')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (41, 2, N'Andra Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (42, 2, N'Arunachal Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (43, 2, N'Assam')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (44, 2, N'Bihar')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (45, 2, N'Chhatisgarh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (46, 2, N'Goa')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (47, 2, N'Gujrat')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (48, 2, N'Haryana')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (49, 2, N'Himachal Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (50, 2, N'Jharkhand')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (51, 2, N'Karnataka')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (52, 2, N'kerala')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (53, 2, N'Madhya Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (54, 2, N'Maharashtra')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (55, 2, N'Manipur')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (56, 2, N'Meghalaya')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (57, 2, N'Mizoram')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (58, 2, N'Nagaland')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (59, 2, N'Odisa')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (60, 2, N'Punjab')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (61, 2, N'Rajasthan')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (62, 2, N'Tamil Nadu')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (63, 2, N'Telangana')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (64, 2, N'Tripura')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (65, 2, N'Uttar Pradesh')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (66, 2, N'Uttarakhand')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (67, 2, N'West Bengal')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (68, 2, N'Other')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (69, 3, N'BBA- Bachelor of Business Administration')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (70, 3, N'BMS- Bachelor of Management Science')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (71, 3, N'BFA- Bachelor of Fine Arts')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (72, 3, N'BEM- Bachelor of Event Management')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (73, 3, N'Integrated Law Course- BA + LL.B')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (74, 3, N'BJMC- Bachelor of Journalism and Mass Communication')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (75, 3, N'BFD- Bachelor of Fashion Designing')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (76, 3, N'BSW- Bachelor of Social Work')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (77, 3, N'BBS- Bachelor of Business Studies')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (78, 3, N'BTTM- Bachelor of Travel and Tourism Management')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (79, 3, N'Aviation Courses')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (80, 3, N'B.S.C')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (81, 3, N'Bachelor of Design (B. Design)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (82, 3, N'Bachelor of Performing Arts')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (83, 3, N'BA')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (84, 3, N'B.El.Ed')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (85, 3, N'B.P.Ed')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (86, 3, N'BHMCT')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (87, 3, N'B.Des.')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (88, 3, N'B.U.M.S')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (89, 3, N'BE/B.Tech- Bachelor of Technology')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (90, 3, N'B.Arch- Bachelor of Architecture')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (91, 3, N'BCA- Bachelor of Computer Applications')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (92, 3, N'B.Com- Bachelor of Commerce')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (93, 3, N'CA- Chartered Accountancy')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (94, 3, N'CS- Company Secretary')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (95, 3, N'Bachelor of Design ')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (96, 3, N'Bachelor in Foreign Language')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (97, 3, N'Diploma Courses')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (98, 3, N'Other ')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (99, 4, N'Master of Business Administration (MBA)')
GO
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (100, 4, N'Master of Arts (MA) or Master of Fine Arts (MFA)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (101, 4, N'PG Diploma/Masters in Journalism and Communication')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (102, 4, N'LLB')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (103, 4, N'Foreign Language Courses')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (104, 4, N'PG Diploma')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (105, 4, N'Master of Science (MS/MSc)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (106, 4, N'Master of Technology (MTech)/Master of Engineering (MEng)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (107, 4, N'Master of Computer Applications (MCA)')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (108, 4, N'Masters in Computer Science')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (109, 4, N'M.Com')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (110, 4, N'Other')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (111, 5, N'Ph.D/Doctorate')
INSERT [dbo].[TblDegree] ([DegreeID], [QualificationId], [Degree]) VALUES (112, 5, N'MPHIL')
SET IDENTITY_INSERT [dbo].[TblDegree] OFF
GO
SET IDENTITY_INSERT [dbo].[TblEducationDetails] ON 

INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (1, N'JSC0001', 1, 20, 2012, 81, 5, 1, 0, 0, 5, 1, 1, NULL, 0, 0, NULL, 3, N'0', 177, N'MSBTE', 2021, 90, N'Full-Time', 5, N'1', 1, NULL, 0, 0, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (2, N'JSC0002', 1, 1, 2015, 80, 2, 54, 2017, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'91', NULL, N'Shivaji University,Kolhapur', 2020, 80, NULL, 4, N'107', NULL, N'3', 2023, 87, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (3, N'JSC0003', 1, 20, 2016, 90, 2, 54, 2018, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'80', 94, N'Pune', 2022, 60, N'Full-Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (4, N'JSC0004', 1, 1, 2013, 96, NULL, NULL, NULL, NULL, 3, 97, 300, N'Mumbai University', 93, 2016, NULL, 3, N'89', 177, N'Savitribai Phule University,Pune', 2019, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (5, N'JSC0005', 1, 20, 2014, 45, 2, 15, 2016, 52, NULL, NULL, NULL, N'Kolhapur University', NULL, NULL, NULL, 3, N'107', NULL, N'Savitribai Phule University,Pune', 2021, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (6, N'JSC0006', 1, 20, 2015, 87, 2, 15, 2017, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'89', 177, N'savitribai Phule University,Pune', 2022, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (7, N'JSC0007', 1, 19, 2013, 60, 2, 53, 2015, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'91', 236, N'Devi Ahilya vishwa vidyalay,Indore', 2018, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (8, N'JSC0008', 1, 20, 2016, 86, NULL, NULL, NULL, NULL, 3, 97, 284, N'Goverment Polytechnic Pune', 60, 2019, NULL, 3, N'89', 176, N'Savitribai Phule University,Pune', 2022, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (9, N'JSC0009', 1, 20, 2015, 76, 2, 54, 2017, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'89', 177, N'Savitribai Phule University,Pune', 2022, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (10, N'JSC0010', 1, 20, 2008, 60, 2, 54, 2010, 50, 3, 97, 300, N'MSBTE', 75, 2013, NULL, 3, N'89', 177, N'Savitribai Phule University,Pune', 2016, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (11, N'JSC0011', 1, 20, 2014, 84, NULL, NULL, NULL, NULL, 3, 97, 284, N'MSBTE', 67, 2017, NULL, 3, N'89', 176, N'Savitribai Phule University,Pune', 2020, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (12, N'JSC0012', 1, 3, 2013, 81, 2, 54, 2015, 60, 3, 97, 300, N'MSBTE', 2017, 60, N'Full-Time', 3, N'89', 177, N'Shivaji University', 2020, 60, N'Full-Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (13, N'JSC0057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (14, N'JSC0058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (15, N'JSC0059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (16, N'JSC0060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (17, N'JSC0061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (18, N'JSC0062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (19, N'JSC0063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (20, N'JSC0064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (21, N'JSC0065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (22, N'JSC0066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (23, N'JSC0067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (24, N'JSC0068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (25, N'JSC0069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (26, N'JSC0070', 1, 6, 2015, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (27, N'JSC0071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 97, 284, N'MSBTE', 2016, 70, N'Full-Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (28, N'JSC0072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (29, N'JSC0073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (33, N'JSC0080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (34, N'JSC80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'82', 106, N'pune', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (35, N'JSC0094', 5, 1, 0, 0, 2, 54, 2018, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'89', 212, N'MSBTE', 2022, 75, N'Full-Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (36, N'JSC0096', 1, 20, 2015, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (37, N'JSC81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 97, 280, N'Shivaji University', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (38, N'JSC0098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (39, N'JSC00100', 1, 20, 2015, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'89', 177, N'Pune', 2019, 80, N'Full-Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEducationDetails] ([EducationId], [SeekerCode], [SSC], [SSCBoard], [SSCPassingYear], [SSCMarks], [HSC], [HSCBoard], [HSCPassingYear], [HSCMarks], [UG], [UGDegree], [UGSpecialization], [UGUniversity], [UGPassingYear], [UGMarks], [UGCourseType], [Graduation], [GraduationDegree], [GraduationSpecialization], [GraduationUniversity], [GraduationPassingYear], [GraduationMarks], [GCourseType], [PG], [PGDegree], [PGSpecialization], [PGUniversity], [PGPassingYear], [PGMarks], [PGCourseType]) VALUES (40, N'JSC82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'80', 94, N'pune', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblEducationDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[TblEmployementDetails] ON 

INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (1, N'JSC0001', 0, N'Full – Time ', N'Infosys', N'.Net Developer', N'Jan 2022 (0 Years 0 Month)', N'6000000', NULL, N'1.2 years of experience .Net Developer and C#,HTML,CSS,Good knowledge of SQL.', N'15 Days or less')
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (2, N'JSC0002', 0, N'Full – Time ', N'Hybrid Tech', N'Java Developer', N'Jan 2021 (2 Years1 Month)', N'500000', N'230,231', N'2.2 years of experience .Java Developer and C#,HTML,CSS,Good knowledge of SQL.', N'Serving Notice Period')
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (3, N'JSC0003', 0, N'Internship', N'InTouch Software', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (4, N'JSC0004', 0, N'Internship', N'Macro IT Solutions', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (5, N'JSC0005', 0, N'Internship', N'World Wide Apps', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (6, N'JSC0006', 1, N'Internship', N'Big Giant', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (7, N'JSC0007', 0, N'Internship', N'Basis Technology', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (8, N'JSC0008', 0, N'Internship', N'Vantage Point App Service', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (9, N'JSC0009', 0, N'Internship', N'Centaur Engineering', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (10, N'JSC0010', 0, N'Internship', N'Veganic Systems', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (11, N'JSC0011', 0, N'Full – Time', N'Autonic Engineering', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (12, N'JSC0012', 1, N'Full – Time', N'Advantek Waste', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (13, N'JSC0013', 0, N'Full – Time', N'Aerospace Unlimited', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (14, N'JSC0014', 0, N'Full – Time', N'Airbus Group', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (15, N'JSC0015', 0, N'Full – Time', N'Allied Technologies', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (16, N'JSC0016', 0, N'Full – Time', N'Comet Builders', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (17, N'JSC0017', 0, N'Full – Time', N'Cozmik Technology', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (18, N'JSC0018', 0, N'Full – Time', N'Capstone Technology', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (19, N'JSC0019', 0, N'Full – Time', N'Sage Solutions', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (20, N'JSC0020', 0, N'Full – Time', N'Oval Solutions', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (21, N'JSC0021', 0, N'Full – Time', N'Spreader Technology', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (22, N'JSC0057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (23, N'JSC0058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (24, N'JSC0059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (25, N'JSC0060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (26, N'JSC0061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (27, N'JSC0062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (28, N'JSC0063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (29, N'JSC0064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (30, N'JSC0065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (31, N'JSC0066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (32, N'JSC0067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (33, N'JSC0068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (34, N'JSC0069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (35, N'JSC0070', 0, N'Full – Time ', N'Awasthi Enterprises', N'junior Engineer', N'Jan 2023 (3 Years 3 Month)', N'450000', NULL, N'Junior Engineer Developer ', N'2 Month')
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (36, N'JSC0071', 0, N'Full – Time ', N'Rahitech Solution', N'.Net Developer', N'  (0 Years 0 Month)', N'500000', N'59,231', N'2.2 years of experience .Net Developer and C#,HTML,CSS,Good knowledge of SQL.', N'15 Days or less')
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (37, N'JSC0072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (38, N'JSC0073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (40, N'JSC0080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (41, N'JSC0094', 1, N'Full – Time ', N'Awasthi Enterprises', N'junior Engineer', N'Jan 2018 (2 Years 2 Month)', N'450000', NULL, N'Junior Engineer Developer ', N'15 Days or less')
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (42, N'JSC0096', 0, N'Full – Time ', N'Infosys', N'.Net Developer', N'Feb 2021 (2 Years 1 Month)', N'400000', NULL, N'.Net Developer', N'15 Days or less')
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (43, N'JSC0098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblEmployementDetails] ([EmployementId], [SeekerCode], [CurrentEmployement], [EmployementType], [CompanyName], [Designation], [JoiningDate], [CurrentSalary], [SkillID], [JobProfile], [NoticePeriod]) VALUES (44, N'JSC00100', 0, N'Full – Time ', N'Awasthi Enterprises', N'junior Engineer', N'Feb 2021 (2 Years 1 Month)', N'6000000', NULL, N'Junior Engineer Developer ', N'15 Days or less')
SET IDENTITY_INSERT [dbo].[TblEmployementDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[TblEmployerReg] ON 

INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (1, N'EMP0001', N'Sachin Jayantilal Mithiya', N'Sachinmithiya99@gmail.com', 7776994281, 7896545625, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (2, N'EMP0002', N'Rita Sanjay Patil', N'ritapatil823@gmail.com', 8319503862, 8965478569, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (3, N'EMP0003', N'Kartik Sunil Tambat', N'premtambat007@gmail.com', 7558628788, 7531596874, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (4, N'EMP0004', N'Aditya Dattatray Choure', N'adityachoure31@gmail.com', 7030453675, 8956231478, N'123456', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (5, N'EMP0005', N'Sanket Sanjay Avsare', N'sanket.avasare@gmail.com', 8983458640, 9865321478, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (6, N'EMP0006', N'Dhanshri Dhamdhere', N'shindedhanshri194@gmail.com', 8787996858, 8956745698, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (7, N'EMP0007', N'Rajshri Mahajan', N'rajshri.mahajan248@gmail.com', 8698666276, 7875489652, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (8, N'EMP0008', N'Rahul Bajaj', N'rahul12@gmail.com', 4562367956, 9518472635, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (9, N'EMP0009', N'Veda Krishnamurthi', N'veda1@gmail.com', 8965478956, 8596745896, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (10, N'EMP0010', N'Ratan Tata', N'ratantata12@gmail.com', 8574196328, 9638527412, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (11, N'EMP0011', N'Anil Ambani', N'anil12@gmail.com', 7418529632, 789123456, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (12, N'EMP0012', N'Mukesh Ambani', N'mukesh12@gmail.com', 7845129638, 7845698563, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (13, N'EMP0013', N'Sagar Otari', N'sagarOtari@gmail.com', 9977284613, 7896548798, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (14, N'EMP0014', N'Monali Choudhari', N'monalichoudhari@gmail.com', 9845623187, 9456987564, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (15, N'EMP0015', N'Rahul Mahajan', N'rahulmahajan@gmail.com', 9463281765, 7894561236, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (16, N'EMP0016', N'Abhijit Shah', N'abhijitshah@gmail.com', 9764824614, 9876321456, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (17, N'EMP0017', N'Pranav Zope', N'pranavzope@gmail.com', 9754813486, 7845123696, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (18, N'EMP0018', N'Sagar Patil', N'sagar12@gmail.com', 7456987569, 8954789658, N'AF12345@', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (19, N'EMP0019', N'Mitali', N'Mitali', 7895469874, 7895469874, N'ms1509', 0)
INSERT [dbo].[TblEmployerReg] ([EmployeerId], [EmployerCode], [EmployerName], [EmailId], [ContactNo], [AlternateContactNo], [Password], [isDelete]) VALUES (20, N'EMP0020', N'Yash Gaikawad', N'yashprivate70@gmail.com', 8745698745, 8745698745, N'yash12@', 0)
SET IDENTITY_INSERT [dbo].[TblEmployerReg] OFF
GO
SET IDENTITY_INSERT [dbo].[TblIndustry] ON 

INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (1, N'Accounts/Banking/Financial')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (2, N'Telecalling/Communication Services')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (3, N'Health Care')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (4, N'Industrials')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (5, N'.Information Technology')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (6, N'Journalism and Advertisement')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (7, N'Customer Services')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (8, N'Construction')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (9, N'Agriculture')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (10, N'Food Industry')
INSERT [dbo].[TblIndustry] ([IndustryId], [IndustryName]) VALUES (11, N'Education')
SET IDENTITY_INSERT [dbo].[TblIndustry] OFF
GO
SET IDENTITY_INSERT [dbo].[TblInterview] ON 

INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (1, N'1', N'1,2,3,4,5', NULL, NULL, N'Nalstop,Pune', CAST(N'2023-03-08' AS Date), N'Null', NULL, 5)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (2, N'2', N'1,2,3,4', NULL, NULL, N'Nalstop,Pune', CAST(N'2023-03-08' AS Date), N'Null', NULL, 5)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (3, N'3', N'1,2,3', NULL, NULL, N'Indore', CAST(N'2023-03-08' AS Date), N'Null', NULL, 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (4, N'4', N'6,7,8,9,10', NULL, NULL, N'Mumbai', CAST(N'2023-03-08' AS Date), N'Null', NULL, 5)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (5, N'5', N'6,7,8,9', NULL, NULL, N'Pune', CAST(N'2023-03-08' AS Date), N'Null', NULL, 5)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (6, N'6', N'6,7,8', NULL, NULL, N'Hydrabad', CAST(N'2023-03-08' AS Date), N'Null', NULL, 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (7, N'Technical Interview Round', N'10,11', CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'Pune', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (8, N'Technical Interview Round', NULL, CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'Pune', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (9, N'Technical Interview Round', N'10,11', CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'Pune', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (10, N'Technical Interview Round', N'10,11', CAST(N'01:00:00' AS Time), CAST(N'07:00:00' AS Time), N'Pune', CAST(N'2023-05-24' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (11, N'HR Round', N'10,11', CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'Pune', CAST(N'2023-05-30' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (12, N'Technical Interview Round', N'10,11', CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'Pune', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (13, N'Technical Interview Round', N'10,11', CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'Pune', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (14, N'Coding Round', N'10,11', CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'Pune', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (15, N'HR Round', N'4,6,7,8,9,10', CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), N'Pune,Maharhastra', CAST(N'2023-05-08' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (16, N'HR Round', N'4,6,7,8,9,10', CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), N'Pune,Maharhastra', CAST(N'2023-05-08' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (17, N'HR Round', N'4,6,7,8,9,10', CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), N'Pune,Maharhastra', CAST(N'2023-05-08' AS Date), N'Gring your AdharCard,All Educational Documents', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (18, N'Technical Interview Round', N'4,5,6,7,8,9', CAST(N'02:00:00' AS Time), CAST(N'05:00:00' AS Time), N'Pune', CAST(N'2023-05-27' AS Date), N'Gring your AdharCard,All Educational Documents', N'Online Interview', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (19, N'Technical Interview Round', N'26', CAST(N'01:00:00' AS Time), CAST(N'05:00:00' AS Time), N'lalalala', CAST(N'2023-06-01' AS Date), N'Gring your AdharCard', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (20, N'Technical Interview Round', NULL, CAST(N'01:00:00' AS Time), CAST(N'05:00:00' AS Time), N'lalalala', CAST(N'2023-06-01' AS Date), N'Gring your AdharCard', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (21, N'Technical Interview Round', N'26', CAST(N'01:00:00' AS Time), CAST(N'06:00:00' AS Time), N'lalalalala', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard', N'Walk In', 6)
INSERT [dbo].[TblInterview] ([InterviewId], [RoundName], [AppliedJobId], [StartTime], [EndTime], [InterviewAddress], [Date], [Comment], [InterviewType], [StatusId]) VALUES (22, N'Technical Interview Round', N'26', CAST(N'01:00:00' AS Time), CAST(N'05:00:00' AS Time), N'lalalalal', CAST(N'2023-05-31' AS Date), N'Gring your AdharCard', N'Walk In', 6)
SET IDENTITY_INSERT [dbo].[TblInterview] OFF
GO
SET IDENTITY_INSERT [dbo].[TblJobAlert] ON 

INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (3, N'JSC0001', 5, N'  (3 Years 2 Month)', N'371,380', 47, NULL, 0)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (4, N'JSC0002', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (5, N'JSC0003', 5, N'  (3 Years 2 Month)', N'371,380', 46, NULL, 0)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (6, N'JSC0004', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (7, N'JSC0005', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (8, N'JSC0006', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (9, N'JSC0007', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (10, N'JSC0008', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (11, N'JSC0009', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (12, N'JSC0010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (13, N'JSC0011', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (14, N'JSC0012', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (15, N'JSC0057', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (16, N'JSC0058', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (17, N'JSC0059', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (18, N'JSC0060', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (19, N'JSC0061', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (20, N'JSC0062', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (21, N'JSC0063', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (22, N'JSC0064', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (23, N'JSC0065', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (24, N'JSC0066', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (25, N'JSC0067', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (26, N'JSC0068', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (27, N'JSC0069', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (28, N'JSC0070', 5, N'  (3 Years 3 Month)', N'3', 45, NULL, 0)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (29, N'JSC0071', 5, N'  (2 Years 2 Month)', N'371,380', 47, NULL, 0)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (30, N'JSC0072', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (31, N'JSC0073', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (32, N'JSC0080', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (33, N'JSC0094', 5, N'  (2 Years 1 Month)', N'371', 47, NULL, 0)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (34, N'JSC0096', 5, N'  (2 Years 1 Month)', N'371,380', 47, NULL, 0)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (35, N'JSC0098', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblJobAlert] ([JobAlertId], [SeekerCode], [CurrentIndustry], [TotalExperience], [CurrentLocation], [Category], [AlertEmail], [AlertPhone]) VALUES (36, N'JSC00100', 5, N'  (3 Years 2 Month)', N'371,380', 47, NULL, 0)
SET IDENTITY_INSERT [dbo].[TblJobAlert] OFF
GO
SET IDENTITY_INSERT [dbo].[TblJobBenifits] ON 

INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (1, N'Medical insurance')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (2, N'Life insurance')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (3, N'Retirement plans')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (4, N'Paid sick leave')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (5, N'Flexible work hours')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (6, N'Remote work options')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (7, N'Wellness programmes')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (8, N'Student loan repayment')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (9, N'Tuition assistance')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (10, N'Employee training programmes')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (11, N'Paid holidays')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (12, N'Paid volunteer time off')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (13, N'Paid parental leave')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (14, N'Sports packages')
INSERT [dbo].[TblJobBenifits] ([JobBenefitId], [JobBenefit]) VALUES (15, N'discount cards')
SET IDENTITY_INSERT [dbo].[TblJobBenifits] OFF
GO
SET IDENTITY_INSERT [dbo].[TblJobCategory] ON 

INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (1, 1, N'Banking / Insurance / Financial Services')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (2, 1, N'ITES / BPO / KPO / Customer Service / Operations')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (3, 1, N'Sales / BD Operations')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (4, 1, N'Accounts / Finance / Tax / CS / Audit')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (5, 2, N'Telcom / ISP Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (6, 3, N'Beauty / Fitness / Spa Services')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (7, 3, N'Medical Devices / Equipments')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (8, 3, N'Pharma / Biotech / Clinical Research')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (9, 3, N'Pharma / Biotech / Healthcare / Medical / R&D')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (10, 3, N'Medical / Healthcare / Hospital')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (11, 3, N'Wellness / Fitness / Sports')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (12, 4, N'Auto / Auto Ancillary')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (13, 4, N'Aviation / Aerospace Firms')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (14, 4, N'Ceramics / Sanitary Ware')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (15, 4, N'Chemicals / Petro Chemical / Plastic / Rubber')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (16, 4, N'Electricals / Switchgears')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (17, 4, N'Engineering Design / R&D')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (18, 4, N'Export / Import / Merchandising')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (19, 4, N'Glass Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (20, 4, N'Heat Ventilation Air Conditioning')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (21, 4, N'HR / Administration / IR')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (22, 4, N'Industrial Products / Heavy Machinery')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (23, 4, N'Leather Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (24, 4, N'Mining Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (25, 4, N'Office Equipment / Automation')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (26, 4, N'Oil and Gas / Power / Infrastructure / Energy')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (27, 4, N'Packaging Development')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (28, 4, N'Paper Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (29, 4, N'Printing / Packaging')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (30, 4, N'Production / Maintenance / Quality')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (31, 4, N'Purchase / Logistics / Supply Chain')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (32, 4, N'Retail Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (33, 4, N'Secretary / Front Office / Data Entry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (34, 4, N'Semiconductors / Electronics')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (35, 4, N'Shipping / Crew Member')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (36, 4, N'Steel Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (37, 4, N'Sugar Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (38, 4, N'Textiles / Garments / Accessories')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (39, 4, N'Tyres Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (40, 4, N'Water Treatment / Waste Management')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (41, 5, N'Analytics & Business Intelligence')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (42, 5, N'Corporate Planning / Consulting')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (43, 5, N'Internet / Ecommerce')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (44, 5, N'IT Hardware / Telecom / Technical Staff / Support')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (45, 5, N'IT Hardware Networking')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (46, 5, N'IT Software Services')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (47, 5, N'IT Software – Application Programming / Maintenance')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (48, 5, N'IT Software – Client Server')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (49, 5, N'IT Software – DBA / Datawarehousing')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (50, 5, N'IT Software – E-Commerce / Internet Technologies')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (51, 5, N'IT Software – Embedded / EDA / VLSI / ASIC / Chip Des.')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (52, 5, N'IT Software – ERP / CRM')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (53, 5, N'IT Software – Mainframe')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (54, 5, N'IT Software – Middleware')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (55, 5, N'IT Software – Mobile')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (56, 5, N'IT Software – Network Administration / Security')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (57, 5, N'IT Software – Other')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (58, 5, N'IT Software – QA & Testing')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (59, 5, N'IT Software – System Programming')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (60, 5, N'IT Software – Systems / EDP / MIS')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (61, 5, N'IT Software – Telecom Software')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (62, 5, N'KPO / Research / Analytics')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (63, 5, N'Web / Graphic Design / Visualiser')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (64, 6, N'Advertising / PR / MR / Events')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (65, 6, N'Animation Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (66, 6, N'Broadcasting Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (67, 6, N'Content / Journalism')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (68, 6, N'Marketing / Advertising / MR / PR')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (69, 6, N'Media / Dotcom / Entertainment')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (70, 6, N'Publishing Industry')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (71, 6, N'TV / Films / Production')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (72, 7, N'Agent / Company Representative')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (73, 7, N'Consumer Durables')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (74, 7, N'Courier / Transportation / Freight')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (75, 7, N'CSR & Sustainability')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (76, 7, N'Facility Management')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (77, 7, N'Fashion / Garments / Merchandising')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (78, 7, N'Gems & Jewellery')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (79, 7, N'Guards / Security Services')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (80, 7, N'Hotels / Restaurants')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (81, 7, N'Legal / Defence / Government')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (82, 7, N'NGO / Social Services')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (83, 7, N'Other')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (84, 7, N'Recruitment Agency')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (85, 7, N'Security / Law Enforcement')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (86, 7, N'Self Employed / Consultants')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (87, 7, N'Strategy / Management Consulting Firms')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (88, 7, N'Ticketing / Travel / Airlines')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (89, 8, N'Construction / Engineering / Cement / Metals')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (90, 8, N'Real Estate / Property')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (91, 8, N'Site Engineering / Project Management')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (92, 9, N'Agriculture / Dairy')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (93, 9, N'Architecture / Interior Design')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (94, 9, N'Fertilizers / Pesticides')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (95, 10, N'Brewery / Distillery')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (96, 11, N'Education / Teaching / Training')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (97, 10, N'FMCG / Foods / Beverage')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (98, 10, N'Food Processing')
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (99, 11, N'Teaching / Education')
GO
INSERT [dbo].[TblJobCategory] ([JobCategoryId], [IndustryId], [JobCategory]) VALUES (100, 7, N'Top Management')
SET IDENTITY_INSERT [dbo].[TblJobCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[TblJobRegistration] ON 

INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (1, N'PJC0001', 1, N'Sagar Koli', N'Job', N'Dot Net Developer', 47, N'A net developer is responsible for producing code using . net languages such as C# and VB. ', N'371', N'Nalstop,Pune', N'In Office', N'10', N'50', N'Day', N'Salary Range', N'per month', N'40000-50000', N'1,2,3', 1, N'4yrs - 4yrs', CAST(N'2023-01-05' AS Date), CAST(N'2023-06-03' AS Date), CAST(N'2023-06-04' AS Date), 10, CAST(N'2023-05-03' AS Date), N'asdfgh', 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (2, N'PJC0002', 1, N'Rita Patil', N'Job', N'Full Stack Developer', 47, N'A net developer is responsible for producing code using . net languages such as C# and VB. ', N'380', N'Nalstop,Pune', N'Work from home', N'5', N'50', N'Night', N'Fixed Salary', N'per year', N'500000', N'1,3,5', 0, N'4yrs - 4yrs', CAST(N'2023-02-05' AS Date), CAST(N'2023-07-03' AS Date), CAST(N'2023-07-04' AS Date), 9, CAST(N'2023-06-03' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (3, N'PJC0003', 1, N'Muskan Nadaf', N'Internship', N'Marketing Coordinator', 68, N'preparing marketing and advertising strategies, plans, and objectives; planning and organizing promotional presentations; and updating calendars.', N'164', N'Indore', N'In Office', N'6', N'50', N'Day', N'Salary Range', N'per month', N'40000-50000', N'1,3,6', 1, N'4yrs - 4yrs', CAST(N'2023-03-05' AS Date), CAST(N'2023-08-03' AS Date), CAST(N'2023-08-04' AS Date), 9, CAST(N'2023-07-03' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (4, N'PJC0004', 1, N'Saurabh Patil', N'Internship', N'Medical Assistant', 10, N'They are responsible for administrative as well as clinical tasks, such as maintaining patient records, preparing patients and rooms for examination, assisting physicians with exams, and performing front-desk tasks. ', N'257', N'Mumbai', N'In Office', N'4', N'10', N'Day', N'Fixed Salary', N'per year', N'500000', N'1,3,7', 1, N'4yrs - 4yrs', CAST(N'2023-04-05' AS Date), CAST(N'2023-09-03' AS Date), CAST(N'2023-09-04' AS Date), 10, CAST(N'2023-08-03' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (5, N'PJC0005', 2, N'Ganesh Lad', N'Internship', N'Web Designer', 47, N'Web designers plan, create and code internet sites and web pages, many of which combine text with sounds, pictures, graphics and video clips. A web designer is responsible for creating the design and layout of a website or web pages.', N'371', N'Pune', N'In Office', N'8', N'50', N'Day', N'Salary Range', N'per month', N'40000-50000', N'1,3,8', 1, N'4yrs - 4yrs', CAST(N'2023-05-05' AS Date), CAST(N'2023-10-03' AS Date), CAST(N'2023-10-04' AS Date), 9, CAST(N'2023-09-03' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (6, N'PJC0006', 2, N'Kavita Kadam', N'Internship', N'Dog Trainer', 99, N'A dog trainer is an expert in dog behavior and knows how to train dogs to follow commands and abide by certain rules and expectations.', N'380', N'Hydrabad', N'In Office', N'5', N'50', N'Day', N'Fixed Salary', N'per year', N'500000', N'1,3,9', 1, N'4yrs - 4yrs', CAST(N'2023-06-05' AS Date), CAST(N'2023-11-03' AS Date), CAST(N'2023-11-04' AS Date), 9, CAST(N'2023-10-03' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (7, N'PJC0007', 2, N'Priyanka Patil', N'Internship', N'President of Sales', 3, N'Identifying where improvements can be made and developing sales plans and strategies to achieve sales goals. Working with the marketing department to design print and online promotional materials for the company''s products and services', N'164', N'Nashik', N'In Office', N'6', N'50', N'Day', N'Salary Range', N'per month', N'40000-50000', N'1,3,10', 1, N'4yrs - 4yrs', CAST(N'2023-07-05' AS Date), CAST(N'2023-12-03' AS Date), CAST(N'2023-12-04' AS Date), 9, CAST(N'2023-11-03' AS Date), N'Some Issue', 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (8, N'PJC0008', 2, N'Ganesh Lad', N'Job', N'Nursing Assistant', 8, N'Helping patients with hygiene, such as using the bathroom, bathing, brushing teeth and dressing. ', N'371', N'Panjab', N'In Office', N'20', N'12', N'Day', N'Fixed Salary', N'per year', N'500000', N'1,3,11', 0, N'4yrs - 4yrs', CAST(N'2023-08-05' AS Date), CAST(N'2023-03-13' AS Date), CAST(N'2023-12-03' AS Date), 9, CAST(N'2023-12-03' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (9, N'PJC0009', 3, N'Mitali Koli', N'Job', N'Project Manager', 83, N'A project manager identifies the project''s goals, objectives, and scope and creates a project plan that outlines the tasks, timelines, and resources required.', N'257', N'Amratsar', N'Work from home', N'4', N'50', N'Night', N'Salary Range', N'per month', N'40000-50000', N'1,3,12', 0, N'4yrs - 4yrs', CAST(N'2023-09-05' AS Date), CAST(N'2023-04-13' AS Date), CAST(N'2023-05-13' AS Date), 9, CAST(N'2023-12-04' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (10, N'PJC0010', 3, N'Sanket Avsare', N'Job', N'Librarian', 83, N'A librarian is in charge of collecting, organizing, and issuing library resources such as books, films, and audio files. They work in a range of settings including public libraries, schools, and museums', N'578', N'Chennai', N'Work from home', N'7', N'51', N'Night', N'Salary Range', N'per month', N'40000-50000', N'1,3,13', 1, N'4yrs - 4yrs', CAST(N'2023-10-05' AS Date), CAST(N'2023-05-14' AS Date), CAST(N'2023-05-15' AS Date), 9, CAST(N'2023-05-13' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (11, N'PJC0011', 3, N'Sachin Mithiya', N'Job', N'Project Manager', 83, N'A project manager identifies the project''s goals, objectives, and scope and creates a project plan that outlines the tasks, timelines, and resources required.', N'371', N'Pune ', N'Work from home', N'10', N'51', N'Night', N'Fixed Salary', N'per year', N'500000', N'1,3,14', 1, N'4yrs - 4yrs', CAST(N'2023-11-05' AS Date), CAST(N'2023-06-15' AS Date), CAST(N'2023-06-16' AS Date), 9, CAST(N'2023-06-14' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (12, N'PJC0012', 3, N'Mahesh Wagh', N'Job', N'Account Executive', 4, N'An Account Executive is someone who can work in many fields and help grow their companies by finding leads and closing sales deals with existing clients or new prospects. They also act as intermediaries between other departments within an organization to ensure the success of their clients.', N'578', N'Indore', N'Work from home', N'25', N'31', N'Day', N'Salary Range', N'per month', N'40000-50000', N'1,3,15', 1, N'4yrs - 4yrs', CAST(N'2023-12-05' AS Date), CAST(N'2023-07-16' AS Date), CAST(N'2023-07-17' AS Date), 9, CAST(N'2023-07-15' AS Date), NULL, 0)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (13, N'PJC13', 4, N'Mahesh Wagh', N'Job', N'Java Developer', 67, N'We are looking for a Full Stack Developer to produce scalable software solutions. You’ll be part of a cross-functional team that’s responsible for the full software development life cycle, from conception to deployment.

As a Full Stack Developer, you should be comfortable around both front-end and back-end coding languages, development frameworks and third-party libraries. You should also be a team player with a knack for visual design and utility.

If you’re also familiar with Agile methodologies, we’d like to meet you.

Responsibilities
Work with development teams and product managers to ideate software solutions
Design client-side and server-side architecture
Build the front-end of applications through appealing visual design
Develop and manage well-functioning databases and applications
Write effective APIs
Test software to ensure responsiveness and efficiency
Troubleshoot, debug and upgrade software
Create security and data protection settings
Build features and applications with a mobile responsive design
Write technical documentation
Work with data scientists and analysts to improve software', NULL, N'Pune,Maharashtra', N'Hybrid', N'4', N'10000', N'US', N'Fixed', NULL, N'60000', N'6', NULL, N'2years', CAST(N'2023-05-06' AS Date), CAST(N'2023-04-27' AS Date), CAST(N'2023-05-03' AS Date), 9, NULL, N'ertyuiokljhvbgc', NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (14, N'PJC14', 17, NULL, N'Job', N'Web Development', 72, NULL, NULL, N'Kolhapur,Maharashtra', N'Work from Home', N'4', N'500', N'Night', N'Flexible', NULL, N'10000 - 100000', N'6', NULL, N'4.5 year', CAST(N'2023-06-11' AS Date), CAST(N'2023-05-03' AS Date), CAST(N'2023-06-24' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (15, N'PJC15', 18, N'Ashish Ostwal', N'Internship', N'Front End Developer', 84, N'qwertyuioplkhgfdsa', NULL, N'Kolhapur,Maharashtra', N'On Field', N'4', N'600', N'Night', N'Flexible', NULL, N'10000 - 100000', N'6', NULL, N'4.5 year', CAST(N'2023-06-25' AS Date), CAST(N'2023-05-03' AS Date), CAST(N'2023-07-30' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (16, N'PJC16', 4, N'mahesh wagh', N'Job', N'Accountant', 68, N'handle all work related to Account department', NULL, N'pune', N'In Office', N'2', N'10', N'Day', N'Fixed', NULL, N'30000', N'2,5', NULL, N'4.5 year', CAST(N'2023-05-01' AS Date), CAST(N'2023-05-04' AS Date), CAST(N'2023-05-04' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (17, N'PJC17', 24, N'Ashish Ostwal', N'Job', N'Accountant', 89, N'handle all work related to Account department', NULL, N'pune', N'In Office', N'6', N'5', N'Day', N'Flexible', NULL, N'10000 - 100000', N'1,2,13', NULL, N'2', CAST(N'2023-05-06' AS Date), CAST(N'2023-05-05' AS Date), CAST(N'2023-05-16' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (18, N'PJC18', 18, N'Mitali Kole', N'Job', N'Software Developer', 84, N'this is great opportunity.', NULL, N'Kolhapur,Maharashtra', N'On Field', N'4', N'12', N'US', N'Fixed', NULL, N'10000', N'4', NULL, N'1year', CAST(N'2023-05-27' AS Date), CAST(N'2023-05-10' AS Date), CAST(N'2023-06-11' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (19, N'PJC19', 18, N'Mitali Kole', N'Job', N'Software Developer', 73, N'this is great opportunity.', NULL, N'Kolhapur,Maharashtra', N'In Office', N'3', N'12', N'Day', N'Fixed', NULL, N'400000-500000', N'3,4,5', NULL, N'1year', CAST(N'2023-05-11' AS Date), CAST(N'2023-05-10' AS Date), CAST(N'2023-05-13' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (20, N'PJC20', 17, N'Mitali Kole', N'Job', N'Software Developer', 72, N'this is good opportunity.', NULL, N'Kolhapur,Maharashtra', N'Work from Home', N'4', N'100', N'Night', N'Fixed', NULL, N'10000', N'2', NULL, N'1year', CAST(N'2023-05-27' AS Date), CAST(N'2023-05-12' AS Date), CAST(N'2023-05-31' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (21, N'PJC21', 18, N'Mitali Kole', N'Job', N'Software Developer', 72, N'this is a very good job opportunity.', NULL, N'Kolhapur,Maharashtra', N'On Field', N'3', N'100', N'Night', N'Fixed', NULL, N'10000', N'2', NULL, N'1.5year', CAST(N'2023-05-28' AS Date), CAST(N'2023-05-12' AS Date), CAST(N'2023-05-31' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[TblJobRegistration] ([PostJobId], [PostJobCode], [CompanyId], [ContactPerson], [OpportunityType], [JobTitle], [JobCategoryId], [JobDescription], [JobLocation], [Address], [JobType], [RequiredQualificationId], [NoofOpenings], [WorkingShifts], [SalaryType], [SalaryRange], [Salary], [JobBenefits], [CollectResume], [TotalExperience], [ExpectedJoiningDate], [ApplicationStartDate], [ApplicationEndDate], [StatusId], [ApprovalDate], [RejectionReason], [IsDelete]) VALUES (22, N'PJC22', 26, N'Ashish Ostwal', N'Job', N' Dot Net Developer', 47, N'A net developer is responsible for producing code using . net languages such as C# and VB. ', NULL, N'pune', N'In Office', N'3,5', N'500', N'Day', N'Fixed', NULL, N'30000', N'2,4', NULL, N'4.5year', CAST(N'2023-05-31' AS Date), CAST(N'2023-05-12' AS Date), CAST(N'2023-06-24' AS Date), 9, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblJobRegistration] OFF
GO
SET IDENTITY_INSERT [dbo].[TblJobSeekerDetails] ON 

INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (27, N'JSC0001', N'Saurabh Shahaji Patil', N'saurabhpatil7172@gmail.com', N'123', 8657677172, 7785958596, CAST(N'1997-04-18' AS Date), N'Male', N'Kolhapur,Maharashtra', N'Kolhapur,Maharashtra', 416205, 369, N'10,16', 1, N'General', N'Single/unmarried', CAST(N'2022-11-11' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, NULL, N'saurabh.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (28, N'JSC0002', N'Muskan Shoukat Nadaf', N'muskaannadaf24@gmail.com', N'ABC123', 7057650886, 7755845485, CAST(N'2000-03-24' AS Date), N'Female', N'Sangli', N'Sangli', 416416, 383, N'11,17,39', 0, N'OBC', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', N'Muskan.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (29, N'JSC0003', N'Mitali Sagar Kole', N'mitalipatil.0705@gmail.com', N'ABC123', 8080194415, 9985878585, CAST(N'2000-09-15' AS Date), N'Female', N'Delhi', N'Mumbai', 451525, 369, N'10,16,31', 1, N'General', N'Married', CAST(N'2023-12-02' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, N'Rita Sanjay Patil resume.pdf', N'Mitali.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (30, N'JSC0004', N'Sanket Sanjay Avsare', N'sanket.avasare@gmail.com', N'ABC123', 8983458640, 9307945660, CAST(N'1996-06-06' AS Date), N'Male', N'Mumbai', N'Pune', 402109, 387, N'10,16,31', 1, N'Scheduled Tribe (ST)', N'Single/unmarried', CAST(N'2023-05-01' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (31, N'JSC0005', N'Sachin jayantilal mithiya', N'sachinmithiya99@gmail.com', N'ABC123', 7776994281, 9359981718, CAST(N'1999-02-03' AS Date), N'Male', N'Satara', N'Sangli', 412801, 383, N'11,17,43', 0, N'VJNT', N'Married', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (32, N'JSC0006', N'Aditya Dattatray Chloure', N'adityachoure31@gmail.com', N'ABC123', 7030453676, 8080787878, CAST(N'2000-01-01' AS Date), N'male', N'Satara', N'Hyderabad', 411056, 578, N'11,17,44', 0, N'OBC', N'single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (33, N'JSC0007', N'Rita Sanjay Patil', N'ritapatil823@gmail.com', N'ABC123', 8319503862, 8719073888, CAST(N'1997-09-07' AS Date), N'Female', N'Pune', N'Sangli', 450331, 383, N'11,17,52', 0, N'OBC', N'Married', CAST(N'2023-06-03' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (34, N'JSC0008', N'Ashish Mahavir Ostwal', N'ashuostwal23@gmail.com', N'ABC123', 8624077183, 7875463819, CAST(N'1996-09-08' AS Date), N'Male', N'Pune', N'Pune', 411043, 380, N'11,17,52', 0, N'Open', N'Single', CAST(N'2023-06-03' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (35, N'JSC0009', N'Kartik Sunil Tambat', N'premtambat007@gmail.com', N'ABC124', 7558628788, 7531596874, CAST(N'1997-11-21' AS Date), N'Male', N'Pune', N'Pune', 411043, 380, N'11,17,53', 0, N'Open', N'Single', CAST(N'2023-06-03' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (36, N'JSC0010', N'Mahesh Raosaheb Wagh', N'waghmahesh5@gmail.com', N'ABC125', 9834444193, 7458963214, CAST(N'1993-01-01' AS Date), N'Male', N'Pune', N'Pune', 411505, 380, N'11,17,54', 0, N'Open', N'Single', CAST(N'2023-07-03' AS Date), NULL, NULL, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (101, N'JSC00100', N'Ashish Mahavir Ostwal', N'8624077183a@gmail.com', N'ashish123@', 8745698745, 7456987456, CAST(N'2012-06-13' AS Date), N'Male', N'Pune', N'Pune', 400001, 380, N'10,16,31', 1, N'General', N'Single/unmarried', CAST(N'2023-05-12' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented 
and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. 
A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, N'Admin Module..pdf', N'Ashah.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (37, N'JSC0011', N'Indrajeet Chothe', N'indrajeet07@gmail.com', N'ABC123', 7038281004, 9898658595, CAST(N'1995-11-10' AS Date), N'Male', N'Pune', N'Pune', 411525, 380, N'11,17,34', 0, N'VJNT', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', N'Indrajeet.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (38, N'JSC0012', N'Sagar Koli', N'sagarkoli219@gmail.com', N'ABC123', 8551810587, 9960585898, CAST(N'1998-02-05' AS Date), N'Male', N'Pune', N'Pune', 514263, 380, N'11,17,32', 0, N'Open', N'Single', CAST(N'2023-08-03' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (39, N'JSC0013', N'Ankita Nannaware', N'ankitanannaware456@gmail.com', N'ABC123', 9022149446, 7785859585, CAST(N'1997-12-09' AS Date), N'Male', N'Mumbai', N'Mumbai', 518485, 371, N'11,17,33', 0, N'OBC', N'Married', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (40, N'JSC0014', N'Aarushi Musale', N'aarushimusale20@gmail.com', N'ABC123', 7350243390, 9968578785, CAST(N'1999-01-07' AS Date), N'Male', N'Banglore', N'Banglore', 411052, 257, N'11,17,35', 0, N'SC', N'Divorced', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (41, N'JSC0015', N'Prathmesh Nimbalkar', N'nimbalkarprathmesh01@gmail.com', N'ABC123', 8652184592, 8087584858, CAST(N'2001-01-09' AS Date), N'Male', N'Aurangabad', N'Aurangabad', 698585, 358, N'11,17,36', 0, N'ST', N'Single', CAST(N'2022-05-12' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (42, N'JSC0016', N'Dhanshri Dhamdhere', N'shindedhanshri194@gmail.com', N'ABC123', 9325342207, 8078585895, CAST(N'2000-02-09' AS Date), N'Female', N'Chandigarh', N'Aurangabad', 785525, 358, N'11,17,37', 0, N'OBC', N'Married', CAST(N'2021-09-11' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (44, N'JSC0018', N'Sana Shaikh', N'sanaSh@gmail.com', N'ABC123', 8865959850, 8355880143, CAST(N'1997-01-06' AS Date), N'Female', N'Banglore', N'Hydreabad', 400024, 578, N'11,17,45', 0, N'VJNT', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (45, N'JSC0019', N'Sara Mulla', N'saram11@outlook.com', N'ABC123', 8855884700, 7758815297, CAST(N'2001-09-09' AS Date), N'Female', N'Punjab', N'Amritsar', 415210, 476, N'11,17,46', 0, N'Open', N'Divorced', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (46, N'JSC0020', N'Shanu Karomkar', N'shanu1522@gmail.com', N'ABC123', 8989541200, 7878584858, CAST(N'1999-01-08' AS Date), N'Male', N'Mumbai', N'Mumbai', 402109, 371, N'11,17,47', 0, N'SC', N'Married', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (47, N'JSC0021', N'Omkar nhavkar', N'Om4545@gmail.com', N'ABC123', 8850045250, 8788243725, CAST(N'2000-01-09' AS Date), N'Male', N'Navi Mumbai', N'Mumbai', 402106, 371, N'11,17,48', 0, N'VJNT', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (48, N'JSC0022', N'Shubham Patil', N'shubham2222@gmail.com', N'ABC123', 9985850001, 9769134744, CAST(N'1997-01-01' AS Date), N'Male', N'Pune', N'Banglore', 401251, 257, N'11,17,49', 0, N'Open', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (49, N'JSC0023', N'Rahul Yadav', N'rahulY@gmail.com', N'ABC123', 9659658500, 9890054857, CAST(N'1998-09-02' AS Date), N'Male', N'Assam', N'Ajmer', 402119, 499, N'11,17,50', 0, N'OBC', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (50, N'JSC0024', N'Rohan Kulkarni', N'RohuKulkarni@outlook.com', N'ABC123', 8875450005, 9858578585, CAST(N'1997-06-04' AS Date), N'Male', N'Punjab', N'Indore', 402116, 322, N'11,17,51', 0, N'VJNT', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (51, N'JSC0025', N'Mitisha Singh', N'Mitisha@rediffmail.com', N'ABC123', 9960964848, 9968587458, CAST(N'1999-08-04' AS Date), N'Female', N'Nagaland', N'Mumbai', 585784, 372, N'11,17,52', 0, N'ST', N'Single', NULL, NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (52, N'JSC0026', N'Kartik Tambat', N'premtambat007@gmail.com', N'ABC123', 7558628788, 7894564566, CAST(N'2020-11-03' AS Date), N'Male', N'Pune', NULL, 456123, 4, N'3,4', 1, N'General', N'Single/unm', CAST(N'2022-11-11' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (57, N'JSC0057', N'Sanket Awasare', N'sanket12@gmail.com', N'Sanker1@', 7894561236, 7894561236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-24' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (58, N'JSC0058', N'Ashish Ostwal', N'ash12@gmail.com', N'ash1@', 7894561232, 7894561232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-24' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (59, N'JSC0059', N'Akshay patil', N'akshay12@gmail.com', N'ak1@', 7894561236, 7894561236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-24' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (60, N'JSC0060', N'Gauri Powar', N'gauri12@gmail.com', N'gauri1@', 7894561236, 7894561236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-24' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (61, N'JSC0061', N'Tushar Patil', N'tp1@gmail.com', N'ABC12', 7894569875, 7894569875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-30' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (62, N'JSC0062', N'Akash Lad', N'akash12@gmail.com', N'ABC12', 7894896589, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-30' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (63, N'JSC0063', N'Akash Lad', N'akash12@gmail.com', N'ABC12', 7894569874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-30' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (64, N'JSC0064', N'Pradeep Patil', N'pra1@gmail.com', N'ABC12', 7894561598, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-30' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (66, N'JSC0066', N'Nikhil Patil', N'n1@gmail.com', N'ABC12', 7894561236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-30' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (67, N'JSC0067', N'Swapnil Patil', N'sw1@gmail.com', N'ABC12', 7894569874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-03-30' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (69, N'JSC0069', N'Pratiksha Patil ', N'pratiksha123@gmail.com', N'ABC123', 7845965878, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-04-06' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (70, N'JSC0070', N'Aswini Gaikawad', N'ashg1@gmail.com', N'ABC123', 7894561236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-04-06' AS Date), NULL, 1, N'Result.pdf', N'Ashwini.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (71, N'JSC0071', N'Indrajeet Chothe', N'indrajeet08@gmail.com', N'ABC123', 7896547896, 7894561236, CAST(N'1999-04-07' AS Date), N'Male', N'Sangali', N'Sangali', 416201, 383, N'10,16,31', 1, N'OBC - Creamy', N'Single/unmarried', CAST(N'2023-04-13' AS Date), N'Award-winning web-developer with 2 years of experience in HTML, CSS, LAMP. My main interests are object-oriented and user-centered design. Highly accomplished in manipulating visual hierarchy. A regular contributor to system enhancement. A trainer who successfully motivated a group of young developers into getting highest accolades for their recent endeavors.', 1, N'Rita Sanjay Patil resume.pdf', N'Indrajeet.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (72, N'JSC0072', N'Amar Patil', N'amar12@gmail.com', N'ABC123', 7854698745, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-04-14' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (92, N'JSC0080', N'Manohar Lohar', N'manohar1@gmail.com', N'ABC123', 7412365987, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-03' AS Date), NULL, 1, N'Rita Sanjay Patil resume.pdf', NULL, 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (94, N'JSC0094', N'Ashish', N'ashisho@gmail.com', N'Ashish123', 8885858585, 9858585858, CAST(N'2001-01-17' AS Date), N'Male', N'Kolhapur,Maharashtra', N'Kolhapur,Maharashtra', 400001, 371, N'10,16,31', 1, N'General', N'Single/unmarried', CAST(N'2023-05-05' AS Date), N'.Net Developer with skillset for the Mvc .net & Javascript with HTML,CSS addons', 1, N'Rita Sanjay Patil resume.pdf', N'Admin.jpg', 0)
INSERT [dbo].[TblJobSeekerDetails] ([SeekerId], [SeekerCode], [SeekerName], [EmailId], [Password], [ContactNo], [AlternateContactNo], [DOB], [Gender], [CorrespondenceAddress], [PermanentAddress], [Pincode], [CityId], [LanguageId], [PhysicallyChallenged], [CasteCategory], [MaritalStatus], [DateOfRegistration], [ProfileSummary], [StatusId], [ResumePDF], [ProfileIMG], [IsDelete]) VALUES (96, N'JSC0096', N'Yash Gaikawad', N'yash123@gmail.com', N'ABC123', 7894569874, 7456987456, CAST(N'2000-05-15' AS Date), N'Male', N'Pune', N'Pune', 411006, 380, N'10,16', 1, N'General', N'Single/unmarried', CAST(N'2023-05-12' AS Date), N'NET Developer with five years of experience developing web, batch, and business intelligence solutions using ASP.NET, C#.NET, SharePoint, and MS SQL. Expertise in requirements analysis, design, development, testing, maintenance, enhancement, and production support of business applications.', 1, N'Rita Sanjay Patil resume.pdf', N'download.jpeg', 0)
SET IDENTITY_INSERT [dbo].[TblJobSeekerDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[TblLanguage] ON 

INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (1, N'Adi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (2, N'Assamese')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (3, N'Balti')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (4, N'Bengali')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (5, N'Bhili')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (6, N'Bodo')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (7, N'Chinese')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (8, N'Dogri')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (9, N'Dutch')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (10, N'English')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (11, N'Filipino')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (12, N'Garo')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (13, N'German')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (14, N'Greek')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (15, N'Gujarati')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (16, N'Hindi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (17, N'Hungarian')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (18, N'Italian')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (19, N'Japanese')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (20, N'Kannada')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (21, N'Kashmiri')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (22, N'Khasi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (23, N'Konkani')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (24, N'Konyak')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (25, N'Ladakhi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (26, N'Latin')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (27, N'Lushai/Mizo')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (28, N'Maithili')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (29, N'Malayalam')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (30, N'Manipuri')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (31, N'Marathi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (32, N'Nepali')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (33, N'Nissi/Dafla')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (34, N'Odia')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (35, N'Persian')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (36, N'Portuguese')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (37, N'Punjabi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (38, N'Purgi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (39, N'Russian')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (40, N'Sema')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (41, N'Tamil')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (42, N'Telugu')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (43, N'Turkish')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (44, N'Urdu')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (45, N'Vietnamese')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (46, N'Western Punjabi')
INSERT [dbo].[TblLanguage] ([LanguageId], [Language]) VALUES (47, N'Wu Chinese')
SET IDENTITY_INSERT [dbo].[TblLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPayment] ON 

INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (1, NULL, N'EMP0001', 1, NULL, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 1, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (2, NULL, N'EMP0002', 2, NULL, CAST(N'2023-05-16' AS Date), CAST(N'2023-05-16' AS Date), NULL, 2, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (4, NULL, N'EMP0004', 4, NULL, CAST(N'2023-04-11' AS Date), NULL, NULL, 1, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (5, NULL, N'EMP0005', 1, NULL, CAST(N'2023-03-12' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (6, NULL, N'EMP0006', 2, NULL, CAST(N'2023-04-10' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (7, NULL, N'EMP0007', 3, NULL, CAST(N'2023-03-03' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (8, NULL, N'EMP0008', 4, NULL, CAST(N'2023-03-25' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (9, NULL, N'EMP0009', 5, NULL, CAST(N'2023-03-04' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (10, NULL, N'EMP0010', 6, NULL, CAST(N'2023-04-14' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (11, NULL, N'EMP0011', 3, NULL, CAST(N'2023-04-02' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (12, NULL, N'EMP0012', 5, NULL, CAST(N'2023-03-11' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (13, NULL, N'EMP0013', 4, NULL, CAST(N'2023-03-09' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (14, NULL, N'EMP0014', 6, NULL, CAST(N'2023-03-08' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (15, NULL, N'EMP0015', 2, NULL, CAST(N'2023-03-15' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (16, NULL, N'EMP0016', 1, NULL, CAST(N'2023-03-19' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (17, NULL, N'EMP0017', 5, NULL, CAST(N'2023-03-20' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (18, NULL, N'EMP0018', 1, NULL, CAST(N'2023-03-16' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (20, NULL, N'EMP0020', 2, NULL, CAST(N'2023-05-16' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (21, NULL, NULL, NULL, NULL, CAST(N'2023-05-09' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPayment] ([PaymentId], [Seekercode], [EmployerCode], [SubscriptionId], [PaymentMode], [SubscriptionDate], [PaymentDate], [TransactionId], [StatusId], [GSTNo]) VALUES (23, NULL, N'EMP0001', NULL, NULL, CAST(N'2023-05-25' AS Date), CAST(N'2023-05-25' AS Date), N'TS0022', 0, NULL)
SET IDENTITY_INSERT [dbo].[tblPayment] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPlan] ON 

INSERT [dbo].[tblPlan] ([PlanId], [BenefitId], [Plans], [PlanPrice], [PlanDuration], [PlanRegistrationDate], [Planfor]) VALUES (1, N'1', N'Free', N'0', N'Unlimited', NULL, NULL)
INSERT [dbo].[tblPlan] ([PlanId], [BenefitId], [Plans], [PlanPrice], [PlanDuration], [PlanRegistrationDate], [Planfor]) VALUES (2, N'2', N'Lite', N'1000', N'1 month', NULL, NULL)
INSERT [dbo].[tblPlan] ([PlanId], [BenefitId], [Plans], [PlanPrice], [PlanDuration], [PlanRegistrationDate], [Planfor]) VALUES (3, N'3', N'Standard', N'2000', N'1 month', NULL, NULL)
INSERT [dbo].[tblPlan] ([PlanId], [BenefitId], [Plans], [PlanPrice], [PlanDuration], [PlanRegistrationDate], [Planfor]) VALUES (4, N'4', N'Pro', N'3000', N'1 month', NULL, NULL)
INSERT [dbo].[tblPlan] ([PlanId], [BenefitId], [Plans], [PlanPrice], [PlanDuration], [PlanRegistrationDate], [Planfor]) VALUES (5, N'5', N'Basic Plan', N'760', N'1 month', NULL, NULL)
INSERT [dbo].[tblPlan] ([PlanId], [BenefitId], [Plans], [PlanPrice], [PlanDuration], [PlanRegistrationDate], [Planfor]) VALUES (6, N'6', N'Premium Plan', N'1283', N'1 month', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblPlan] OFF
GO
SET IDENTITY_INSERT [dbo].[tblprofileview] ON 

INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (1, N'JSC0001', N'EMP0001')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (2, N'JSC0001', N'EMP0002')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (3, N'JSC0001', N'EMP0003')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (4, N'JSC0001', N'EMP0004')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (5, N'JSC0001', N'EMP0005')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (6, N'JSC0001', N'EMP0006')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (7, N'JSC0001', N'EMP0007')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (8, N'JSC0001', N'EMP0008')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (9, N'JSC0001', N'EMP0008')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (12, N'JSC0002', N'EMP0010')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (10, N'JSC0001', N'EMP0009')
INSERT [dbo].[tblprofileview] ([ProfileID], [SeekerCode], [EmployerCode]) VALUES (11, N'JSC0001', N'EMP0010')
SET IDENTITY_INSERT [dbo].[tblprofileview] OFF
GO
SET IDENTITY_INSERT [dbo].[TblProjectDetails] ON 

INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (1, N'JSC0001', N'Arduino Based Braking System', N'Ashish Ostwal', N'In Progress', N'2 Year     1 Month', N'Arduino Based Braking System')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (2, N'JSC0002', N'Bio Diesel Efficiency', N'Pradeep Ostwal', N'Completed', N'6/13/2022', N'null')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (3, N'JSC0003', N'Electromagnetic Braking Sysytem', N'Anuja Halidwar', N'Completed', N'11/11/2022', N'null')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (4, N'JSC0004', N'Rasberry Collicance System', N'Anuv Patel', N'Incompleted', N'1/1/2023', N'null')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (5, N'JSC0005', N'Scholarship Management System', N'Sarjesh Deshmukh', N'Hold', N'2/1/2023', N'null')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (6, N'JSC0006', N'BloodBank Management Service', N'Om Surve', N'Incompleted', N'5/9/2021', N'null')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (7, N'JSC0007', N'ChatBot', N'Adiye Survyawansi', N'Completed', N'7/29/2022', N'null')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (8, N'JSC0057', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (9, N'JSC0058', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (10, N'JSC0059', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (11, N'JSC0060', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (12, N'JSC0061', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (13, N'JSC0062', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (14, N'JSC0063', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (15, N'JSC0064', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (16, N'JSC0065', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (17, N'JSC0066', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (18, N'JSC0067', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (19, N'JSC0068', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (20, N'JSC0069', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (21, N'JSC0070', N'Pyschological Test Management', N'Borate Sir', N'Finished', N'0 Year  2 Month', N'Test management')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (22, N'JSC0071', N'Agro - Ecomers', N'Ashish Jain', N'In Progress', N'1 Year     -6 Month', N'Arduino Based Agro System')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (23, N'JSC0072', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (24, N'JSC0073', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (25, N'JSC0080', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (26, N'JSC0094', N'Pyschological Test Management', N'Borate Sir', N'Finished', N'1 Year  -9 Month', N'suecunnn')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (27, N'JSC0096', N'Test management', N'Ashiah', N'Finished', N'1 Year  -10 Month', N'Test Management')
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (28, N'JSC0098', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TblProjectDetails] ([ProjectId], [SeekerCode], [ProjectTitle], [ClientName], [ProjectStatus], [TotalExperience], [ProjectDetails]) VALUES (29, N'JSC00100', N'Pyschological Test Management', N'Ashish Ostwal', N'In Progress', N'0 Year     0 Month', N'Test management')
SET IDENTITY_INSERT [dbo].[TblProjectDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[TblQualification] ON 

INSERT [dbo].[TblQualification] ([QualificationId], [Qualification]) VALUES (1, N'X')
INSERT [dbo].[TblQualification] ([QualificationId], [Qualification]) VALUES (2, N'XII')
INSERT [dbo].[TblQualification] ([QualificationId], [Qualification]) VALUES (3, N'Under-Graduate/Graduation')
INSERT [dbo].[TblQualification] ([QualificationId], [Qualification]) VALUES (4, N'Post-Graduate')
INSERT [dbo].[TblQualification] ([QualificationId], [Qualification]) VALUES (5, N'Doctorate/Ph.D')
SET IDENTITY_INSERT [dbo].[TblQualification] OFF
GO
SET IDENTITY_INSERT [dbo].[TblRequireQualification] ON 

INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (1, N'Select Education')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (2, N'B.A')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (3, N'B.Arch')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (4, N'BCA')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (5, N'B.B.A / B.M.S')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (6, N'B.Com')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (7, N'B.Ed')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (8, N'BDS')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (9, N'BHM')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (10, N'B.Pharma')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (11, N'B.Sc')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (12, N'B.Tech / B.E.')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (13, N'LLB')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (14, N'MBBS')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (15, N'Diploma')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (16, N'BVSC')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (17, N'BAMS')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (18, N'BHMS')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (19, N'B.El.Ed')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (20, N'B.P.Ed')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (21, N'B.Des.')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (22, N'BFA')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (23, N'B.U.M.S')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (24, N'CA')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (25, N'CS')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (26, N'ICWA (CMA)')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (27, N'Integrated PG')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (28, N'LLM')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (29, N'M.A')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (30, N'M.Arch')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (31, N'M.Com')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (32, N'M.Ed')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (33, N'M.Pharma')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (34, N'MS / M.Sc(Science)')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (35, N'M.Tech')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (36, N'MBA / PGDM')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (37, N'MCA')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (38, N'Medical-MS / MD')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (39, N'PG Diploma')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (40, N'MVSC')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (41, N'MCM')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (42, N'MDS')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (43, N'MFA')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (44, N'M.Des.')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (45, N'DM')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (46, N'M.Ch')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (47, N'Doctorate/PhD')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (48, N'12th')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (49, N'10th')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (50, N'Any Graduate')
INSERT [dbo].[TblRequireQualification] ([RequireQualificationId], [RequireQualification]) VALUES (51, N'Other')
SET IDENTITY_INSERT [dbo].[TblRequireQualification] OFF
GO
SET IDENTITY_INSERT [dbo].[TblRound] ON 

INSERT [dbo].[TblRound] ([RoundID], [EmployerCode], [RoundName]) VALUES (1, N'EMP0001', N'Coding')
INSERT [dbo].[TblRound] ([RoundID], [EmployerCode], [RoundName]) VALUES (2, N'EMP0001', N'ApptitudeTest')
INSERT [dbo].[TblRound] ([RoundID], [EmployerCode], [RoundName]) VALUES (3, N'EMP0001', N'Interview')
INSERT [dbo].[TblRound] ([RoundID], [EmployerCode], [RoundName]) VALUES (4, N'EMP0002', N'GrouDiscussion')
INSERT [dbo].[TblRound] ([RoundID], [EmployerCode], [RoundName]) VALUES (5, N'EMP0002', N'ApptitudeTest')
INSERT [dbo].[TblRound] ([RoundID], [EmployerCode], [RoundName]) VALUES (6, N'EMP0002', N'Interview')
SET IDENTITY_INSERT [dbo].[TblRound] OFF
GO
SET IDENTITY_INSERT [dbo].[TblShareJob] ON 

INSERT [dbo].[TblShareJob] ([ShareId], [Share], [EmployerCode], [Seekercode]) VALUES (1, N'WhatsApp', N'Null', N'JSC0001')
INSERT [dbo].[TblShareJob] ([ShareId], [Share], [EmployerCode], [Seekercode]) VALUES (2, N'FaceBook', N'Null', N'JSC0002')
INSERT [dbo].[TblShareJob] ([ShareId], [Share], [EmployerCode], [Seekercode]) VALUES (3, N'Instagram', N'Null', N'JSC0003')
INSERT [dbo].[TblShareJob] ([ShareId], [Share], [EmployerCode], [Seekercode]) VALUES (4, N'Tweeter', N'EMP0001', N'Null')
INSERT [dbo].[TblShareJob] ([ShareId], [Share], [EmployerCode], [Seekercode]) VALUES (5, N'Linkedin', N'EMP0002', N'Null')
SET IDENTITY_INSERT [dbo].[TblShareJob] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSkill] ON 

INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (1, N'Skills')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (2, N'Administrative')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (3, N'Account Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (4, N'Attending Classes')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (5, N'Adobe InDesign')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (6, N'Analytical Skills')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (7, N'Acquisition Campaigns')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (8, N'Analytics')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (9, N'Accuracy')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (10, N'Adobe Flash')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (11, N'Applying scientific methods to gathering data')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (12, N'Authenticity')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (13, N'Ability to Work Independently')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (14, N'Advanced Physics')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (15, N'Agile Scrum Team')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (16, N'3D Homeplanner')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (17, N'Adobe Acrobat')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (18, N'Automated model programming')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (19, N'Analytical')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (20, N'Active Listening')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (21, N'Appointments')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (22, N'Abstraction')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (23, N'Accuracy')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (24, N'Adaptability')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (25, N'AutoCAD')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (26, N'Adobe Illustrator')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (27, N'Achievement')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (28, N'Archicad')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (29, N'Adaptability')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (30, N'Architectural Codes')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (31, N'Achievement')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (32, N'Analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (33, N'Ability to Learn Digital Design Software')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (34, N'Bidding')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (35, N'AutoCAD')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (36, N'Advertising')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (37, N'Adobe Creative Suite')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (38, N'Accuracy')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (39, N'Bilingual')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (40, N'Brainstorming')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (41, N'Architectural Rendering')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (42, N'Adobe Photoshop')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (43, N'Adobe Creative Cloud ')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (44, N'Analytical')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (45, N'AutoCAD')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (46, N'Autodesk Revit & 3D Max')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (47, N'Assessment')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (48, N'Branding')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (49, N'Budget Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (50, N'Budgeting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (51, N'Building Codes')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (52, N'Building Construction')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (53, N'Building Contracts')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (54, N'Building Mission Statements')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (55, N'Building Systems')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (56, N'Business Development')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (57, N'Business Intelligence')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (58, N'C')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (59, N'C#')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (60, N'C++')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (61, N'CAD (computer-aided design)')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (62, N'Calculations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (63, N'Calculus')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (64, N'Calendar Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (65, N'Canva')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (66, N'Cataloging')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (67, N'Causal relationships')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (68, N'Change Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (69, N'Chief Architect')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (70, N'Circular economy')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (71, N'Classifying data')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (72, N'Client Acquisition')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (73, N'Client Retention')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (74, N'Closing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (75, N'Coding data')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (76, N'Cold Calling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (77, N'Collaboration')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (78, N'Collection Development')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (79, N'Color')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (80, N'Commitment')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (81, N'Commitment to ongoing improvement')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (82, N'Communication')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (83, N'Company Policies')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (84, N'Comparable Worth')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (85, N'Compensation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (86, N'Compliance')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (87, N'Computer')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (88, N'Computer Architecture')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (89, N'Computer Processing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (90, N'Computer Science')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (91, N'Computer-Aided Design (CAD)')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (92, N'Conceptual, Logical, or Physical Data Modeling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (93, N'Conceptualization')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (94, N'Conditioning Hair')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (95, N'Conflict Resolution')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (96, N'Construction Administration')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (97, N'Construction Documents')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (98, N'Consulting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (99, N'Content curation')
GO
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (100, N'Content management systems (CMS)')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (101, N'Content programming')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (102, N'Content promotion')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (103, N'Content strategy')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (104, N'Converting Scale from Blueprints')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (105, N'Coordination')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (106, N'CorelDRAW')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (107, N'Corporate')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (108, N'Corporate sustainability')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (109, N'Correspondence')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (110, N'Cosmetics Consulting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (111, N'Creating Good Rapport')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (112, N'Creating Milestones')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (113, N'Creative problem solving')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (114, N'Creative Thinking')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (115, N'Creativity')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (116, N'Crello')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (117, N'Critical thinking')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (118, N'CSS')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (119, N'Customer Relationship Management (CRM)')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (120, N'Customer Service')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (121, N'Data analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (122, N'Data Review')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (123, N'Data Structures')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (124, N'Database Architecture')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (125, N'Database management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (126, N'Dealing with Objections')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (127, N'Decision Making')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (128, N'Delegation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (129, N'Deductive reasoning')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (130, N'Design')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (131, N'Design at the level of industry and government standards')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (132, N'Design Concepts')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (133, N'Design Reviews')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (134, N'Design to Delivery')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (135, N'Designing and implementing tests of processes')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (136, N'Detail Orientation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (137, N'Developing Budgets')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (138, N'Developing Funding Proposals')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (139, N'Developing Interpretive Materials')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (140, N'Development')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (141, N'Diagnostic approach')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (142, N'Digital Imaging')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (143, N'Diligence')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (144, N'Direct Marketing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (145, N'Directing Visitors')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (146, N'Documentation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (147, N'Door to Door Sales')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (148, N'Drafting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (149, N'Drawing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (150, N'Drawing inferences')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (151, N'Dreamweaver')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (152, N'DSLR Cameras')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (153, N'Editing Software')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (154, N'Educational Programming')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (155, N'EHS (Environment, health, and safety)')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (156, N'Electronic Image Handling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (157, N'Eliciting and specifying project requirements')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (158, N'Emotional Intelligence')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (159, N'Employee Benefits')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (160, N'Employee Development')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (161, N'Employee Engagement')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (162, N'Engagement')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (163, N'Engineering product data management software (EPDM)')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (164, N'Enthusiastic')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (165, N'Entrepreneurship')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (166, N'Environmental awareness')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (167, N'Environmental monitoring')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (168, N'Errands')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (169, N'Establishing benchmarks')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (170, N'Estimating')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (171, N'Estimating Costs for Jobs')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (172, N'Evaluating')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (173, N'Evaluating Strengths and Weaknesses of Collections')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (174, N'Evaluation skills')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (175, N'Evaluations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (176, N'Event Planning')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (177, N'Events')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (178, N'Eyebrows')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (179, N'Facials')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (180, N'Filing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (181, N'Film Development')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (182, N'Financial Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (183, N'Financial planning')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (184, N'Fire Safety')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (185, N'Flexibility')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (186, N'Follow Directions')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (187, N'Forecasting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (188, N'Formulating data queries')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (189, N'Friendly')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (190, N'Gap analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (191, N'Geometry')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (192, N'Giving Body Waves')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (193, N'Giving Brazilian Blowouts')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (194, N'Giving Permanents')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (195, N'Goal Oriented')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (196, N'Good Judgment')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (197, N'Greet Guests')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (198, N'Hair Coloring')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (199, N'Hair Cutting')
GO
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (200, N'Hair Design')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (201, N'Hair Highlighting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (202, N'Hair Styling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (203, N'Health Regulations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (204, N'Highly Driven')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (205, N'High-resolution imaging')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (206, N'HTML')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (207, N'HTML5')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (208, N'Identifying and measuring correlations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (209, N'Identifying high-value areas for inquiry')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (210, N'Identifying Objectives')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (211, N'Identifying Systemic Issues')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (212, N'Image manipulation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (213, N'Imagination')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (214, N'Implementing Procedures')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (215, N'Independent thinking')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (216, N'Independent worker')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (217, N'Inductive reasoning')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (218, N'Industrial Design')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (219, N'Information Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (220, N'Initiative')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (221, N'Innovation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (222, N'Installation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (223, N'Integration')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (224, N'Intellectual curiosity')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (225, N'Interpersonal')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (226, N'Intuition')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (227, N'Investigation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (228, N'iOS platforms')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (229, N'ISO Speeds')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (230, N'Java')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (231, N'JavaScript')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (232, N'Job Descriptions')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (233, N'Job Postings')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (234, N'JS(JavaScript)')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (235, N'Judgment')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (236, N'Keratin Treatments')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (237, N'Labor Laws')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (238, N'Labor Relations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (239, N'Labor Specialization')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (240, N'Leadership')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (241, N'Lenses')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (242, N'Linux/Unix')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (243, N'Live Home 3D')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (244, N'Logical Thinking')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (245, N'Mail Processing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (246, N'Maintaining Schedules')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (247, N'Makeup')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (248, N'Manage Projects')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (249, N'Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (250, N'Managing Expectations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (251, N'Manicures')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (252, N'Meetings')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (253, N'Memory')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (254, N'Metrics')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (255, N'Microsoft ASP.NET MVC')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (256, N'Microsoft office')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (257, N'Model Making')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (258, N'Monetary Exchange')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (259, N'Multitasking')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (260, N'Nail Services')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (261, N'Nanotechnology')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (262, N'Negotiation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (263, N'Networking')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (264, N'New Hire Paperwork')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (265, N'Office Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (266, N'Onboarding')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (267, N'Ongoing Improvement')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (268, N'Open-minded')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (269, N'Operating Systems')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (270, N'Optimization')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (271, N'Ordering Supplies')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (272, N'Organization')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (273, N'Orientation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (274, N'Passion')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (275, N'Payroll')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (276, N'Pedicures')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (277, N'Performance Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (278, N'Perl')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (279, N'Personal Ethics')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (280, N'Persuasive')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (281, N'Photo Editing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (282, N'Photoshop')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (283, N'PHP')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (284, N'Picking Up on Patterns')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (285, N'Pitch Creation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (286, N'Pitch Delivery')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (287, N'Placement Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (288, N'Planning')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (289, N'Positive Attitude')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (290, N'Positivity')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (291, N'PowerPoint')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (292, N'Pointment Scheduling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (293, N'Pre-employment Screening')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (294, N'Presentation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (295, N'Presentation skills')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (296, N'Presentation Software')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (297, N'Preservation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (298, N'Printing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (299, N'Proactivity')
GO
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (300, N'Problem Sensitivity')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (301, N'Problem Solving')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (302, N'Process Analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (303, N'Process Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (304, N'Process Mapping/Modeling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (305, N'Product Enhancement')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (306, N'Pro-E CREO CAD software')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (307, N'Programming Languages')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (308, N'Project Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (309, N'Public Relations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (310, N'Public Speaking')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (311, N'Python')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (312, N'Quality Control')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (313, N'Quantitative analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (314, N'Quantitative/qualitative research')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (315, N'Quark')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (316, N'QuarkXpress')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (317, N'Recordkeeping')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (318, N'Recruiting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (319, N'Relationship Building')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (320, N'Reliability')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (321, N'Renovation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (322, N'Report writing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (323, N'Reporting')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (324, N'Research')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (325, N'Research Solutions')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (326, N'Residential Construction')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (327, N'Resizing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (328, N'Restoration')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (329, N'Retail Construction')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (330, N'Revit')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (331, N'Risk Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (332, N'Ruby')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (333, N'SaaS')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (334, N'Sales')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (335, N'SAS')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (336, N'Scalp Treatment')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (337, N'Scheduling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (338, N'Self-confidence')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (339, N'Self-direction')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (340, N'Self-motivation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (341, N'Service')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (342, N'Setting and Managing Expectations')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (343, N'Shell')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (344, N'Shooting Film')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (345, N'Six Sigma')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (346, N'Sketch')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (347, N'Slicing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (348, N'Soliciting Acquisitions')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (349, N'Sound judgment')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (350, N'Source Code')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (351, N'Specifications')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (352, N'SPS')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (353, N'SQL')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (354, N'SQL programming')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (355, N'Statistical analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (356, N'Statistics')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (357, N'Strategic planning')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (358, N'Stress Tolerance')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (359, N'Structural Analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (360, N'Styles and Trends')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (361, N'Styling')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (362, N'Survey design')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (363, N'Sustainable Design')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (364, N'System Design and Analysis')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (365, N'Taking Dictation')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (366, N'Taking Messages')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (367, N'Taking Notes')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (368, N'Taking Risks')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (369, N'Team Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (370, N'Teamwork')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (371, N'Technical integration')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (372, N'Technical Vision')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (373, N'Territory Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (374, N'Testing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (375, N'Time Management')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (376, N'Training')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (377, N'Travel Arrangements')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (378, N'Travel Planning')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (379, N'Trigonometry')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (380, N'Trustworthy')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (381, N'UI Toolkits and Frameworks')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (382, N'Understanding Data and Metrics')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (383, N'Updated Knowledge of Products')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (384, N'Validating functionality')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (385, N'Vectorworks')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (386, N'Verbal communication')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (387, N'Version Repository')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (388, N'Vision')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (389, N'Visualization')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (390, N'Waxing')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (391, N'Web API')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (392, N'Web Services')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (393, N'Welcome Visitors')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (394, N'Writing Reports')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (395, N'Written communication')
INSERT [dbo].[TblSkill] ([SkillId], [SkillName]) VALUES (396, N'Zoning Codes')
SET IDENTITY_INSERT [dbo].[TblSkill] OFF
GO
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (1, 69, N'BBA in Business Administration')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (2, 69, N'BBA in International Business')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (3, 69, N'BBA in Computer Application')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (4, 69, N' BBA in Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (5, 69, N' BBA in Entrepreneurship')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (6, 69, N' BBA in Hospitality')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (7, 69, N'BBA in Human Resources')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (8, 69, N' BBA in Information Systems')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (9, 69, N' BBA in Global Business')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (10, 69, N' BBA in Tourism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (11, 69, N' BBA in Human Resource Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (12, 69, N'BBA in Marketing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (13, 69, N' BBA in Sports Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (14, 69, N'BBA in Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (15, 69, N'BBA in Hospital & Healthcare ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (16, 69, N'BBA in Accounting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (17, 69, N' BBA in Supply Chain')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (18, 69, N'BBA in Retail')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (19, 70, N'Finance and Accounting.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (20, 70, N'Marketing.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (21, 70, N'Digital Marketing.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (22, 70, N'Business Analytics.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (23, 70, N'Human Resources.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (24, 70, N'IT & Systems.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (25, 70, N'Entrepreneurship.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (26, 70, N'Hospitality.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (27, 71, N'Painting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (28, 71, N'Plastic Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (29, 71, N'Textile Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (30, 71, N'Drama & Theatre')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (31, 71, N'Calligraphy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (32, 71, N'Dance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (33, 71, N'Illustration')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (34, 71, N'Printmaking')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (35, 71, N'Applied Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (36, 71, N'Pottery & Ceramics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (37, 71, N'Music')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (38, 71, N'Digital Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (39, 71, N'Cartooning')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (40, 71, N'Graphic Designing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (41, 71, N'Photography')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (42, 71, N'Sculpture')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (43, 72, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (44, 73, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (45, 74, N'CyberMedia')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (46, 74, N'Broadcast Journalism ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (47, 74, N'Tribal Study')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (48, 74, N'Fundamentals of Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (49, 74, N'Print Media ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (50, 74, N'Introduction to Advertising')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (51, 74, N'Convergent Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (52, 74, N'Media Law and Ethics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (53, 74, N'Radio Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (54, 74, N'Information Society')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (55, 74, N'Multimedia ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (56, 74, N'Public relations ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (57, 74, N'Television Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (58, 74, N'Narrative Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (59, 74, N'Media Research ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (60, 74, N'Public Relations Theory')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (61, 74, N'Design and Graphics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (62, 74, N'Types of Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (63, 74, N'Folk Media')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (64, 74, N'New Media')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (65, 74, N'Photojournalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (66, 75, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (67, 76, N'Substance Abuse and Mental Health.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (68, 76, N'Family and Children''s Social Work.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (69, 76, N'Social and Community Work.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (70, 76, N'Social Work in Schools.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (71, 76, N'Social Work in Criminal Justice.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (72, 77, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (73, 78, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (74, 79, N'Aviation Management.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (75, 79, N'Aviation and Logistics Management.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (76, 79, N'Aviation Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (77, 79, N'Aviation with Commercial Pilot Training.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (78, 79, N'Aviation and tourism.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (79, 79, N'Aviation Technology.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (80, 79, N'Aviation with Airline and Airport Management.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (81, 80, N'BSc Agriculture')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (82, 80, N'BSc Biotechnology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (83, 80, N'BSc Zoology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (84, 80, N'BSc Clinical Research & Healthcare Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (85, 80, N'BSc Forestry')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (86, 80, N'BSc Microbiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (87, 80, N'BSc Nursing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (88, 80, N'B.Sc. Physiotherapy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (89, 80, N'B.Sc. Radiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (90, 80, N'B.Sc. Bioinformatics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (91, 80, N'B.Sc. Physics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (92, 80, N'B.Sc. Chemistry')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (93, 80, N'B.Sc. Botany')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (94, 80, N'B.Sc. IT')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (95, 80, N'B.Sc. Computer Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (96, 81, N'Fashion Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (97, 81, N'Graphic Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (98, 81, N'Interior Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (99, 81, N'Product Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (100, 81, N'Textile Design.')
GO
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (101, 81, N'Industrial Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (102, 82, N'Actor.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (103, 82, N'Choreographer.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (104, 82, N'Music Therapist.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (105, 82, N'Broadcast Presenter.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (106, 82, N'Screenwriter.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (107, 82, N'Dance Teacher and.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (108, 82, N'Art Administrator.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (109, 83, N'BA Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (110, 83, N'BA Sociology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (111, 83, N'BA Sanskrit')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (112, 83, N'BA Gujrati')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (113, 83, N'BA Political Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (114, 83, N'BA Education')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (115, 83, N'BA Music Vocal')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (116, 83, N'BA Fine Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (117, 83, N'BA Film Studies')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (118, 83, N'BA Astrology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (119, 83, N'BA Social Work')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (120, 83, N'BA Tourism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (121, 83, N'BA Tamil')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (122, 83, N'BA Punjabi')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (123, 83, N'BA Fashion Designing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (124, 83, N'BA Acting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (125, 83, N'BA Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (126, 83, N'BA Geography')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (127, 83, N'BA History')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (128, 83, N'BA Persian')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (129, 83, N'BA French')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (130, 83, N'BA Sanskrit')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (131, 83, N'BA Drawing and Painting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (132, 83, N'BA Home Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (133, 83, N'BA Social Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (134, 83, N'BA Comparative Literature')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (135, 83, N'BA Media Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (136, 83, N'BA Urdu')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (137, 83, N'BA Telugu')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (138, 83, N'BA Rural Development')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (139, 83, N'BA Philosophy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (140, 83, N'BA Dance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (141, 83, N'BA Business Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (142, 83, N'BA Anthropology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (143, 84, N'B.Ed in Biology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (144, 84, N'B.Ed in Mathematics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (145, 84, N'B.Ed in Home Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (146, 84, N'B.Ed in Political Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (147, 84, N'B.Ed in Computer Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (148, 84, N'B.Ed in Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (149, 85, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (150, 86, N'Hotel & Catering Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (151, 86, N'Catering Technology & Tourism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (152, 86, N'Food Production')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (153, 86, N'House Keeping')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (154, 86, N'Hotel Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (155, 86, N'Travel And Tourism Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (156, 86, N'Room Division Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (157, 86, N'Accommodation Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (158, 87, N'Fashion Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (159, 87, N'Interior Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (160, 87, N'Textile Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (161, 87, N'Ceramic Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (162, 87, N'Accessory Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (163, 87, N'Game Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (164, 87, N'Leather Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (165, 87, N'Multimedia Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (166, 87, N'Jewellery & Metalsmithing.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (167, 87, N'Graphic Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (168, 87, N'Industrial Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (169, 87, N'Knitwear Design.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (170, 88, N'Online Psychology Courses.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (171, 88, N'Online Health Care Management Courses.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (172, 88, N'Online Ayurveda Courses.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (173, 88, N'Online Pathology Courses.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (174, 88, N'View all Online Health Fitness & Medicine Courses.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (175, 89, N'Electronics and communication Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (176, 89, N'Electrical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (177, 89, N'Mechanical engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (178, 89, N'Information Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (179, 89, N'Artificial intelligence')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (180, 89, N'Data Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (181, 89, N'Artificial intelligence and machine learning')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (182, 89, N'Agriculture Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (183, 89, N'Food technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (184, 89, N'B. Tech in Cyber security')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (185, 89, N'Information Science and engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (186, 89, N'Biomedical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (187, 89, N'Electronics and Instrumentation Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (188, 89, N'Mechatronics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (189, 89, N'Instrumentation and Control')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (190, 89, N'Mining Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (191, 89, N'Production engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (192, 89, N'Dairy technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (193, 89, N'Marine Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (194, 89, N'Big Data Analytics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (195, 89, N'Automation and Robotics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (196, 89, N'Petroleum Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (197, 89, N'Instrumentation Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (198, 89, N'Ceramic Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (199, 89, N'Chemical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (200, 89, N'Structural Engineering')
GO
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (201, 89, N'Transportation Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (202, 89, N'Construction Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (203, 89, N'Power Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (204, 89, N'Robotics Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (205, 89, N'Textile Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (206, 89, N'Smart Manufacturing & Automation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (207, 89, N'Aeronautical Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (208, 89, N'Automobile Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (209, 89, N'Civil Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (210, 89, N'Computer Science and Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (211, 89, N'Biotechnology Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (212, 89, N'Electrical and Electronics Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (213, 89, N'Automation and Robotics.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (214, 89, N'Petroleum Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (215, 89, N'Information technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (216, 90, N'Building Information Modeling')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (217, 90, N'Building Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (218, 90, N'Architectural Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (219, 90, N'Housing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (220, 90, N'Art and Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (221, 90, N'Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (222, 90, N'Community Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (223, 90, N'Computer-Aided Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (224, 90, N'Environment/sustainability')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (225, 90, N'Graphic Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (226, 91, N'Animation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (227, 91, N'Accounting Applications')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (228, 91, N'Internet Technologies')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (229, 91, N'Computer Graphics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (230, 91, N'Database Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (231, 91, N'Music and Video Processing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (232, 91, N'Programming Languages')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (233, 91, N'Personal Information Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (234, 91, N'Word Processing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (235, 91, N'Systems Analysis')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (236, 91, N'BCA Courses')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (237, 92, N'BCom Applied Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (238, 92, N'BCom Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (239, 92, N'BCom Marketing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (240, 92, N'BCom Accountancy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (241, 92, N'BCom Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (242, 92, N'BCom Accounting and Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (243, 92, N'BCom Banking and Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (244, 92, N'BCom Banking Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (245, 92, N'BCom Banking and Insurance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (246, 92, N'BCom Insurance Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (247, 92, N'BCom Tourism and Travel Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (248, 92, N'BCom Business Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (249, 92, N'BCom Business Administration')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (250, 92, N'BCom Computer Applications')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (251, 92, N'BCom Corporate Secretaryship')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (252, 92, N'BCom E-Commerce')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (253, 92, N'BCom Financial Markets')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (254, 92, N'BCom Financial Accounting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (255, 92, N'BCom Foreign Trade Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (256, 92, N'BCom Professional')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (257, 92, N'BCom Management Studies')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (258, 92, N'BCom Statistics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (259, 92, N'BCom Supply Chain Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (260, 92, N'BCom Tax Procedure and Practice')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (261, 92, N'BCom Taxation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (262, 92, N'BCom Capital Market')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (263, 92, N'BCom Computer Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (264, 92, N'BCom Accounting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (265, 93, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (266, 94, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (267, 95, N'Fashion Designer.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (268, 95, N'Graphic Designer.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (269, 95, N'Textile Designer.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (270, 95, N'Product Designer.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (271, 95, N'Industrial Designer')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (272, 96, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (273, 97, N'Diploma in Automobile Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (274, 97, N'Diploma in Agricultural Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (275, 97, N'Diploma in Architecture Assistantship')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (276, 97, N'Diploma in Biomedical Biotechnology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (277, 97, N'Diploma in Business Administration')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (278, 97, N'Diploma in Civil Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (279, 97, N'Diploma in Chemical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (280, 97, N'Diploma in Computer Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (281, 97, N'Diploma in Aeronautical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (282, 97, N'Diploma in Apparel Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (283, 97, N'Diploma in Ceramic Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (284, 97, N'Diploma in Electrical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (285, 97, N'Diploma in Electronics & Communication Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (286, 97, N'Diploma in Electrical & Telecommunication Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (287, 97, N'Diploma in Fashion Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (288, 97, N'Diploma in Leather Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (289, 97, N'Diploma in Garment Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (290, 97, N'Diploma in Handloom Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (291, 97, N'Diploma in Information Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (292, 97, N'Diploma in Interior Decoration')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (293, 97, N'Diploma in Instrumentation Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (294, 97, N'Diploma in Production & Industrial Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (295, 97, N'Diploma in Leather Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (296, 97, N'Diploma in Library and Information Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (297, 97, N'Diploma in Mechanical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (298, 97, N'Diploma in Mechatronics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (299, 97, N'Diploma in Marine Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (300, 97, N'Diploma in Mechanical Engineering')
GO
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (301, 97, N'Diploma in Hotel Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (302, 97, N'Diploma in Medical Lab Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (303, 97, N'Diploma in Web Designing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (304, 97, N'Diploma in Plastic Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (305, 97, N'Diploma in Textile Technology (Knitting/Weaving/Spinning)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (306, 97, N'Diploma in Textile Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (307, 97, N'Diploma in Textile Processing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (308, 97, N'Diploma in Electrical and Electronics Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (309, 97, N'Diploma in Electronics & Communication Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (310, 97, N'Diploma in Computer Science and Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (311, 98, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (312, 99, N'Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (313, 99, N'Marketing ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (314, 99, N'Human Resource Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (315, 99, N'International Business')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (316, 99, N'Rural Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (317, 99, N'Business Analytics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (318, 99, N'Supply Chain')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (319, 99, N'Agri Business Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (320, 99, N'Family Business and Health Care Management ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (321, 100, N'Painting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (322, 100, N'Plastic Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (323, 100, N'Textile Design')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (324, 100, N'Drama & Theatre')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (325, 100, N'Calligraphy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (326, 100, N'Dance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (327, 100, N'Illustration')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (328, 100, N'Printmaking')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (329, 100, N'Applied Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (330, 100, N'Pottery & Ceramics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (331, 100, N'Music')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (332, 100, N'Cartooning')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (333, 100, N'Graphic Designing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (334, 100, N'Photography')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (335, 100, N'Sculpture')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (336, 101, N'Global Journalism. ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (337, 101, N'Digital and Interactive-Media Journalism.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (338, 101, N'Public Relations and Advertising. ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (339, 101, N'Photojournalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (340, 102, N'Civil law.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (341, 102, N'Common law.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (342, 102, N'Customary law.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (343, 102, N'Religious law.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (344, 102, N'Mixed law.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (345, 103, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (346, 104, N'PGDM in Marketing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (347, 104, N'PGDM in Banking and Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (348, 104, N'PG Diploma in Human Resources')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (349, 104, N'PGDM in Operations and Supply Chain Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (350, 104, N'PG Diploma in Entrepreneurship Development')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (351, 104, N'PG Diploma in Hospital Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (352, 104, N'PG Diploma in Journalism & Mass Communication')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (353, 104, N'PG Diploma in NGO Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (354, 104, N'PG Diploma in Personnel Management & Industrial Relations')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (355, 104, N'PG Diploma in Public Relations Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (356, 104, N'PG Diploma in International Business Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (357, 104, N'PG Diploma in Indian Stock Market')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (358, 104, N'PG Diploma in Retail Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (359, 104, N'PG Diploma in Systems Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (360, 104, N'PG Diploma in Psychological Counselling')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (361, 104, N'PG Diploma in Guidance and Counselling')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (362, 104, N'PG Diploma in Women’s Studies')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (363, 104, N'PG Diploma in Human Rights')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (364, 104, N'PG Diploma in Immuno techniques')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (365, 104, N'PG Diploma in Environmental Health & Hygiene')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (366, 104, N'PG Diploma in Environmental Molecular Diagnostics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (367, 104, N'PG Diploma in Industrial Microbiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (368, 104, N'PG Diploma in Actuarial Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (369, 104, N'PG Diploma in Industrial and Company Law')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (370, 104, N'PG Diploma in English Language Teaching')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (371, 104, N'Post-B.Ed. Diploma in School Administration (P.B.Ed.D.S.A.)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (372, 104, N'PG Diploma in Criminology and Police Administration')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (373, 104, N'PG Diploma in Advertising & Public Relations')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (374, 104, N'PG Diploma in Bio-statistics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (375, 104, N'PG Diploma in Multimedia Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (376, 104, N'PG Diploma in Cyber Security')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (377, 105, N'Physics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (378, 105, N'Chemistry')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (379, 105, N'Mathematics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (380, 105, N'Biology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (381, 105, N'Computer Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (382, 105, N'Environmental Sciences')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (383, 105, N'Biotechnology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (384, 105, N'Microbiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (385, 105, N'Statistics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (386, 105, N'Life Sciences')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (387, 105, N'Food Sciences')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (388, 106, N'Electronics and communication Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (389, 106, N'Electrical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (390, 106, N'Mechanical engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (391, 106, N'Information Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (392, 106, N'Artificial intelligence')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (393, 106, N'Data Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (394, 106, N'Artificial intelligence and machine learning')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (395, 106, N'Agriculture Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (396, 106, N'Food technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (397, 106, N'B. Tech in Cyber security')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (398, 106, N'Information Science and engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (399, 106, N'Biomedical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (400, 106, N'Electronics and Instrumentation Engineering')
GO
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (401, 106, N'Mechatronics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (402, 106, N'Instrumentation and Control')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (403, 106, N'Mining Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (404, 106, N'Production engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (405, 106, N'Dairy technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (406, 106, N'Marine Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (407, 106, N'Big Data Analytics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (408, 106, N'Automation and Robotics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (409, 106, N'Petroleum Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (410, 106, N'Instrumentation Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (411, 106, N'Ceramic Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (412, 106, N'Chemical Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (413, 106, N'Structural Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (414, 106, N'Transportation Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (415, 106, N'Construction Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (416, 106, N'Power Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (417, 106, N'Robotics Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (418, 106, N'Textile Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (419, 106, N'Smart Manufacturing & Automation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (420, 106, N'Aeronautical Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (421, 106, N'Automobile Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (422, 106, N'Civil Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (423, 106, N'Computer Science and Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (424, 106, N'Biotechnology Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (425, 106, N'Electrical and Electronics Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (426, 106, N'Automation and Robotics.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (427, 106, N'Petroleum Engineering.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (428, 106, N'Information technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (429, 107, N'Systems Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (430, 107, N'Management Information Systems (MIS)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (431, 107, N'Systems Development')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (432, 107, N'Systems Engineering')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (433, 107, N'Networking')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (434, 107, N'Internet')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (435, 107, N'Application Software')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (436, 107, N'Software Development')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (437, 107, N'Troubleshooting')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (438, 107, N'Hardware Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (439, 108, N'Artificial Intelligence.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (440, 108, N'Biocomputation.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (441, 108, N'Computer and Network Security.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (442, 108, N'Human-Computer Interaction.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (443, 108, N'Information Management and Analytics.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (444, 108, N'Real-World Computing.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (445, 108, N'Software Theory.')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (446, 109, N'MCom (Accounting & Finance)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (447, 109, N'MCom (Banking / Finance)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (448, 109, N'MCom (Business Management)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (449, 109, N'MCom (Business Policy and Corporate governance)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (450, 109, N'MCom (Computer Application / IT)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (451, 109, N'MCom (E-Commerce)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (452, 109, N'MCom (Economics)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (453, 109, N'MCom (Finance & Control)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (454, 109, N'MCom (Marketing)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (455, 109, N'MCom (Taxation)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (456, 109, N'MCom (Mathematics/Statistics)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (457, 109, N'MCom (International Business)')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (458, 109, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (459, 110, N'Other')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (460, 111, N'Advertising/MassCommunication')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (461, 111, N'Agriculture ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (462, 111, N'Anthropology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (463, 111, N'Architecture')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (464, 111, N'Arts&Humanities')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (465, 111, N'Automobile')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (466, 111, N'Aviation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (467, 111, N'Bio-Chemistry/Bio-Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (468, 111, N'Biomedical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (469, 111, N'Biotechnology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (470, 111, N'Ceramics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (471, 111, N'Chemical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (472, 111, N'Chemistry')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (473, 111, N'Civil')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (474, 111, N'Commerce')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (475, 111, N'Communication')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (476, 111, N'Computers')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (477, 111, N'Dairy Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (478, 111, N'Dermatology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (479, 111, N'Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (480, 111, N'Electrical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (481, 111, N'Electronics/Telecommunication')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (482, 111, N'Energy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (483, 111, N'ENT')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (484, 111, N'Environmental')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (485, 111, N'Fashion Designing/Other Designing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (486, 111, N'Film')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (487, 111, N'Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (488, 111, N'Fine Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (489, 111, N'Food Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (490, 111, N'Hotel Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (491, 111, N'History')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (492, 111, N'HR/Industrial Relations')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (493, 111, N'Immunology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (494, 111, N'International Business')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (495, 111, N'Instrumentation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (496, 111, N'Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (497, 111, N'Law')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (498, 111, N'Literature')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (499, 111, N'Marine')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (500, 111, N'Marketing')
GO
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (501, 111, N'Maths')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (502, 111, N'Mechanical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (503, 111, N'Medicine')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (504, 111, N'Metallurgy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (505, 111, N'Microbiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (506, 111, N'Mining')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (507, 111, N'Neonatal')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (508, 111, N'Nuclear')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (509, 111, N'Obstetrics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (510, 111, N'Pathology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (511, 111, N'Petroleum')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (512, 111, N'Pediatrics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (513, 111, N'Pharmacy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (514, 111, N'Physics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (515, 111, N'Plastics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (516, 111, N'Production/Industrial')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (517, 111, N'Psychiatry')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (518, 111, N'Psychology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (519, 111, N'Radiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (520, 111, N'Rheumatology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (521, 111, N'Sanskrit')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (522, 111, N'Sociology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (523, 111, N'Statistics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (524, 111, N'Systems')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (525, 111, N'Textile')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (526, 111, N'Vocational Courses')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (527, 111, N'Nursing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (528, 111, N'Linguistics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (529, 111, N'Political Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (530, 111, N'Home Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (531, 111, N'Special Education')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (532, 111, N'Education')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (533, 111, N'Music')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (534, 111, N'Botany')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (535, 111, N'Philosophy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (536, 111, N'Zoology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (537, 111, N'Physical Education')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (538, 111, N'Genetics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (539, 111, N'Astophysics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (540, 111, N'Biophysics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (541, 111, N'Other Specialization')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (542, 112, N'Advertising/MassCommunication')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (543, 112, N'Agriculture ')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (544, 112, N'Anthropology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (545, 112, N'Architecture')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (546, 112, N'Arts&Humanities')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (547, 112, N'Automobile')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (548, 112, N'Aviation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (549, 112, N'Bio-Chemistry/Bio-Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (550, 112, N'Biomedical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (551, 112, N'Biotechnology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (552, 112, N'Ceramics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (553, 112, N'Chemical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (554, 112, N'Chemistry')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (555, 112, N'Civil')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (556, 112, N'Commerce')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (557, 112, N'Communication')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (558, 112, N'Computers')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (559, 112, N'Dairy Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (560, 112, N'Dermatology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (561, 112, N'Economics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (562, 112, N'Electrical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (563, 112, N'Electronics/Telecommunication')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (564, 112, N'Energy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (565, 112, N'ENT')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (566, 112, N'Environmental')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (567, 112, N'Fashion Designing/Other Designing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (568, 112, N'Film')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (569, 112, N'Finance')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (570, 112, N'Fine Arts')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (571, 112, N'Food Technology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (572, 112, N'Hotel Management')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (573, 112, N'History')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (574, 112, N'HR/Industrial Relations')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (575, 112, N'Immunology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (576, 112, N'International Business')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (577, 112, N'Instrumentation')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (578, 112, N'Journalism')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (579, 112, N'Law')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (580, 112, N'Literature')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (581, 112, N'Marine')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (582, 112, N'Marketing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (583, 112, N'Maths')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (584, 112, N'Mechanical')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (585, 112, N'Medicine')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (586, 112, N'Metallurgy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (587, 112, N'Microbiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (588, 112, N'Mining')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (589, 112, N'Neonatal')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (590, 112, N'Nuclear')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (591, 112, N'Obstetrics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (592, 112, N'Pathology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (593, 112, N'Petroleum')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (594, 112, N'Pediatrics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (595, 112, N'Pharmacy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (596, 112, N'Physics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (597, 112, N'Plastics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (598, 112, N'Production/Industrial')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (599, 112, N'Psychiatry')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (600, 112, N'Psychology')
GO
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (601, 112, N'Radiology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (602, 112, N'Rheumatology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (603, 112, N'Sanskrit')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (604, 112, N'Sociology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (605, 112, N'Statistics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (606, 112, N'Systems')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (607, 112, N'Textile')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (608, 112, N'Vocational Courses')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (609, 112, N'Nursing')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (610, 112, N'Linguistics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (611, 112, N'Political Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (612, 112, N'Home Science')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (613, 112, N'Special Education')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (614, 112, N'Education')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (615, 112, N'Music')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (616, 112, N'Botany')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (617, 112, N'Philosophy')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (618, 112, N'Zoology')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (619, 112, N'Physical Education')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (620, 112, N'Genetics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (621, 112, N'Astophysics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (622, 112, N'Biophysics')
INSERT [dbo].[TblSpecialization] ([SpecializationId], [DegreeId], [Specialization]) VALUES (623, 112, N'Other Specialization')
GO
SET IDENTITY_INSERT [dbo].[tblState] ON 

INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (1, 1, N'Andra Pradesh')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (2, 1, N'Arunachal Pradesh')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (3, 1, N'Assam')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (4, 1, N'Bihar')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (5, 1, N'Chhatisgarh')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (6, 1, N'Goa')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (7, 1, N'Gujrat')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (8, 1, N'Haryana')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (9, 1, N'Himachal Pradesh')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (10, 1, N'Jharkhand')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (11, 1, N'Karnataka')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (12, 1, N'Kerla')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (13, 1, N'Madhya Pradesh')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (14, 1, N'Maharashtra')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (15, 1, N'Manipur')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (16, 1, N'Meghalaya')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (17, 1, N'Mizoram')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (18, 1, N'Nagaland')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (19, 1, N'Odisa')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (20, 1, N'Punjab')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (21, 1, N'Rajastan')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (22, 1, N'Sikkim')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (23, 1, N'Tamil Nadu')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (24, 1, N'Telangana')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (25, 1, N'Tripura')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (26, 1, N'Uttar Pradesh')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (27, 1, N'Uttarakhand')
INSERT [dbo].[tblState] ([StateId], [CountryId], [StateName]) VALUES (28, 1, N'West Bengal')
SET IDENTITY_INSERT [dbo].[tblState] OFF
GO
SET IDENTITY_INSERT [dbo].[TblStatus] ON 

INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (1, N'Active')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (2, N'Inactive')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (3, N'Hold')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (4, N'Pending')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (5, N'Completed')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (6, N'Incompleted')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (7, N'Paid')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (8, N'Unpaid')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (9, N'Approve')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (10, N'Rejected')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (11, N'Hire')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (12, N'R1 Cleared')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (13, N'R2 Cleared')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (14, N'R3 Cleared')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (15, N'R4 Cleared')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (16, N'R5 Cleared')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (17, N'Rejected at R1')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (18, N'Rejected at R2')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (19, N'Rejected at R3')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (20, N'Rejected at R4')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (21, N'Rejected at R5')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (22, N'Applied')
INSERT [dbo].[TblStatus] ([StatusId], [Status]) VALUES (23, N'ShortListed For R1')
SET IDENTITY_INSERT [dbo].[TblStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSubscription] ON 

INSERT [dbo].[TblSubscription] ([SubscriptionId], [SubscriptionName], [UserCategory], [Benefits], [SubscriptionDetails], [SubscriptionDuration], [PlanPricing], [IsOffer], [Offer], [OfferedPrice]) VALUES (1, N'Premium Plan', N'Employer', N'1,2,3', N'XYZ', N'3 Months', 5000, N'yes', 10, 4500)
INSERT [dbo].[TblSubscription] ([SubscriptionId], [SubscriptionName], [UserCategory], [Benefits], [SubscriptionDetails], [SubscriptionDuration], [PlanPricing], [IsOffer], [Offer], [OfferedPrice]) VALUES (2, N'Platinum Plan', N'JobSeeker', N'4,5,6', N'XYZ', N'3 Months', 5000, N'yes', 10, 4500)
INSERT [dbo].[TblSubscription] ([SubscriptionId], [SubscriptionName], [UserCategory], [Benefits], [SubscriptionDetails], [SubscriptionDuration], [PlanPricing], [IsOffer], [Offer], [OfferedPrice]) VALUES (3, N'Platinum Plan', N'Employer', N'1,2,3', N'XYZ', N'3 Months', 5000, N'yes', 10, 4500)
INSERT [dbo].[TblSubscription] ([SubscriptionId], [SubscriptionName], [UserCategory], [Benefits], [SubscriptionDetails], [SubscriptionDuration], [PlanPricing], [IsOffer], [Offer], [OfferedPrice]) VALUES (4, N'Premium Plan', N'JobSeeker', N'4,5,6', N'XYZ', N'3 Months', 5000, N'yes', 10, 4500)
SET IDENTITY_INSERT [dbo].[TblSubscription] OFF
GO
ALTER TABLE [dbo].[tblCity]  WITH CHECK ADD  CONSTRAINT [FK_tblCity_tblState] FOREIGN KEY([StateId])
REFERENCES [dbo].[tblState] ([StateId])
GO
ALTER TABLE [dbo].[tblCity] CHECK CONSTRAINT [FK_tblCity_tblState]
GO
ALTER TABLE [dbo].[TblCompanyDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblCompanyDetails_TblIndustry] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[TblIndustry] ([IndustryId])
GO
ALTER TABLE [dbo].[TblCompanyDetails] CHECK CONSTRAINT [FK_TblCompanyDetails_TblIndustry]
GO
ALTER TABLE [dbo].[TblDegree]  WITH CHECK ADD  CONSTRAINT [FK_TblDegree_TblQualification] FOREIGN KEY([QualificationId])
REFERENCES [dbo].[TblQualification] ([QualificationId])
GO
ALTER TABLE [dbo].[TblDegree] CHECK CONSTRAINT [FK_TblDegree_TblQualification]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblDegree] FOREIGN KEY([SSCBoard])
REFERENCES [dbo].[TblDegree] ([DegreeID])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblDegree]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblDegree1] FOREIGN KEY([HSCBoard])
REFERENCES [dbo].[TblDegree] ([DegreeID])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblDegree1]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblDegree2] FOREIGN KEY([UGDegree])
REFERENCES [dbo].[TblDegree] ([DegreeID])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblDegree2]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblQualification] FOREIGN KEY([SSC])
REFERENCES [dbo].[TblQualification] ([QualificationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblQualification]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblQualification1] FOREIGN KEY([HSC])
REFERENCES [dbo].[TblQualification] ([QualificationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblQualification1]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblQualification2] FOREIGN KEY([UG])
REFERENCES [dbo].[TblQualification] ([QualificationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblQualification2]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblQualification3] FOREIGN KEY([Graduation])
REFERENCES [dbo].[TblQualification] ([QualificationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblQualification3]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblQualification4] FOREIGN KEY([PG])
REFERENCES [dbo].[TblQualification] ([QualificationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblQualification4]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblSpecialization] FOREIGN KEY([UGSpecialization])
REFERENCES [dbo].[TblSpecialization] ([SpecializationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblSpecialization]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblSpecialization1] FOREIGN KEY([GraduationSpecialization])
REFERENCES [dbo].[TblSpecialization] ([SpecializationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblSpecialization1]
GO
ALTER TABLE [dbo].[TblEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblEducationDetails_TblSpecialization2] FOREIGN KEY([PGSpecialization])
REFERENCES [dbo].[TblSpecialization] ([SpecializationId])
GO
ALTER TABLE [dbo].[TblEducationDetails] CHECK CONSTRAINT [FK_TblEducationDetails_TblSpecialization2]
GO
ALTER TABLE [dbo].[TblInterview]  WITH CHECK ADD  CONSTRAINT [FK_TblInterview_TblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[TblStatus] ([StatusId])
GO
ALTER TABLE [dbo].[TblInterview] CHECK CONSTRAINT [FK_TblInterview_TblStatus]
GO
ALTER TABLE [dbo].[TblJobCategory]  WITH CHECK ADD  CONSTRAINT [FK_TblJobCategory_TblIndustry] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[TblIndustry] ([IndustryId])
GO
ALTER TABLE [dbo].[TblJobCategory] CHECK CONSTRAINT [FK_TblJobCategory_TblIndustry]
GO
ALTER TABLE [dbo].[TblJobRegistration]  WITH CHECK ADD  CONSTRAINT [FK_TblJobRegistration_TblJobCategory] FOREIGN KEY([JobCategoryId])
REFERENCES [dbo].[TblJobCategory] ([JobCategoryId])
GO
ALTER TABLE [dbo].[TblJobRegistration] CHECK CONSTRAINT [FK_TblJobRegistration_TblJobCategory]
GO
ALTER TABLE [dbo].[TblJobRegistration]  WITH CHECK ADD  CONSTRAINT [FK_TblJobRegistration_TblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[TblStatus] ([StatusId])
GO
ALTER TABLE [dbo].[TblJobRegistration] CHECK CONSTRAINT [FK_TblJobRegistration_TblStatus]
GO
ALTER TABLE [dbo].[TblJobSeekerDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblJobSeekerDetails_tblCity] FOREIGN KEY([CityId])
REFERENCES [dbo].[tblCity] ([CityId])
GO
ALTER TABLE [dbo].[TblJobSeekerDetails] CHECK CONSTRAINT [FK_TblJobSeekerDetails_tblCity]
GO
ALTER TABLE [dbo].[TblJobSeekerDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblJobSeekerDetails_TblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[TblStatus] ([StatusId])
GO
ALTER TABLE [dbo].[TblJobSeekerDetails] CHECK CONSTRAINT [FK_TblJobSeekerDetails_TblStatus]
GO
ALTER TABLE [dbo].[tblPayment]  WITH CHECK ADD  CONSTRAINT [FK_tblPayment_tblPlan] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[tblPlan] ([PlanId])
GO
ALTER TABLE [dbo].[tblPayment] CHECK CONSTRAINT [FK_tblPayment_tblPlan]
GO
ALTER TABLE [dbo].[TblSpecialization]  WITH CHECK ADD  CONSTRAINT [FK_TblSpecialization_TblDegree] FOREIGN KEY([DegreeId])
REFERENCES [dbo].[TblDegree] ([DegreeID])
GO
ALTER TABLE [dbo].[TblSpecialization] CHECK CONSTRAINT [FK_TblSpecialization_TblDegree]
GO
ALTER TABLE [dbo].[tblState]  WITH CHECK ADD  CONSTRAINT [FK_tblState_tblCountry1] FOREIGN KEY([CountryId])
REFERENCES [dbo].[tblCountry] ([CountryId])
GO
ALTER TABLE [dbo].[tblState] CHECK CONSTRAINT [FK_tblState_tblCountry1]
GO
/****** Object:  StoredProcedure [dbo].[Employeer]    Script Date: 29-05-2023 19:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Employeer]
(
@EmployeerID int = null,
@EmployeerCode nvarchar(50) = null,
@EmployerName	Nvarchar(250) = null,
@EmailId nvarchar(250) = null,
@ContactNo bigint = null,
@Password nvarchar(20) = null,
@isDelete bit = null,
@CompanyId int = null,
@CompanyName nvarchar(max) = null,
@NoOfEmployees nvarchar(50) = null,
@CompanyWebsite	nvarchar(50) = null,
@AboutCompany nvarchar(1000) = null,
@CityId	int = null,
@Pincode int = null,
@CompanyLogo nvarchar(max) = null,
@Portfolio nvarchar(max) = null,
@Slogan	nvarchar(50) = null,
@Facebook nvarchar(100) = null,
@Twitter nvarchar(100) = null,
@LinkedIn nvarchar(100) = null,
@Instagram nvarchar(100) = null,
@Google	nvarchar(100) = null,
@OwnerName	nvarchar(250) = null,
@HRName	nvarchar(max) = null,
@HRNumber nvarchar(max) = null,
@HREmail nvarchar(max) = null,
@Source	nvarchar(50) = null,
@RegistrationDate date = null,
@IndustryId	int = null,
@IndustryName nvarchar(100) = null,
@PostJobId int = null,
@PostJobCode nvarchar(50) = null,
@OpportunityType nvarchar(20) = null,
@JobTitle nvarchar(max) = null,
@JobCategoryId	int = null,
@JobDescription	nvarchar(max) = null,
@JobLocation nvarchar(20) = null,
@Address nvarchar(max) = null,
@JobType nvarchar(50) = null,
@RequireQualificationId	nvarchar(20) = null,
@RequireQualification nvarchar(50) = null,
@WorkingShifts nvarchar(50) = null,
@SalaryType	nvarchar(50) = null,
@SalaryRange nvarchar(200) = null,
@Salary	nvarchar(50) = null,
@JobBenefits nvarchar(200) = null,
@CollectResume bit = null,
@TotalExperience nvarchar(50) = null,
@ExpectedJoiningDate date = null,
@ApplicationStartDate date = null,
@ApplicationEndDate date = null,
@StatusId int = null,
@ApprovalDate date = null,
@RejectionReason nvarchar(100) = null,
@AppliedJobId nvarchar(max) = null,
@Seekercode nvarchar(50) = null,
@AppliedDate date = null,
@ResumePDF nvarchar(max) = null,
@InterviewId int = null,
@StartTime time(7) = null,
@EndTime time(7) = null,
@InterviewAddress nvarchar(max) = null,
@InterviewType nvarchar(50)=null,
@Comment nvarchar(500) = null,
@RoundName nvarchar(50) = null,
@RoundId int = null,
@JobCatagoryId int = null,
@JobCatagory nvarchar(100) = null,
@ShareId int = null,
@Share nvarchar(100) = null,
@ContactPerson nvarchar(50)=null,
@NoofOpenings nvarchar(50)=null,
@CompanyEmail nvarchar(250)=null,
@QualificationId int =null,
@DegreeId int = null,
@DOB date = null,
@SeekerName nvarchar(250)=null,
@AlternateContactNo int = null,
@Gender nvarchar(10)=null,
@CurrespondenceAddress nvarchar(max)=null,
@LanguageId nvarchar(20)=null,
@PhysicallyChallenged bit =null,
@CastCategory nvarchar(50)=null,
@MarriatalStatus nvarchar(10)=null,
@ProfileSummary nvarchar(max)=null,
@ProfileIMG nvarchar(max)=null,
@SSC int = null,
@SSCBoard int =null,
@HSC int = null,
@HSCBoard int = null,
@UG int = null,
@UGDegree Int = null,
@UGSpecialization int = null,
@UGUnivercity nvarchar(250) = null,
@Graduation int = null,
@GraduationDegree int = null,
@GraduationSpecialization int =null,
@GraduationUnivercity nvarchar(250) = null,
@PG int = null,
@PGDegree int = null,
@PGSpecialization int =null,
@PGUnivercity nvarchar(250) = null,
@SSCPassingYear int = null,
@SSCMarks int = null,
@HSCPassingYear int = null,
@HSCMarks int = null,
@UGPassingYear int = null,
@UGMarks int = null,
@GraduationPassingYear int = null,
@GraduationMarks int = null,
@PGPassingYear int = null,
@PGMarks int = null,
@UGCourseType nvarchar(20)=null,
@GCourseType nvarchar(20)=null,
@PGCourseType nvarchar(20)=null,
@Date date=null,
@applyjoblist nvarchar(max)= null,
@BenefitId int = null,
@SubscriptionId int = null,
@PaymentMode nvarchar(50)=null,
@transactionId nvarchar(50)=null,
@PaymentDate date = null,
@GSTNo bigint = null,
@SubcriptionDate date = null,
@flag nvarchar(50) = null
)
as
begin
if(@flag='JobRegister')
begin
insert into TblJobRegistration values(@PostJobCode,@CompanyId,@ContactPerson,@OpportunityType,@JobTitle,@JobCategoryId,@JobDescription,@CityId,@Address,@JobType,@RequireQualificationId,@NoofOpenings,@WorkingShifts,@SalaryType,@SalaryRange,@Salary,@JobBenefits,@CollectResume,@TotalExperience,@ExpectedJoiningDate,@ApplicationStartDate,@ApplicationEndDate,4,@ApprovalDate,@RejectionReason,@isDelete)
end
if(@flag='JobCategory')
begin
select jc.JobCategoryId, jc.JobCategory from TblCompanyDetails as cd
inner join TblIndustry as i on i.IndustryId = cd.IndustryId
inner join TblJobCategory as jc on jc.IndustryId = i.IndustryId where cd.CompanyId =@CompanyId
end
if(@flag = 'JobLocation')
begin
select c.CityId, concat(c.CityName,',',s.StateName,',',a.CountryName) as location from tblCity as c 
inner join tblState as s on s.StateId = c.StateId
inner join tblCountry as a on a.CountryId = s.CountryId
end
if(@flag='QualificationRequired')
begin
select * from TblRequireQualification 
end
if(@flag='JobBenefits')
begin
select * from TblJobBenifits
end
if(@flag='Company')
begin
select CompanyId,CompanyName from TblCompanyDetails where EmployerCode=@EmployeerCode
--select cd.CompanyId,cd.CompanyName from TblEmployerReg as em 
--inner join TblCompanyDetails as cd on cd.EmployerCode = em.EmployerCode
end
if(@flag='PostJobCode')
begin
select MAX(PostJobId)  as PostJobId from TblJobRegistration
end
if(@flag='MyJobGrid')
begin
select jr.JobTitle,count(PostJobId) as [Applications],jr.JobLocation,jr.ApplicationEndDate as [Closing Date],jr.StatusId from tblJobRegistration as jr
left outer join TblApplyJobs as aj on aj.PostJobCode=jr.PostJobCode group by jr.PostJobCode,jr.JobTitle,jr.JobLocation,jr.ApplicationEndDate,jr.StatusId
end
if(@flag='JobDetails')
begin
select cd.CompanyLogo,jr.CompanyId,cd.CompanyName,jc.JobCategory,jr.ContactPerson,jr.OpportunityType,jr.JobTitle,jr.JobDescription,jr.Address,jr.JobType,jr.JobBenefits,jr.RequiredQualificationId,jr.NoofOpenings,jr.WorkingShifts,jr.Salary,jr.SalaryType,jr.SalaryRange,jr.TotalExperience,jr.ExpectedJoiningDate,jr.ApplicationEndDate from TblJobRegistration as jr
inner join TblCompanyDetails as cd on cd.CompanyId=jr.CompanyId
inner join TblJobCategory as jc on jc.JobCategoryId=jr.JobCategoryId where jr.PostJobCode=@PostJobCode 
end
--------Muskan Start--------
if(@flag = 'LoginEmployer')
begin
select * from TblEmployerReg where EmailId=@EmailId and Password=@Password
end
---------Kartik Start--------
if(@flag = 'GetCompanyDetail')
begin
select * from TblCompanyDetails where CompanyId=@CompanyId
end


if(@flag = 'KTUpdateCompanyDetails')
begin
update TblCompanyDetails set CompanyName=@CompanyName,NoOfEmployees=@NoOfEmployees,ContactNo=@ContactNo,CompanyWebsite=@CompanyWebsite,
CompanyEmail=@CompanyEmail,AboutCompany=@AboutCompany,IndustryId=@IndustryId,CityId=@CityId,Pincode=@Pincode,CompanyLogo=@CompanyLogo,
Portfolio=@Portfolio,Slogan=@Slogan,Facebook=@Facebook,Twitter=@Twitter,LinkedIn=@LinkedIn,Instagram=@Instagram,[Google+]=@Google,
OwnerName=@OwnerName,HRName=@HRName,HRNumber=@HRNumber,HREmail=@HREmail,Source=@Source where CompanyId=@CompanyId
end


if(@flag='KTDeleteCompany')
begin
update TblCompanyDetails set isDelete=1 where CompanyId=@CompanyId
end



if(@Flag='KTCompanyRegisteration')
begin
insert into TblCompanyDetails values (@EmployeerCode,@CompanyName,@NoOfEmployees,@ContactNo,@CompanyWebsite,
@CompanyEmail,@AboutCompany,@IndustryId,@CityId,@Pincode,@CompanyLogo,@Portfolio,@Slogan,@Facebook,@Twitter,
@LinkedIn,@Instagram,@Google,@OwnerName,@HRName,@HRNumber,@HREmail,@Source,@RegistrationDate,@isDelete)
end

if(@Flag ='KTCompanyCategoryBind')
begin
select * from TblIndustry 
end

if(@Flag = 'Locationbind')
begin
select c.CityId,concat(c.CityName,',',s.StateName,',',a.CountryName) as Location from tblCity as c
inner join tblState as s on s.StateId=c.StateId
inner join tblCountry as a on a.CountryId = s.CountryId
end
if(@Flag='EditJob')
begin
update TblJobRegistration set ContactPerson=@ContactPerson,OpportunityType=@OpportunityType,JobTitle=@JobTitle,JobDescription=@JobDescription,JobLocation=@JobLocation,Address=@Address,JobType=@JobType,RequiredQualificationId=@RequireQualificationId,NoofOpenings=@NoofOpenings,WorkingShifts=@WorkingShifts,SalaryType=@SalaryType,SalaryRange=@SalaryRange,Salary=@Salary,JobBenefits=@JobBenefits,CollectResume=@CollectResume,TotalExperience=@TotalExperience,ExpectedJoiningDate=@ExpectedJoiningDate,ApplicationStartDate=@ApplicationStartDate,ApplicationEndDate=@ApplicationEndDate,StatusId=@StatusId,ApprovalDate=@ApprovalDate,RejectionReason= @RejectionReason
where PostJobCode=@PostJobCode
end
if(@flag='KTCompanyDeatilsGV')
begin
select CompanyId, CompanyName, ContactNo, CompanyWebsite,CompanyEmail,AboutCompany,HRName,HREmail,HRNumber
from TblCompanyDetails where EmployerCode = @EmployeerCode 
end
----------Mahesh Start-----------------
if(@flag='Getcategoryvspostjobcount')
begin
select count(PostJobCode)as PostJob,jp.JobCategory from TblJobRegistration as j
inner join TblCompanyDetails c on c.CompanyId=j.CompanyId
inner join TblJobCategory as jp on jp.JobCategoryId=j.JobCategoryId
where c.EmployerCode=@EmployeerCode group by jp.JobCategory 
end
if(@flag='getjobgrid')
begin
select a.PostJobCode,a.JobTitle,a.Address,b.Status,c.CompanyName,count (app.JobSeekerCode)as ApplicationReceived 
from TblJobRegistration as a
inner join TblStatus as b on a.StatusId=b.StatusId
inner join TblCompanyDetails c on c.CompanyId=a.CompanyId
left join TblApplyJobs as app on app.PostJobCode=a.PostJobCode where c.EmployerCode=@EmployeerCode and a.StatusId=9
group by a.PostJobCode,a.JobTitle,a.Address,b.Status, c.CompanyName
end
begin
if(@flag='applyjobstud')
select a.PostJobCode,a.JobSeekerCode,a.AppliedJobID,b.SeekerName,a.ResumePDF,a.AppliedDate,c.Status from TblApplyJobs as a  inner join
TblJobSeekerDetails as b on a.JobSeekerCode=b.SeekerCode
inner join TblStatus as c on c.StatusId= a.StatusId
where PostJobCode=@PostJobCode 
end
begin
if(@flag='getstatusaprove')
update TblApplyJobs set StatusID=@StatusId where AppliedJobID=@AppliedJobId
end
begin
if(@flag='getactivecount')
select count (b.StatusId) as Active  from TblApplyJobs a inner join TblJobSeekerDetails as b on a.JobSeekerCode=b.SeekerCode
where PostJobCode=@PostJobCode 
end
begin
if(@flag='getawaitingreviewcount')
select count (StatusID) as AwaitingReview from TblApplyJobs 
where PostJobCode=@PostJobCode  and StatusID=1018
end
begin
if(@flag='getreviewcount')
select count (StatusID) as Review from TblApplyJobs 
where PostJobCode=@PostJobCode  and StatusID=9
end
begin
if(@flag='getcontactingcount')
select count (StatusID) as contacting from TblApplyJobs 
where PostJobCode=@PostJobCode  and StatusID=1019
end
begin
if(@flag='gethirecount')
select count (StatusID) as hire from TblApplyJobs 
where PostJobCode=@PostJobCode  and StatusID=11
end
begin
if(@flag='getrejectcount')
select count (StatusID) as rejected from TblApplyJobs 
where PostJobCode=@PostJobCode  and StatusID=10
end
begin
if(@flag='getstatus')
select s.Status from TblApplyJobs a inner join TblStatus s on s.StatusId=a.StatusID
where PostJobCode=@PostJobCode  and AppliedJobID=@AppliedJobId
end
begin
if(@flag='JobDetail')
select c.CityName,rq.RequireQualification, jr.CompanyId,cd.CompanyName,jc.JobCategory,jr.ContactPerson,jr.OpportunityType,
jr.JobTitle,jr.JobDescription,jr.Address,jr.JobType,jr.NoofOpenings,jr.WorkingShifts,jr.JobCategoryId,
jr.Salary,jr.TotalExperience,jr.ExpectedJoiningDate,jr.ApplicationEndDate,jr.RequiredQualificationId , jr.JobType
from TblJobRegistration as jr 
inner join TblCompanyDetails as cd on cd.CompanyId=jr.CompanyId
inner join TblJobCategory as jc on jc.JobCategoryId=jr.JobCategoryId 
inner join TblRequireQualification as rq on rq.RequireQualificationId=jr.RequiredQualificationId
left join tblcity as c on c.CityId=jr.JobLocation where jr.PostJobCode=@PostJobCode
end

begin
if(@flag='Getphonedetails')
select b.PostJobCode, a.SeekerName,ContactNo,a.AlternateContactNo from TblJobSeekerDetails as a inner join TblApplyJobs as b on a.SeekerCode=b.JobSeekerCode
where b.AppliedJobID=@AppliedJobId
end
begin
if(@flag='Deletecandidate')
delete TblApplyJobs where AppliedJobId=@AppliedJobId
end
begin
if(@flag='GetEducation')
select * from TblQualification
end
begin
if(@flag='GetDegree')
select * from TblDegree where QualificationId=@QualificationId
end
begin
if(@flag='GetSpecialization')
select * from TblSpecialization where DegreeId=@DegreeId    select max(SeekerCode) as jobseekercode from TblJobSeekerDetails
end
begin
if(@flag='Getseekercode')
select max(SeekerCode) as jobseekercode from TblJobSeekerDetails
end
if(@Flag='EditJob')
begin
update TblJobRegistration set CompanyId=@CompanyId,ContactPerson=@ContactPerson,OpportunityType=@OpportunityType,JobTitle=@JobTitle,JobCategoryId=@JobCategoryId,JobDescription=@JobDescription,JobLocation=@JobLocation,Address=@Address,JobType=@JobType,RequiredQualificationId=@RequireQualificationId,NoofOpenings=@NoofOpenings,WorkingShifts=@WorkingShifts,SalaryType=@SalaryType,SalaryRange=@SalaryRange,Salary=@Salary,JobBenefits=@JobBenefits,CollectResume=@CollectResume,TotalExperience=@TotalExperience,ExpectedJoiningDate=@ExpectedJoiningDate,ApplicationStartDate=@ApplicationStartDate,ApplicationEndDate=@ApplicationEndDate,StatusId=@StatusId,ApprovalDate=@ApprovalDate,RejectionReason= @RejectionReason
where PostJobCode=@PostJobCode
end
if(@Flag='ApplyJob')
begin
insert into TblApplyJobs values (@Seekercode,@PostJobCode,@StatusId,@AppliedDate,@ResumePDF,@isDelete)
end
begin
if(@flag='Saveseekerdetail')
insert into TblJobSeekerDetails values(@Seekercode,@SeekerName,@EmailId,@Password,@ContactNo,@AlternateContactNo,@DOB,@Gender,@CurrespondenceAddress,@Address,@Pincode,@CityId,@LanguageId,@PhysicallyChallenged,@CastCategory,@MarriatalStatus,@RegistrationDate,@ProfileSummary,@StatusId,@ResumePDF,@ProfileIMG,@isDelete)
end
begin
if(@flag='SaveSSCdetail')
insert into TblEducationDetails values(@Seekercode,@SSC,@SSCBoard,@SSCPassingYear,@SSCMarks,@HSC,@HSCBoard,@HSCPassingYear,@HSCMarks,@UG,@UGDegree,@UGSpecialization,@UGUnivercity,@UGPassingYear,@UGMarks,@UGCourseType,@Graduation,@GraduationDegree,@GraduationSpecialization,@GraduationUnivercity,@GraduationPassingYear,@GraduationMarks,@GCourseType,@PG,@PGDegree,@PGSpecialization,@PGUnivercity,@PGPassingYear,@PGMarks,@PGCourseType)
end
begin
if(@flag='SaveHSCdetail')
insert into TblEducationDetails values(@Seekercode,@SSC,@SSCBoard,@SSCPassingYear,@SSCMarks,@HSC,@HSCBoard,@HSCPassingYear,@HSCMarks,@UG,@UGDegree,@UGSpecialization,@UGUnivercity,@UGPassingYear,@UGMarks,@UGCourseType,@Graduation,@GraduationDegree,@GraduationSpecialization,@GraduationUnivercity,@GraduationPassingYear,@GraduationMarks,@GCourseType,@PG,@PGDegree,@PGSpecialization,@PGUnivercity,@PGPassingYear,@PGMarks,@PGCourseType)
end
begin
if(@flag='SaveUGDetail')
insert into TblEducationDetails values(@Seekercode,@SSC,@SSCBoard,@SSCPassingYear,@SSCMarks,@HSC,@HSCBoard,@HSCPassingYear,@HSCMarks,@UG,@UGDegree,@UGSpecialization,@UGUnivercity,@UGPassingYear,@UGMarks,@UGCourseType,@Graduation,@GraduationDegree,@GraduationSpecialization,@GraduationUnivercity,@GraduationPassingYear,@GraduationMarks,@GCourseType,@PG,@PGDegree,@PGSpecialization,@PGUnivercity,@PGPassingYear,@PGMarks,@PGCourseType)
end
begin
if(@flag='SaveGraduationDetail')
insert into TblEducationDetails values(@Seekercode,@SSC,@SSCBoard,@SSCPassingYear,@SSCMarks,@HSC,@HSCBoard,@HSCPassingYear,@HSCMarks,@UG,@UGDegree,@UGSpecialization,@UGUnivercity,@UGPassingYear,@UGMarks,@UGCourseType,@Graduation,@GraduationDegree,@GraduationSpecialization,@GraduationUnivercity,@GraduationPassingYear,@GraduationMarks,@GCourseType,@PG,@PGDegree,@PGSpecialization,@PGUnivercity,@PGPassingYear,@PGMarks,@PGCourseType)
end

if(@flag='SavePGDetail')
begin
insert into TblEducationDetails values(@Seekercode,@SSC,@SSCBoard,@SSCPassingYear,@SSCMarks,@HSC,@HSCBoard,@HSCPassingYear,@HSCMarks,@UG,@UGDegree,@UGSpecialization,@UGUnivercity,@UGPassingYear,@UGMarks,@UGCourseType,@Graduation,@GraduationDegree,@GraduationSpecialization,@GraduationUnivercity,@GraduationPassingYear,@GraduationMarks,@GCourseType,@PG,@PGDegree,@PGSpecialization,@PGUnivercity,@PGPassingYear,@PGMarks,@PGCourseType)
end
--------------------------------------Muskan Start-----------------------------------------
if(@flag = 'LoginEmployer')
begin
select * from TblEmployerReg where EmailId=@EmailId and Password=@Password
end
if(@flag = 'ForgetPasswordemp')
begin
select * from TblEmployerReg where EmailId=@EmailId
end
if(@flag ='UpdateEmployer')
begin
update TblEmployerReg set EmailId=@EmailId,ContactNo=@ContactNo,Password=@Password where EmployerCode=@EmployeerCode
end
if(@flag ='fetchEmp')
begin
select EmailId,ContactNo,Password from TblEmployerReg where EmployerCode=@EmployeerCode
end
if(@flag='DeleteEmp')
begin
update TblEmployerReg set isDelete= 1 where EmployerCode=@EmployeerCode
end
if(@flag = 'CheckExternalLoginE')
begin
select * from TblEmployerReg where EmailId =@EmailId
end
if(@flag='RegisterExternalLoginEmp')
begin
insert into TblEmployerReg values(@EmployeerCode,@EmployerName,@EmailId,@ContactNo,@alternatecontactno,@Password,@isDelete)
end
--------------------------------Sachin Start---------------------------------------------
if(@flag='JobSeekerDetails')
begin
select s.SeekerCode,s.SeekerName,s.ResumePDF,s.ProfileSummary from TblJobSeekerDetails as s
inner join TblEmployementDetails as e on e.SeekerCode=s.SeekerCode
where s.SeekerCode=@Seekercode
end
if(@Flag='GetFindResume')
begin
select a.JobSeekerCode,js.SeekerName,j.TotalExperience,r.RequireQualification,j.JobType,js.ResumePDF from TblApplyJobs as a
inner join TblJobRegistration as j on j.PostJobCode = a.PostJobCode
inner join TblRequireQualification as r on r.RequireQualificationId=j.RequiredQualificationId
inner join TblJobSeekerDetails as js on js.SeekerCode = a.JobSeekerCode
where CityId=@CityId or JobTitle =@JobTitle
end
if(@flag='GetJobCategory')
begin
select JobCategoryId,JobCategory from TblJobCategory
end
if(@flag = 'JobCategory')
begin
select * from TblJobCategory
end
if(@Flag='GetJobTitle')
begin
select JobCategoryId,JobTitle from TblJobRegistration where JobCategoryId=@JobCatagoryId
end
if(@flag='GetJobLocation')
begin
select * from tblCity
end
if(@flag='GetEmailid')
begin
select EmailId from TblJobSeekerDetails where SeekerCode=@Seekercode
end
if(@flag='GetCompanyDetails')
begin
select CompanyName,HRName,HRNumber from TblCompanyDetails where EmployerCode =@EmployeerCode
end
if(@flag='ResumeAlert')
begin
select js.SeekerCode,js.SeekerName,js.ResumePDF from TblJobRegistration as jr
inner join TblJobAlert as ja on ja.Category=jr.JobCategoryId
inner join TblJobSeekerDetails as js on js.SeekerCode=ja.SeekerCode
inner join TblCompanyDetails as cm on cm.CompanyId= jr.CompanyId
where cm.EmployerCode='EMP0001' and js.ResumePDF is not null group by js.SeekerCode, SeekerName,js.ResumePDF
end
-----------------------------Ashish Start-----------------------------------
begin
if(@flag ='AllRoundsGrid')
begin
select  aj.PostJobCode,aj.AppliedJobID,js.SeekerName,js.EmailId,s.Status from TblApplyJobs as aj 
inner join TblJobSeekerDetails js on js.SeekerCode = aj.JobSeekerCode
inner join TblStatus s on s.StatusId = aj.StatusID
where  PostJobCode = @PostJobCode
end

if(@flag ='AORoundsGrid1')
begin
select  aj.AppliedJobID,js.SeekerName,js.EmailId,s.Status from TblApplyJobs as aj 
inner join TblJobSeekerDetails js on js.SeekerCode = aj.JobSeekerCode
inner join TblStatus s on s.StatusId = aj.StatusID
where aj.StatusID = 23 and PostJobCode = @PostJobCode
end

if (@flag = 'AOAddNewRounds')
begin
insert into TblRound values(@EmployeerCode,@RoundName)
end

if (@flag ='AOShowRounds')
begin
select RoundName from TblRound
end

if (@flag ='CreateRoundwithDetails')
begin
insert into TblInterview values(@RoundName,@applyjoblist,@StartTime,@EndTime,@InterviewAddress,@Date,@Comment,@InterviewType,@StatusId)
end
if(@flag ='UpdateStatusR1Clear')
begin
update TblApplyJobs set StatusID=@StatusId where AppliedJobID =@AppliedJobId
end

if(@flag ='UpdateStatusR1Reject')
begin
update TblApplyJobs set StatusID=@StatusId where AppliedJobID =@AppliedJobId
end

if(@flag ='AORoundsGridR2')
begin
select  aj.AppliedJobID,js.SeekerName,js.EmailId,s.Status from TblApplyJobs as aj 
inner join TblJobSeekerDetails js on js.SeekerCode = aj.JobSeekerCode
inner join TblStatus s on s.StatusId = aj.StatusID
where aj.StatusID = 12 and PostJobCode = @PostJobCode
end
if(@flag ='AORoundsGridR3')
begin
select  aj.AppliedJobID,js.SeekerName,js.EmailId,s.Status from TblApplyJobs as aj 
inner join TblJobSeekerDetails js on js.SeekerCode = aj.JobSeekerCode
inner join TblStatus s on s.StatusId = aj.StatusID
where aj.StatusID = 13 and PostJobCode = @PostJobCode
end
if(@flag ='AORoundsGridR4')
begin
select  aj.AppliedJobID,js.SeekerName,js.EmailId,s.Status from TblApplyJobs as aj 
inner join TblJobSeekerDetails js on js.SeekerCode = aj.JobSeekerCode
inner join TblStatus s on s.StatusId = aj.StatusID
where aj.StatusID = 14 and PostJobCode = @PostJobCode
end
if(@flag ='AORoundsGridR5')
begin
select  aj.AppliedJobID,js.SeekerName,js.EmailId,s.Status from TblApplyJobs as aj 
inner join TblJobSeekerDetails js on js.SeekerCode = aj.JobSeekerCode
inner join TblStatus s on s.StatusId = aj.StatusID
where aj.StatusID = 15 and PostJobCode = @PostJobCode
end
if (@flag='GetEmail')
begin
select js.EmailId from TblApplyJobs as aj
inner join TblJobSeekerDetails js on js.SeekerCode=aj.JobSeekerCode where AppliedJobID = @AppliedJobId
end
if (@flag='GetCompanyName')
begin
select cd.HRName,cd.HRNumber, cd.CompanyName,aj.PostJobCode from TblApplyJobs as aj
inner join TblJobRegistration as jr on jr.PostJobCode=aj.PostJobCode
inner join TblCompanyDetails as cd on cd.CompanyId = jr.CompanyId
where aj.AppliedJobID=@AppliedJobId group by aj.PostJobCode,cd.CompanyName,cd.HRName,cd.HRNumber
end
--if (@flag ='')
--begin
--insert into TblInterview values(@RoundName, @AppliedJobId,@StartTime,@EndTime,@InterviewAddress,@Date,@Comment,@StatusId) 
--end
if (@flag ='viewEmployerSave')
begin
insert into tblprofileview values(@Seekercode,@EmployeerCode) 
end
if (@flag ='viewEmployer')
begin
select * from tblprofileview where SeekerCode = @Seekercode and EmployerCode = @EmployeerCode
end
if(@flag='PlanDetails')
begin
select SubscriptionId,SubscriptionName,Benefits,SubscriptionDetails,SubscriptionDuration,PlanPricing,Offer,OfferedPrice,UserCategory from TblSubscription 
where UserCategory = 'Employer'
end
if(@flag='getbenifits')
begin
select Benefits from tblBenefits where BenefitId = @BenefitId
end
-----------------Aditya chaoure---------------
--if (@flag='ACTotalHire')
--begin
--select COUNT (jobseekercode) as Hire from TblApplyJobs where StatusID=11
--end
--if (@flag='ACJobCount')
--begin
--select COUNT (PostJobCode)as JobPost from TblJobRegistration
--end
--if (@flag='ACApplyJobCount')
--begin
--select COUNT (AppliedJobID)as JobApplication from TblApplyJobs
--end
--if (@flag='ACInterviewConducted')
--begin
--select COUNT (InterviewId) as Interview from TblInterview
--end

-----------------Aditya chaoure---------------
if (@flag='ACTotalHire')
begin
select COUNT (jobseekercode) as Hire from TblApplyJobs as jr
inner join TblJobRegistration cd on cd.PostJobCode =jr.PostJobCode
inner join TblCompanyDetails c on c.CompanyId =cd.CompanyId
where jr.StatusID=11 and EmployerCode=@EmployeerCode 
end
if (@flag='ACJobCount')
begin
select COUNT (PostJobCode)as JobPost from TblJobRegistration as jr 
inner join TblCompanyDetails cd on cd.CompanyId = jr.CompanyId
where cd.EmployerCode =@EmployeerCode
end
--if(@flag='ACGetCompanyId')
--end
--begin
--select*from TblCompanyDetails where EmployerCode=@EmployeerCode
if (@flag='ACApplyJobCount')
begin
select count(a.JobSeekerCode) as totalapplication,a.PostJobCode from TblApplyJobs as a 
inner join TblJobRegistration as jr on jr.PostJobCode = a.PostJobCode
inner join TblCompanyDetails as cd on cd.CompanyId=jr.CompanyId
inner join TblEmployerReg er on er.EmployerCode = cd.EmployerCode
where cd.EmployerCode=@EmployeerCode
group by a.PostJobCode
end
if (@flag='ACInterviewConducted')
begin
select COUNT (InterviewId) as Interview from TblInterview 
end
if(@flag='ACActiveCount')
begin
select count(StatusId) as status from tbljobregistration
where StatusId='1'and  PostJobCode=@PostJobCode
end
if(@flag='ACInactiveCount')
begin
select count(StatusId) as status from tbljobregistration
where StatusId='2'and  PostJobCode=@PostJobCode
end
if(@flag='ACPostjobTitle')
begin
select  COUNT(aj.AppliedJobID)as Total ,a.JobTitle from TblJobRegistration as a
inner join TblApplyJobs as aj on aj.PostJobCode = a.PostJobCode
inner join TblCompanyDetails b on b. CompanyId=a.CompanyId 
where b.EmployerCode=@EmployeerCode
group by a.JobTitle
end

---------------------Rita----------------------
if (@flag='RPBilling')
begin
select c.CompanyLogo,p.EmployerCode, c.CompanyName,e.ContactNo,e.EmailId,concat(ct.CityName,',',s.StateName,',',a.CountryName) as Address ,c.HRName ,c.CompanyEmail,p.SubscriptionDate,pl.SubscriptionName,pl.PlanPricing from tblPayment as p
inner join TblEmployerReg as e on e.EmployerCode=p.EmployerCode
inner join TblCompanyDetails as c on c.EmployerCode = p.EmployerCode
inner join tblCity as ct on ct.CityId=c.CityId
inner join tblState as s on s.StateId=ct.StateId
inner join tblCountry as a on a.CountryId = s.CountryId 
inner join TblSubscription as Pl on pl.SubscriptionId=p.SubscriptionId where p.EmployerCode=@EmployeerCode 
end
if (@flag='RPGetPlanDetails')
begin
select SubscriptionId,SubscriptionName ,SubscriptionDuration,OfferedPrice,PlanPricing from TblSubscription where SubscriptionId=@SubscriptionId
end
if (@flag='RPGetPayment')
begin
select EmployerName,EmailId,ContactNo from TblEmployerReg
where EmployerCode=@EmployeerCode
end
if (@flag='RPTranjectionIdIncriment')
begin
select max(PaymentId)as Payment from tblPayment
end
if (@flag='RPPaymentSave')
begin
 insert into tblPayment values(@Seekercode,@EmployeerCode,@SubscriptionId,@PaymentMode,@SubcriptionDate,@PaymentDate,@transactionId,@StatusId,@GSTNo)
 end

--------------------Rita-----------------
end
end




























































































































































































GO
/****** Object:  StoredProcedure [dbo].[SPAdmin]    Script Date: 29-05-2023 19:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPAdmin]
(
@AdminId int = null,
@PostJobCode nvarchar(50)=null,
@RejectionReason nvarchar(100) = null,
@AdminName nvarchar(50) = null,
@EmailId nvarchar(250) = null,
@ContactNo bigint = null,
@ProfilePicture nvarchar(max) = null,
@Password nvarchar(20) = null,
@BenefitId int = null,
@Benefit nvarchar(max) = null,
@SubscriptionId  int = null,
@Plans nvarchar(50) = null,
@PlanPrice nvarchar(50) = null,
@PlanRegistrationDate date = null,
@Planfor nvarchar(20) = null,
@Planduration nvarchar(50) = null,
@PaymentId int = null,
@Seekercode nvarchar(50) = null,
@EmployeerCode nvarchar(50) = null,
@PaymentMode nvarchar(50) = null,
@SubscriptionDate date = null,
@PaymentDate date = null,
@TransactionId nvarchar(50) = null,
@StatusId int = null,
@Status	nvarchar(50) = null,
@SkillName nvarchar(200) = null,
@CompanyId int = null,
@ReviewId int = null,
@EmployeName nvarchar(50) = null,
@SubscriptionName nvarchar(100)=null,
@Benefits nvarchar(50)=null,
@SubscriptionDetails nvarchar(max)=null,
@SubscriptionDuration nvarchar(max)=null,
@PlanPricing bigint=null,
@IsOffer nvarchar(10)=null,
@Offer int=null,
@OfferedPrice bigint=null,
@UserCategory nvarchar(10)=null,
@flag nvarchar(50) = null
)
as 
begin
-------------------Rita Start-----------------------
if(@flag ='RPJobStatusApprovle')
begin
select PostJobCode, JobTitle,JobDescription,ApplicationStartDate,s.Status from TblJobRegistration as r
inner join TblStatus  s on s.StatusId = r.StatusId
end

if(@flag ='RPUpdateJobStatusApprovle')
begin
update TblJobRegistration set StatusId =@StatusId   where PostJobCode =@PostJobCode
end

if(@flag ='RPUpdatejobRejectionReason')
begin
update TblJobRegistration set  StatusId =@StatusId, RejectionReason =@RejectionReason  where PostJobCode =@PostJobCode
end
if(@flag ='RejectStatusGet')
begin
select PostJobCode, JobTitle,JobDescription,ApplicationStartDate,s.Status  from TblJobRegistration as r
inner join TblStatus  s on s.StatusId = r.StatusId where PostJobCode=@PostJobCode
end
if(@flag ='RPJobDetails')
begin
select jr.PostJobCode,cd.CompanyLogo,cd.CompanyName,jc.JobCategory,jr.ContactPerson,jr.OpportunityType,jr.JobTitle, jr.JobType,jr.JobDescription,
jr.Address,jr.JobType,jr.NoofOpenings,jr.WorkingShifts,jr.Salary,jr.TotalExperience,jr.ExpectedJoiningDate,jr.ApplicationEndDate from TblJobRegistration as jr
inner join TblCompanyDetails as cd on cd.CompanyId=jr.CompanyId
inner join TblJobCategory as jc on jc.JobCategoryId=jr.JobCategoryId where jr.PostJobCode=@PostJobCode
end

if(@flag ='RPCompanyGridview')
begin
select f.ReviewId, d.CompanyName,d.RegistrationDate,d.AboutCompany,f.Rating,f.Review, s.Status from  TblCompanyFeedback as  f 
left join tblStatus s on s.StatusId = f.StatusId
inner join tblCompanyDetails as d on f.CompanyId=d.CompanyId and f.isDelete=0 where Rating= 1 or Rating= 2 or Rating= 3
end

if(@flag ='RPCompanyIsDelete')
begin
update TblCompanyFeedback set isDelete = 1 where ReviewId = @ReviewId
end

if(@flag ='RPCompanyReviewStatusUpdate')
begin
update TblCompanyFeedback set StatusId = @StatusId where ReviewId = @ReviewId
end

if(@flag ='RPCompanyGridviewDetails')
begin
select f.ReviewId, CompanyName,RegistrationDate,AboutCompany,f.Rating,f.Review, s.Status from  TblCompanyFeedback as  f 
inner join tblStatus s on s.StatusId = f.StatusId
inner join tblCompanyDetails as d on f.CompanyId=d.CompanyId and f.isDelete=0  where ReviewId =@ReviewId
end

if(@flag ='RPAdminEmployeGrid')
begin
select e.EmployerCode,e.EmployerName,p.PaymentMode,pl.SubscriptionName,p.SubscriptionDate,pl.SubscriptionDuration,s.Status from TblEmployerReg as e
left join tblPayment as p on p.EmployerCode=e.EmployerCode
left join TblSubscription as pl on pl.SubscriptionId =p.SubscriptionId 
left join TblStatus as s on s.StatusId=p.StatusId 
where p.SubscriptionDate is not NULL
end
if(@flag ='RPSearchByNameEmployeGrid')
begin
select e.EmployerCode,e.EmployerName,p.PaymentMode,pl.SubscriptionName,p.SubscriptionDate,pl.SubscriptionDuration,s.Status from TblEmployerReg as e
left join tblPayment as p on p.EmployerCode=e.EmployerCode
left join TblSubscription as pl on pl.SubscriptionId =p.SubscriptionId 
left join TblStatus as s on s.StatusId=p.StatusId where e.EmployerName =@EmployeName
end
--if(@flag ='RPSearchByPlansAdminEmployeGrid')
--begin
--select e.EmployerCode,e.EmployerName,p.PaymentMode,pl.Plans,p.SubscriptionDate,pl.PlanDuration,s.Status from TblEmployerReg as e
--left join tblPayment as p on p.EmployerCode=e.EmployerCode
--left join tblPlan as pl on pl.SubscriptionId =p.SubscriptionId 
--left join TblStatus as s on s.StatusId=p.StatusId where pl.Plans= @Plans
--end
if(@flag = 'RPTotalJobsPosted')
begin
select count(PostJobCode)as ApprovalJobs from TblJobRegistration where StatusId=9
end
if(@flag = 'RPTotalSeekerRegister')
begin
select count(SeekerId)as seekerRegister from TblJobSeekerDetails
end
if(@flag = 'RPTotalEmployerRegister')
begin
select count(EmployeerId)as Employer from TblEmployerReg
end
if(@flag = 'RPTotalApplicationAppvalAndReject')
begin
select count(ApprovalDate)as Applications from TblJobRegistration
end
if(@flag = 'RPPaymentStatusUpdate')
begin
update tblPayment set StatusId = @StatusId where EmployerCode = @EmployeerCode
end
if(@flag = 'RPGetStatus')
begin
select * from tblStatus where StatusId =1 or StatusId = 2 or StatusId = 3
end
if(@flag = 'Loginadmin')
begin
select * from TblAdminDetails where EmailId=@EmailId and Password = @Password
end
if(@flag = 'Adminemail')
begin
select * from TblAdminDetails where EmailId=@EmailId
end
if(@flag = 'RPAdminJobsGrid')
begin
select c.CompanyName,j.JobTitle,s.Status, count(a.JobSeekerCode)as applicationcount,(select count(b.StatusID) from TblApplyJobs b where b.StatusID=11 ) as Hire  from TblJobRegistration as j
 left outer join TblApplyJobs as a on a.PostJobCode = j. PostJobCode 
 inner join TblStatus as s on s.StatusId=j.StatusId 
 inner join TblCompanyDetails as c on c.CompanyId =j.CompanyId 
 group by c.CompanyName,j.JobTitle,s.Status
end
--------------------------------------------------------Muskan Start--------------------------------------------------------
------gridview----------
if(@flag ='SiteearningEmp')
begin
select p.EmployerCode,s.SubscriptionName,s.SubscriptionDuration,s.Offer,s.PlanPricing,s.OfferedPrice from tblPayment p
inner join TblSubscription s on s.SubscriptionId = p.SubscriptionId 
inner join TblCompanyDetails cd on cd.EmployerCode= p.EmployerCode
group by p.EmployerCode,s.SubscriptionName,s.SubscriptionDuration,s.Offer,s.PlanPricing,s.OfferedPrice
end
if(@flag ='SiteearningSeek')
begin
select p.Seekercode,s.SubscriptionName,s.SubscriptionDuration,s.Offer,s.PlanPricing,s.OfferedPrice from tblPayment p
inner join TblSubscription s on s.SubscriptionId = p.SubscriptionId 
inner join TblJobSeekerDetails js on js.SeekerCode =p.Seekercode
group by p.Seekercode,s.SubscriptionName,s.SubscriptionDuration,s.Offer,s.PlanPricing,s.OfferedPrice
end
----------TotalAmount-------------
if(@flag='TotalAmountEmp')
begin
select  b.Seekercode,sum(a.OfferedPrice)as TotalEmpAmount from TblSubscription as a inner join tblPayment as b on a.SubscriptionId=b.SubscriptionId  
where b.Seekercode is  null  group by b.Seekercode
end

if(@flag ='TotalAmountSeek')
begin
select  b.EmployerCode,sum(a.OfferedPrice)as TotalSeekAmount from TblSubscription as a inner join tblPayment as b on a.SubscriptionId=b.SubscriptionId  
 where b.EmployerCode is null  group by b.EmployerCode
end
----------MonthlyAmount-------------
if(@flag='MonthlyEarningEmp')
begin
select sum(OfferedPrice)as CurrentMonth from TblSubscription as a
inner join tblPayment as b on a.SubscriptionId=b.SubscriptionId 
where b.Seekercode is  null and MONTH(b.PaymentDate)=MONTH(GETDATE())  group by b.Seekercode 
end

if(@flag='MonthlyEarningSeek')
begin
select sum(OfferedPrice)as CurrentMonth from TblSubscription as a
inner join tblPayment as b on a.SubscriptionId=b.SubscriptionId 
where b.EmployerCode is  null and MONTH(b.PaymentDate)=MONTH(GETDATE())  group by b.EmployerCode
end
------------mitali satrt--------------
if(@flag='Subscription')
begin
insert into TblSubscription values (@SubscriptionName,@UserCategory,@Benefits,@SubscriptionDetails,@SubscriptionDuration,@PlanPricing,@IsOffer,@Offer,@OfferedPrice)
end
if(@flag='AddBenefits')
begin
insert into tblBenefits values(@Benefits)
end
if(@flag='GetBenefits')
begin
select BenefitId,Benefits from tblBenefits
end
if(@flag='PlanGrid')
begin
select SubscriptionId,SubscriptionName,PlanPricing,Offer,OfferedPrice from TblSubscription
end
if(@flag='PlanDetails')
begin
select SubscriptionId,SubscriptionName,Benefits,SubscriptionDetails,SubscriptionDuration,PlanPricing,Offer,OfferedPrice from TblSubscription 
where SubscriptionId=@SubscriptionId
end
if(@flag='Updateplan')
begin
update TblSubscription set  SubscriptionName=@SubscriptionName,Benefits=@Benefits,SubscriptionDetails=@SubscriptionDetails,SubscriptionDuration=@SubscriptionDuration,PlanPricing=@PlanPricing,Offer=@Offer,OfferedPrice=@OfferedPrice where  SubscriptionId=@SubscriptionId
end
if(@flag='GetDetails')
begin
select SubscriptionId,SubscriptionName,Benefits,SubscriptionDetails,SubscriptionDuration,PlanPricing,Offer,OfferedPrice from TblSubscription where SubscriptionId=@SubscriptionId
end
if(@flag='getbenifits')
begin
select Benefits from tblBenefits where BenefitId = @BenefitId
end
if(@flag='DeletePlan')
begin
delete TblSubscription where SubscriptionId=@SubscriptionId
end
if(@flag='Jobseekargrid')
begin
select j.SeekerCode,j.SeekerName,j.EmailId,j.ContactNo,c.Designation,p.SubscriptionDate,s.Status from TblJobSeekerDetails as j
inner join TblEmployementDetails as c on c.SeekerCode=j.SeekerCode
left join tblPayment as p on p.Seekercode=j.SeekerCode
inner join TblStatus as s on s.StatusId = j.StatusId
end
end


GO
/****** Object:  StoredProcedure [dbo].[SPSeeker]    Script Date: 29-05-2023 19:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SPSeeker]
(
@SeekerId int = null,
@Seekercode nvarchar(50) = null,
@SeekerName	nvarchar(250) = null,
@EmailId nvarchar(250) = null,
@Password nvarchar(20) = null,
@ContactNo bigint = null,
@ALContactNo bigint = null,
@DOB date = null,
@Gender	nvarchar(10) = null,
@CorrespondenceAddress nvarchar(max) = null,
@PermanentAddress nvarchar(max) = null,
@Pincode int = null,
@LanguageID	nvarchar(20) = null,
@Language nvarchar(100) = null,
@PhysicallyChallenged bit = null,
@CasteCategory nvarchar(50) = null,
@MaritalStatus nvarchar(20) = null,
@DateOfRegistration	date = null,
@ProfileSummary	nvarchar(max) = null,
@ResumePDF nvarchar(max) = null,
@ProfileIMG	nvarchar(max) = null,
@isDelete bit = null,
@EmployementId int = null,
@CurrentEmployement	bit = null,
@EmployementType nvarchar(max) = null,
@CompanyName nvarchar(max) = null,
@Designation nvarchar(200) = null,
@JoiningDate nvarchar(50) = null,
@CurrentSalary nvarchar(50) = null,
@JobProfile	nvarchar(max) = null,
@NoticePeriod nvarchar(30) = null,
@ProjectId	int = null,
@ProjectTitle nvarchar(max) = null,
@ClientName	nvarchar(200) = null,
@ProjectStatus nvarchar(20) = null,
@TotalExperience nvarchar(50) = null,
@ProjectDetails	nvarchar(max) = null,
@EducationID int = null,
@QualificationID int = null,
@Qualification	nvarchar(50) = null,
@DegreeId int = null,
@Degree	nvarchar(100) = null,
@SpecalizationId int = null,
@Specalization	nvarchar(100) = null,
@PassingYear int = null,
@marks int = null,
@CourseType nvarchar(20) = null,
@University nvarchar(250) = null,
@JobAlertId	int = null,
@AlertKeyword	nvarchar(200) = null,
@AlertName	nvarchar(100) = null,
@ReviewId int = null,
@CompanyId	int = null,
@EmployerCode nvarchar(50) = null,
@EmployerName	Nvarchar(250) = null,
@Rating	int = null,
@Review	nvarchar(250) = null,
@Follow	bit = null,
@StatusID int = null,
@Status	nvarchar(50) = null,
@SkillId nvarchar(20) = null,
@SkillName nvarchar(200) = null,
@CountryID	int = null,
@CountryName nvarchar(50) = null,
@StateID int = null,
@Statename	nvarchar(50) = null,
@CityId	int = null,
@CityName nvarchar(50) = null,
@AppliedJobId int = null,
@AppliedDate date = null,
@Location nvarchar(50) = null,
@IndustryId int = null,
@JobcategoryId int = null,
@JobTitle nvarchar(max) =null,
@JobType nvarchar(50)=null,
@JobLocation nvarchar(20)=null,
@SalaryRange nvarchar(20) =null,
@PostJobCode nvarchar(50)=null,
@Salary  nvarchar(50)= null,
@JobCatagoryId int = null,
@AlternateContactNo int = null,
@DoyouCurrentlyworkhere bit=null,
@RequireQualificationId int = null,
@flag nvarchar(max) = null
)
as

--------------------------------Saurabh Patil-----------------------------------------------------//
begin
if(@flag = 'SeekerRegister')
begin
insert into TblJobSeekerDetails values(@Seekercode,@SeekerName,@EmailId,@Password,@ContactNo,@ALContactNo,@DOB,@Gender,@CorrespondenceAddress,
@PermanentAddress,@Pincode,@CityName,@Language,@PhysicallyChallenged,@CasteCategory,@MaritalStatus,@DateOfRegistration,@ProfileSummary,1,@ResumePDF,@ProfileIMG,0)
end
if(@flag = 'EmployeerRegister')
begin
insert into TblEmployerReg values(@EmployerCode,@EmployerName,@EmailId,@ContactNo,@ContactNo,@Password,0)
end
if(@flag='SeekerCode')
begin
select MAX(SeekerId)  as SeekerId from TblJobSeekerDetails
end
if(@flag='EmployeerCode')
begin
select MAX(EmployeerId) as EmployeerId  from TblEmployerReg
end
if(@flag='PersonalDetails')
begin
update TblJobSeekerDetails set SeekerName = @SeekerName, AlternateContactNo = @ContactNo,DOB=@DOB,Gender=@Gender,CorrespondenceAddress=@CorrespondenceAddress,
PermanentAddress = @PermanentAddress,Pincode=@Pincode,CityId = @CityId,LanguageId=@LanguageID,PhysicallyChallenged=@PhysicallyChallenged,CasteCategory=@CasteCategory,
MaritalStatus=@MaritalStatus,ProfileSummary=@ProfileSummary where SeekerCode = @Seekercode
end
if(@flag='updateIMG')
begin
update TblJobSeekerDetails set ProfileIMG = @ProfileIMG where SeekerCode = @Seekercode
end
if(@flag='updateResume')
begin
update TblJobSeekerDetails set ResumePDF = @ResumePDF where SeekerCode = @Seekercode
end
if(@flag='SeekerDetails')
begin
select * from TblJobSeekerDetails as js
left outer join tblCity as c on c.CityId = js.CityId where SeekerCode = @Seekercode
end
if(@flag = 'City')
begin
select c.CityId, concat(c.CityName,', ',s.StateName,', ',a.CountryName) as location from tblCity as c 
inner join tblState as s on s.StateId = c.StateId
inner join tblCountry as a on a.CountryId = s.CountryId
end
if(@flag = 'Language')
begin
select * from TblLanguage
end
if(@flag = 'LanguageShow')
begin
select * from TblLanguage where LanguageId = @LanguageID
end
if(@flag = 'EducationDetails')
begin
insert into TblEducationDetails values(@Seekercode,@QualificationID,@DegreeId,@PassingYear,@marks,@QualificationID,@DegreeId,@PassingYear,@marks,@QualificationID,@DegreeId,@SpecalizationId,@University,@PassingYear,@marks,@CourseType,
@QualificationID,@DegreeId,@SpecalizationId,@University,@PassingYear,@marks,@CourseType,@QualificationID,@DegreeId,@SpecalizationId,@University,@PassingYear,@marks,@CourseType)
end
if(@flag = 'ShowEducationDetails')
begin

select js.SeekerName,ProfileIMG,EmailId,ContactNo,ed.EducationId,ed.SeekerCode,SSC,SSCBoard,SSCPassingYear,SSCMarks,sq.Qualification as SSCQ,sd.Degree as SSCD,
ed.HSCBoard,hq.Qualification as HSCQ,HSC,HSCPassingYear,HSCMarks,
ed.UG,UGDegree,UGSpecialization,UGUniversity,UGPassingYear,UGMarks,UGCourseType,UGq.Qualification as UGQ,UGd.Degree as UGD,UGs.Specialization as UGSp,
ed.Graduation,GraduationDegree,GraduationSpecialization,GraduationPassingYear,GraduationMarks,GraduationUniversity,GCourseType,Grq.Qualification as GRQ,Grd.Degree as GRD,Grs.Specialization as GRS,
ed.PG,PGDegree,PGSpecialization,PGPassingYear,PGMarks,PGUniversity,PGCourseType,PGq.Qualification as PGQ, PGd.Degree as PGD,PGs.Specialization as PGS
from TblEducationDetails as ed
left outer join TblJobSeekerDetails as js on js.SeekerCode = ed.SeekerCode
left outer join TblQualification as sq on sq.QualificationId = ed.SSC
left outer join TblDegree as sd on sd.DegreeID = ed.SSCBoard
left outer join TblQualification as hq on hq.QualificationId = ed.HSC
left outer join TblDegree as hd on hd.DegreeID = ed.HSCBoard
left outer join TblQualification as UGq on UGq.QualificationId = ed.UG
left outer join TblDegree as UGd on UGd.DegreeID = ed.UGDegree
left outer join TblSpecialization as UGs on UGs.SpecializationId = ed.UGSpecialization
left outer join TblQualification as Grq on Grq.QualificationId = ed.Graduation
left outer join TblDegree as Grd on Grd.DegreeID = ed.GraduationDegree
left outer join TblSpecialization as Grs on Grs.SpecializationId = ed.GraduationSpecialization
left outer join TblQualification as PGq on PGq.QualificationId = ed.PG
left outer join TblDegree as PGd on PGd.DegreeID = ed.PGDegree
left outer join TblSpecialization as PGs on PGs.SpecializationId = ed.PGSpecialization
where ed.SeekerCode = @Seekercode 
end
if(@flag = 'Qualification')
begin
select * from TblQualification
end
if(@flag = 'Degree')
begin
select * from TblDegree where QualificationId = @QualificationID 
end
if(@flag = 'Specialization ')
begin
select * from TblSpecialization where DegreeId = @DegreeId 
end
if(@flag = 'AddSSC')
begin
update TblEducationDetails set SSC = @QualificationID,SSCBoard = @DegreeId,SSCPassingYear=@PassingYear,SSCMarks=@marks where SeekerCode = @Seekercode
end
if(@flag = 'AddHSC')
begin
update TblEducationDetails set HSC = @QualificationID,HSCBoard = @DegreeId,HSCPassingYear=@PassingYear,HSCMarks=@marks where SeekerCode = @Seekercode
end
if(@flag = 'AddUG')
begin
update TblEducationDetails set UG = @QualificationID,UGDegree = @DegreeId,UGSpecialization=@SpecalizationId,UGUniversity=@University,UGPassingYear=@PassingYear,UGMarks=@marks,UGCourseType=@CourseType where SeekerCode = @Seekercode
end
if(@flag = 'AddGraduation')
begin
update TblEducationDetails set Graduation = @QualificationID,GraduationDegree = @DegreeId,GraduationSpecialization=@SpecalizationId,GraduationUniversity=@University,GraduationPassingYear=@PassingYear,GraduationMarks=@marks,GCourseType=@CourseType where SeekerCode = @Seekercode
end
if(@flag = 'AddPG')
begin
update TblEducationDetails set PG = @QualificationID,PGDegree = @DegreeId,PGSpecialization=@SpecalizationId,PGUniversity=@University,PGPassingYear=@PassingYear,PGMarks=@marks,PGCourseType=@CourseType where SeekerCode = @Seekercode
end
if(@flag = 'EmploymentDetails')
begin
insert into TblEmployementDetails values(@Seekercode,@CurrentEmployement,@EmployementType,@CompanyName,@Designation,@JoiningDate,@CurrentSalary,@SkillId,@JobProfile,@NoticePeriod)
end
if(@flag = 'GetEmploymentDetails')
begin
select * from TblEmployementDetails as e left outer join TblJobSeekerDetails as js on js.SeekerCode = e.SeekerCode where e.SeekerCode = @Seekercode
end
if(@flag = 'UpdateEmploymentDetails')
begin
update TblEmployementDetails set CurrentEmployement = @CurrentEmployement,EmployementType=@EmployementType,CompanyName=@CompanyName,Designation=@Designation,
JoiningDate=@JoiningDate,CurrentSalary=@CurrentSalary,SkillID=@SkillName,JobProfile=@JobProfile,NoticePeriod=@NoticePeriod where SeekerCode=@Seekercode
end
if(@flag = 'Skill')
begin
select * from TblSkill
end
if(@flag = 'ProjectDetails')
begin
insert into TblProjectDetails values(@Seekercode,@ProjectTitle,@ClientName,@ProjectStatus,@TotalExperience,@ProjectDetails)
end
if(@flag = 'GetProjectDetails')
begin
select * from TblProjectDetails as p left outer join TblJobSeekerDetails as js on js.SeekerCode = p.SeekerCode where p.SeekerCode = @Seekercode
end
if(@flag = 'UpdateProjectDetails')
begin
update TblProjectDetails set ProjectTitle=@ProjectTitle,ClientName=@ClientName,ProjectStatus=@ProjectStatus,TotalExperience=@TotalExperience,ProjectDetails=@ProjectDetails where SeekerCode = @Seekercode
end
if(@flag = 'JobAlertSave')
begin
insert into TblJobAlert values(@Seekercode,@AlertKeyword,@TotalExperience,@Location,@AlertName,@EmailId,@ContactNo)
end
if(@flag = 'UpdateCareerProfile')
begin
update TblJobAlert set CurrentIndustry=@IndustryId,TotalExperience=@TotalExperience,CurrentLocation=@Location,Category=@JobcategoryId,AlertEmail=@EmailId,AlertPhone=@ContactNo where SeekerCode = @Seekercode
end
if(@flag = 'CareerProfile')
begin
select * from TblJobSeekerDetails as js
left outer join TblJobAlert as ja on ja.SeekerCode = js.SeekerCode
inner join TblIndustry as i on i.IndustryId = ja.CurrentIndustry
inner join TblJobCategory as c on c.JobCategoryId = ja.Category
where js.SeekerCode = @Seekercode
end
if(@flag = 'Industry')
begin
select * from TblIndustry
end
if(@flag = 'JobCategory')
begin
select * from TblJobCategory where IndustryId = @IndustryId
end
if(@flag = 'PreferredLocation')
begin
select * from tblCity where CityId = @CityId
end
if(@flag = 'requiredQualification')
begin
select * from TblRequireQualification where RequireQualificationId = @RequireQualificationId
end
if(@flag = 'PreferredJob')
begin
select * from TblJobRegistration as jr
inner join TblJobAlert as ja on ja.Category = jr.JobCategoryId
inner join TblCompanyDetails as c on c.CompanyId = jr.CompanyId
where SeekerCode = @Seekercode
end
if(@flag = 'CompleteProfile')
begin
select * from TblJobSeekerDetails as js
inner join TblEducationDetails as ed on ed.SeekerCode = js.SeekerCode
inner join TblEmployementDetails as em on em.SeekerCode = js.SeekerCode
inner join TblProjectDetails as pr on pr.SeekerCode = js.SeekerCode
inner join TblJobAlert as ja on ja.SeekerCode = js.SeekerCode where js.SeekerCode = @Seekercode
end
if(@flag = 'AllCompanys')
begin
select sum(cf.Rating)/count(cf.Rating) as Rating,count(cf.Follow) as Follow,cd.CompanyId,cd.EmployerCode,CompanyName,NoOfEmployees,ContactNo,CompanyWebsite,CompanyEmail,
AboutCompany,IndustryId,CityId,Pincode,CompanyLogo,Portfolio,Slogan,Facebook,Twitter,LinkedIn,Instagram,[Google+],OwnerName,HRName,HREmail,HRNumber,RegistrationDate
from TblCompanyFeedback as cf right outer join TblCompanyDetails cd on cd.CompanyId = cf.CompanyId
group by cf.CompanyId,cd.CompanyId,cd.EmployerCode,CompanyName,NoOfEmployees,ContactNo,CompanyWebsite,CompanyEmail,AboutCompany,IndustryId,CityId,Pincode,CompanyLogo,
Portfolio,Slogan,Facebook,Twitter,LinkedIn,Instagram,[Google+],OwnerName,HRName,HREmail,HRNumber,RegistrationDate
end
if(@flag = 'CompanysDetails')
begin
select sum(cf.Rating)/count(cf.Rating) as Rating,count(cf.Follow) as Follow,cd.CompanyId,cd.EmployerCode,CompanyName,NoOfEmployees,ContactNo,CompanyWebsite,CompanyEmail,
AboutCompany,IndustryId,CityId,Pincode,CompanyLogo,Portfolio,Slogan,Facebook,Twitter,LinkedIn,Instagram,[Google+],OwnerName,HRName,HREmail,HRNumber,RegistrationDate
from TblCompanyFeedback as cf right outer join TblCompanyDetails cd on cd.CompanyId = cf.CompanyId where cd.CompanyId = @CompanyId
group by cf.CompanyId,cd.CompanyId,cd.EmployerCode,CompanyName,NoOfEmployees,ContactNo,CompanyWebsite,CompanyEmail,AboutCompany,IndustryId,CityId,Pincode,CompanyLogo,
Portfolio,Slogan,Facebook,Twitter,LinkedIn,Instagram,[Google+],OwnerName,HRName,HREmail,HRNumber,RegistrationDate
end
if(@flag = 'SaveCompanyFeedback')
begin
insert into TblCompanyFeedback values(@CompanyId,@EmployerCode,@Seekercode,@Rating,@Review,@DoyouCurrentlyworkhere,@Follow,@StatusID,@isDelete)
end
if(@flag = 'ReviewCompanyFeedback')
begin
update TblCompanyFeedback set Review=@Review,Rating=@Rating,DoyouCurrentlyworkhere = @DoyouCurrentlyworkhere where Seekercode = @Seekercode and CompanyId = @CompanyId and EmployerCode = @EmployerCode
end
if(@flag = 'FollowCompany')
begin
update TblCompanyFeedback set Follow = @Follow where Seekercode = @Seekercode and CompanyId = @CompanyId and EmployerCode = @EmployerCode
end
if(@flag = 'CompanyFeedback')
begin
select * from TblCompanyFeedback where Seekercode = @Seekercode and CompanyId = @CompanyId 
end
if(@flag = 'jobdetails')
begin
select * from TblJobRegistration as jr 
inner join TblCompanyDetails as cd on cd.CompanyId = jr.CompanyId
inner join TblJobCategory as jc on jc.JobCategoryId = jr.JobCategoryId
inner join TblIndustry as i on i.IndustryId = jc.IndustryId where jr.PostJobCode = @PostJobCode
end
if(@flag = 'AllJobs')
begin
select * from TblJobRegistration as jr 
inner join TblCompanyDetails as c on c.CompanyId = jr.CompanyId
end
if(@flag = 'SearchJobs')
begin
select * from TblJobRegistration as jr 
inner join TblCompanyDetails as c on c.CompanyId = jr.CompanyId
where jr.JobTitle like '%'+@JobTitle+'%' or jr.TotalExperience like '%'+@TotalExperience+'%'
end
if(@flag = 'totalcompany')
begin
select max(CompanyId) as totalcompany from TblCompanyDetails
end
if(@flag = 'totaljobs')
begin
select max(PostJobId) as totaljobs from TblJobRegistration
end
if(@flag = 'totalapplyjobs')
begin
select count(AppliedJobID) as total from TblApplyJobs where JobSeekerCode = @Seekercode
end
if(@flag = 'ViewProfile')
begin
select count(EmployerCode) as totalview from tblprofileview where SeekerCode = @Seekercode
end
----------------------------------------------Saurabh End--------------------------------------------------------//

----------------------------------------------Muskan Start--------------------------------------------------------//

if(@flag = 'LoginSeeker')
begin
select * from TblJobSeekerDetails where EmailId=@EmailId and Password=@Password 
end
if(@flag = 'ForgetPasswordseek')
begin
select * from TblJobSeekerDetails where EmailId=@EmailId
end
if(@flag ='UpdateSeeker')
begin
update TblJobSeekerDetails set EmailId=@EmailId,ContactNo=@ContactNo,Password=@Password where Seekercode=@Seekercode
end
if(@flag ='fetchseeker')
begin
select EmailId,ContactNo,Password from TblJobSeekerDetails where SeekerCode=@Seekercode
end
if(@flag ='fetchseekerId')
begin
select SeekerId from TblJobSeekerDetails where SeekerCode = @Seekercode
end
if(@flag ='Deleteseeker')
begin
update TblJobSeekerDetails set IsDelete= 1 where SeekerId=@SeekerId
end
if(@flag = 'CheckExternalLogin')
begin
select * from TblJobSeekerDetails where EmailId =@EmailId
end
if(@flag='RegisterExternalLogin')
begin
insert into TblJobSeekerDetails values(@Seekercode,@SeekerName,@EmailId,@Password,@ContactNo,@AlternateContactNo,@DOB,@Gender,
@CorrespondenceAddress,@PermanentAddress,@Pincode,@CityId,@LanguageID,@PhysicallyChallenged,@CasteCategory,@MaritalStatus,
@DateOfRegistration,@ProfileSummary,@StatusID,@ResumePDF,@ProfileIMG,@isDelete)
end
----------------------------------------------Muskan End--------------------------------------------------------//
---------------------------------------------Sanket-------------------------------------------------------------//


if(@flag='FindJobs1')
begin
select jr.PostJobCode,jr.JobTitle,CONCAT(c.CityName,',',s.StateName,',',co.CountryName)as Location1 ,jr.Salary,jr.JobType,jr.ApplicationEndDate,* from TblJobRegistration as jr
inner join tblCity as c on c.CityId= jr.JobLocation
inner join tblState as s on s.StateId= c.StateId
inner join tblCountry as co on co.CountryId=s.CountryId
inner join TblCompanyDetails as cd on cd.CompanyId = jr.CompanyId
where jr.JobTitle=@JobTitle 
or jr.JobLocation=@CityId
or jr.Salary = @Salary 
or jr.TotalExperience=@TotalExperience
end

--PopupApplyJobsView--

if(@flag='ApplyJobView')
begin
select jr.PostJobCode,jr.JobTitle,CONCAT(c.CityName,',',s.StateName,',',co.CountryName)as Location1 ,jr.Salary,jr.JobType,JobDescription,cd.CompanyName from TblJobRegistration as jr
inner join tblCity as c on c.CityId= jr.JobLocation
inner join tblState as s on s.StateId= c.StateId
inner join tblCountry as co on co.CountryId=s.CountryId
inner join TblCompanyDetails as cd on cd.CompanyId=jr.CompanyId
where PostJobCode=@PostJobCode
end

if(@flag='ManageApplications')
begin
update TblApplyJobs set StatusID=@StatusID where AppliedJobID=@AppliedJobId
end

--PDFtoDATABASE

if(@flag='SubmitPDF')
begin
insert into TblApplyJobs values (@Seekercode,@PostJobCode,@StatusID,@AppliedDate,@ResumePDF,@isDelete)
end

--ManageApplicationGrid

if(@flag='ApplicationGrid')
begin
select a.JobSeekerCode,r.JobTitle,a.AppliedDate,cd.CompanyName,a.ResumePDF,st.Status,a.AppliedJobID  from TblApplyJobs as a
inner join TblJobSeekerDetails as s on s.SeekerCode = a.JobSeekerCode
inner join TblJobRegistration as r on r.PostJobCode=a.PostJobCode
inner join TblCompanyDetails cd on cd.CompanyId=r.CompanyId
inner join TblStatus st on st.StatusId=a.StatusID 
where JobSeekerCode=@Seekercode
end

--GridViewDelete

if(@flag='IsDelete')
begin
update TblApplyJobs set isDelete=1 where AppliedJobID=@AppliedJobId
end

--UpdateStatusofJob

if(@flag='SubmitApplication')
begin
update TblApplyJobs set StatusID=@StatusID where AppliedJobID=@AppliedJobId
end

--DownloadPDF
if(@flag='DownloadPDF')
begin
select ResumePDF from TblApplyJobs where JobSeekerCode=@SeekerId
end

--MuskanLogin
if(@flag = 'LoginSeeker')
begin
select * from TblJobSeekerDetails where EmailId=@EmailId and Password=@Password 
end
if(@flag='SeekerDetails')
begin
select SeekerName,EmailId,ContactNo,c.CityName,ResumePDF from TblJobSeekerDetails as s
inner join tblCity as c on c.CityId=s.CityId 
where SeekerCode=@Seekercode
end
if(@Flag='GetFindResume')
begin
select js.SeekerCode,js.SeekerName,j.TotalExperience,r.RequireQualification,j.JobType,js.ResumePDF from TblApplyJobs as a
inner join TblJobRegistration as j on j.PostJobCode = a.PostJobCode
inner join TblRequireQualification as r on r.RequireQualificationId=j.RequiredQualificationId
inner join TblJobSeekerDetails as js on js.SeekerCode = a.JobSeekerCode
where CityId=@CityId or JobTitle =@JobTitle
end
if(@Flag='GetJobCategory')
begin
select * from TblJobCategory
end
if(@Flag='GetJobTitle')
begin
select JobCategoryId,JobTitle from TblJobRegistration where JobCategoryId=@JobCatagoryId
end
if(@flag='GetJobLocation')
begin
select * from tblCity
end
if(@flag='Update')
begin
update TblJobSeekerDetails set StatusId=@StatusId where SeekerCode=@Seekercode
end
if(@flag = 'LoginSeeker')
begin
select * from TblJobSeekerDetails where EmailId=@EmailId and Password=@Password and IsDelete=0
end
if(@flag = 'ForgetPasswordseek')
begin
select * from TblJobSeekerDetails where EmailId=@EmailId
end
if(@flag ='UpdateSeeker')
begin
update TblJobSeekerDetails set EmailId=@EmailId,ContactNo=@ContactNo,Password=@Password where Seekercode=@Seekercode
end
if(@flag ='fetchseeker')
begin
select EmailId,ContactNo,Password from TblJobSeekerDetails where SeekerCode=@Seekercode
end
if(@flag ='Deleteseeker')
begin
update TblJobSeekerDetails set isDelete= @isDelete where SeekerCode=@Seekercode
end
if(@flag = 'CheckExternalLogin')
begin
select * from TblJobSeekerDetails where EmailId =@EmailId
end
if(@flag='RegisterExternalLogin')
begin
insert into TblJobSeekerDetails values(@Seekercode,@SeekerName,@EmailId,@Password,@ContactNo,@AlternateContactNo,@DOB,@Gender,
@CorrespondenceAddress,@PermanentAddress,@Pincode,@CityId,@LanguageID,@PhysicallyChallenged,@CasteCategory,@MaritalStatus,
@DateOfRegistration,@ProfileSummary,@StatusID,@ResumePDF,@ProfileIMG,@isDelete)
end
if(@flag='CheckAppliedSeeker')
begin
select * from TblApplyJobs where JobSeekerCode=@Seekercode and PostJobCode=@PostJobCode and isDelete=0
end
end

GO
