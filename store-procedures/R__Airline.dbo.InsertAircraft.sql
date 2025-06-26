USE Airline
GO

CREATE OR ALTER PROCEDURE dbo.InsertAircraft
    @model VARCHAR(255),
    @capacity INT,
    @range FLOAT,
    @avaregeFuelConsumption FLOAT
AS
BEGIN
    INSERT INTO dbo.Aircraft
    (
        Model,
        Capacity,
        [Range],
        AverageFuelConsumption
    )
    VALUES
    (
        @model,
        @capacity,
        @range,
        @avaregeFuelConsumption
    )
END