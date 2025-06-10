SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircraft](
	[AircraftID] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](max) NOT NULL,
	[Capacity] [int] NOT NULL,
	[Range] [float] NOT NULL,
 CONSTRAINT [PK_Aircraft] PRIMARY KEY
(
	[AircraftID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
