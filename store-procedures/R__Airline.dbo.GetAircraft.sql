USE Airline
GO

CREATE OR ALTER PROCEDURE dbo.GetAircraft
@aircraftID INT
AS
BEGIN
    SELECT 
        a.AircraftID,
        a.Model,
        a.Capacity,
        a.Range,
        a.AverageFuelConsumption
    FROM Airline.dbo.Aircraft a
    WHERE a.AircraftID = @aircraftID
END