CREATE PROCEDURE [PINChat].[spMessages_GetById]
	@SourceId nvarchar(128),
	@TargetId nvarchar(128)
AS
begin 
	set nocount on;

	SELECT 
		m.Id,
		m.SourceId,
		m.TargetId,
		m.Content,
		m.[Image],
		m.CreatedDate
	FROM [PINChat].[Messages] m
	WHERE 
		(m.SourceId = @SourceId AND m.TargetId = @TargetId)
		OR 
		(m.SourceId = @TargetId AND m.TargetId = @SourceId)
		AND m.IsArchived = 0
end
