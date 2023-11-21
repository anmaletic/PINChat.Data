CREATE PROCEDURE [PINChat].[spMessages_GetByGroupId]
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
		TargetId = @TargetId
		AND m.IsArchived = 0
end
