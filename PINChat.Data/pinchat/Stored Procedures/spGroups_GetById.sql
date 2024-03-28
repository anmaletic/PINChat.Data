CREATE PROCEDURE [PINChat].[spGroups_GetById]
	@Id nvarchar(128)
AS
begin 
	set nocount on;

	SELECT Id, [Name], [Avatar], [AvatarPath]
	FROM [PINChat].[Groups]
	WHERE Id = @Id
		AND IsArchived = 0
end