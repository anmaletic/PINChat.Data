CREATE PROCEDURE [PINChat].[spUserContacts_GetById]
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
	FROM [PINChat].[UserContacts] uc
		INNER JOIN Users u ON u.Id = uc.ContactId
	WHERE uc.UserId = @Id
		AND uc.IsArchived = 0
end