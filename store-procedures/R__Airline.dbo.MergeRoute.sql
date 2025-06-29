USE Airline
GO

CREATE OR ALTER PROCEDURE dbo.MergeRoute
    @routeId INT = NULL,
    @aircraftId INT = NULL,
    @from NVARCHAR(MAX) = NULL,
    @to NVARCHAR(MAX) = NULL,
    @distance FLOAT = NULL,
    @arrival DATETIME = NULL,
    @departure DATETIME = NULL,
    @price FLOAT = NULL,
    @finalDate DATETIME = NULL
AS
BEGIN


    IF @routeId IS NULL
    BEGIN
        IF(@from IS NULL)
            RAISERROR('@from parameter can not be null',10,1);

        IF(@aircraftId IS NULL)
            RAISERROR('@aircraftId parameter can not be null',10,1);
    
        IF(@to IS NULL)
            RAISERROR('@to parameter can not be null',10,1);
            
        IF(@distance IS NULL)
            RAISERROR('@distance parameter can not be null',10,1);
            
        IF(@arrival IS NULL)
            RAISERROR('@arrival parameter can not be null',10,1);
            
        IF(@departure IS NULL)
            RAISERROR('@departure parameter can not be null',10,1);
       
        IF(@price IS NULL)
            RAISERROR('@price parameter can not be null',10,1);
            

        INSERT INTO [dbo].[Route]
        (
            [AircraftID],
            [From],
            [To],
            [Distance],
            [Arrival],
            [Departure],
            [Price]
        )VALUES
        (
            @aircraftId,
            @from,
            @to,
            @distance,
            @arrival,
            @departure,
            @price
        )
    END
    ELSE
    BEGIN
        UPDATE [dbo].[Route] SET
            [AircraftID] = ISNULL(@aircraftId, [AircraftID]),
            [From] = ISNULL(@from, [From]),
            [To] = ISNULL(@to, [To]),
            [Distance] = ISNULL(@distance, [Distance]),
            [Arrival] = ISNULL(@arrival, [Arrival]),
            [Departure] = ISNULL(@departure, [Departure]),
            [Price] = ISNULL(@price, [Price]),
            [FinalDate] = ISNULL(@finalDate, [FinalDate])
        WHERE 
            [RouteID] = @routeId
     END
    
END