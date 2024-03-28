CREATE PROCEDURE [PINChat].[spGroups_GetAll]
AS
begin 
	set nocount on;

	SELECT Id, [Name], [Avatar], [AvatarPath]
	FROM [PINChat].[Groups]
	WHERE IsArchived = 0
end