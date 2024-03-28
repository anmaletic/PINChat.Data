CREATE PROCEDURE [PINChat].[spUserGroups_GetContactsById]
	@Id nvarchar(128)
AS
begin 
	set nocount on;

	SELECT 
		u.Id, 
		u.DisplayName, 
		u.FirstName, 
		u.LastName,
		u.Avatar,
		u.AvatarPath
	FROM [PINChat].[UserGroups] ug
		INNER JOIN Users u ON u.Id = ug.UserId
	WHERE ug.GroupId = @Id
		AND ug.IsArchived = 0
end