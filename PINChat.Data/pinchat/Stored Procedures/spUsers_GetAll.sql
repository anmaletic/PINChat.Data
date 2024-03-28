CREATE PROCEDURE [PINChat].[spUsers_GetAll]
AS
begin 
	set nocount on;

	SELECT Id, DisplayName, FirstName, LastName, Avatar, AvatarPath, LastLoginDate, CreatedDate
	FROM [PINChat].[Users]
	WHERE 
		DisplayName is not null
		AND IsArchived = 0
end