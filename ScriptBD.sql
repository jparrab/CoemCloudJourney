/****** Object:  Table [dbo].[CloudJourney_Charges]    Script Date: 10/31/2019 7:39:56 AM ******/
USE [CoemCloudJourney]
  GO
  
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CloudJourney_Charges](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Order] [int] NOT NULL,
	[Go] [int] NULL,
 CONSTRAINT [PK_CloudJourney_Charges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CloudJourney_Criteria]    Script Date: 10/31/2019 7:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CloudJourney_Criteria](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Weight] [decimal](5, 2) NOT NULL,
	[TypeAnalysis] [int] NOT NULL,
	[Order] [int] NOT NULL,
 CONSTRAINT [PK_CloudJourney_Criteria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CloudJourney_Result]    Script Date: 10/31/2019 7:39:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CloudJourney_Result](
	[Id] [uniqueidentifier] NOT NULL,
	[IdCriteria] [uniqueidentifier] NOT NULL,
	[IdCharges] [uniqueidentifier] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_CloudJourney_Result] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CloudJourney_Charges] ADD  CONSTRAINT [DF_CloudJourney_Charges_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CloudJourney_Criteria] ADD  CONSTRAINT [DF_CloudJourney_Criteria_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CloudJourney_Result] ADD  CONSTRAINT [DF_CloudJourney_Result_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CloudJourney_Result]  WITH CHECK ADD  CONSTRAINT [FK_CloudJourney_Result_CloudJourney_Charges] FOREIGN KEY([IdCharges])
REFERENCES [dbo].[CloudJourney_Charges] ([Id])
GO
ALTER TABLE [dbo].[CloudJourney_Result] CHECK CONSTRAINT [FK_CloudJourney_Result_CloudJourney_Charges]
GO
ALTER TABLE [dbo].[CloudJourney_Result]  WITH CHECK ADD  CONSTRAINT [FK_CloudJourney_Result_CloudJourney_Criteria] FOREIGN KEY([IdCriteria])
REFERENCES [dbo].[CloudJourney_Criteria] ([Id])
GO
ALTER TABLE [dbo].[CloudJourney_Result] CHECK CONSTRAINT [FK_CloudJourney_Result_CloudJourney_Criteria]
GO
