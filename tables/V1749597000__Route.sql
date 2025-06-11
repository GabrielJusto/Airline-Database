USE Airline
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[AircraftID] [int] NOT NULL,
	[From] [nvarchar](max) NOT NULL,
	[To] [nvarchar](max) NOT NULL,
	[Distance] [float] NOT NULL,
	[Arrival] [datetime]NOT NULL,
	[Departure] [datetime] NOT NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED  ([RouteID]),
 CONSTRAINT [FK_Route_Aircraft_AircraftID] FOREIGN KEY([AircraftID]) REFERENCES [dbo].[Aircraft]([AircraftID]) 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
