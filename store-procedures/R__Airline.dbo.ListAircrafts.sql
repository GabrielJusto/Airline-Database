USE Airline
GO

CREATE OR ALTER PROCEDURE dbo.ListAircrafts
AS
BEGIN
    SELECT 
        a.AircraftID,
        a.Model,
        a.Capacity,
        a.Range,
        a.AverageFuelConsumption
    FROM Airline.dbo.Aircraft a
END