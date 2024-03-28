CREATE PROCEDURE [PINChat].[spUserGroups_GetById]
	@Id nvarchar(128)
AS
begin 
	set nocount on;

	SELECT 
		g.Id,
		g.[Name],
		g.Avatar,
		g.AvatarPath
	FROM [PINChat].[UserGroups] ug
		INNER JOIN Groups g ON g.Id = ug.GroupId
	WHERE ug.UserId = @Id
		AND ug.IsArchived = 0
end