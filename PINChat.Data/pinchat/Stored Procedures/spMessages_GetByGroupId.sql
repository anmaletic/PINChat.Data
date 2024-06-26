﻿CREATE PROCEDURE [PINChat].[spMessages_GetByGroupId]
	@TargetId nvarchar(128)
AS
begin 
	set nocount on;

	SELECT 
		m.Id,
		m.SourceId,
		u.AvatarPath,
		m.TargetId,
		m.Content,
		m.[Image],
		m.CreatedDate
	FROM [PINChat].[Messages] m
		INNER JOIN [PINChat].[Users] u ON m.SourceId = u.Id
	WHERE 
		TargetId = @TargetId
		AND m.IsArchived = 0
end
