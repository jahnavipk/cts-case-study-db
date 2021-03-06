USE [FlightBookingDB]
GO
/****** Object:  Table [dbo].[tblUserMaster]    Script Date: 16-05-2022 02:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserMaster](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](1000) NULL,
	[EmailId] [varchar](100) NOT NULL,
	[ContactNo] [varchar](13) NOT NULL,
	[Gender] [char](1) NULL,
	[Age] [int] NULL,
	[RoleId] [int] NOT NULL,
	[IsActive] [char](1) NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblUserMaster] ADD  CONSTRAINT [DF_UserDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblUserMaster] ADD  CONSTRAINT [DF_UserDetails_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
