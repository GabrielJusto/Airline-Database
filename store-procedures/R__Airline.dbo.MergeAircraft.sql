USE Airline
GO

CREATE OR ALTER PROCEDURE dbo.MergeAircraft
    @aircraftId INT = NULL,
    @model VARCHAR(255) = NULL,
    @capacity INT = NULL,
    @range FLOAT = NULL,
    @avaregeFuelConsumption FLOAT = NULL
AS
BEGIN



    IF @aircraftId IS NULL
    BEGIN

        IF(@capacity IS NULL)
            RAISERROR('@capacity can not be null',10,1);
        
        IF(@range IS NULL)
            RAISERROR('@range can not be null',10,1);
        
        IF(@avaregeFuelConsumption IS NULL)
            RAISERROR('@avaregeFuelConsumption can not be null',10,1);

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
    ELSE
    BEGIN
        UPDATE dbo.Aircraft SET
            Capacity = ISNULL(@capacity, Capacity),
            [Range] = ISNULL(@range, [Range]),
            AverageFuelConsumption = ISNULL(@avaregeFuelConsumption, AverageFuelConsumption)

        WHERE 
            AircraftID = @aircraftId
    END

    
END