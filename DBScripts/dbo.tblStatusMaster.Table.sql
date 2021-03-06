USE [FlightBookingDB]
GO
/****** Object:  Table [dbo].[tblStatusMaster]    Script Date: 16-05-2022 02:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatusMaster](
	[StatusCode] [int] NOT NULL,
	[StatusDescription] [varchar](100) NOT NULL,
	[IsActive] [char](1) NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](100) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblStatusMaster] PRIMARY KEY CLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblStatusMaster] ADD  CONSTRAINT [DF_tblStatusMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblStatusMaster] ADD  CONSTRAINT [DF_tblStatusMaster_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
