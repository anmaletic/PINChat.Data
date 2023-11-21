CREATE PROCEDURE [PINChat].[spUsers_GetById]
	@Id nvarchar(128)
AS
begin 
	set nocount on;

	SELECT Id, DisplayName, FirstName, LastName, Avatar, LastLoginDate, CreatedDate
	FROM [PINChat].[Users]
	WHERE Id = @Id
		AND IsArchived = 0
end