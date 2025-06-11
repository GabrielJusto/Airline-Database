USE Airline
GO

CREATE OR ALTER PROCEDURE dbo.InsertAircraft
    @model VARCHAR(255),
    @capacity INT,
    @range FLOAT
AS
BEGIN
    INSERT INTO dbo.Aircraft
    (
        Model,
        Capacity,
        [Range]
    )
    VALUES
    (
        @model,
        @capacity,
        @range
    )
END