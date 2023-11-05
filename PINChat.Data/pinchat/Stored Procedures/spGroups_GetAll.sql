CREATE PROCEDURE [PINChat].[spGroups_GetAll]
AS
begin 
	set nocount on;

	SELECT Id, [Name]
	FROM [PINChat].[Groups]
	WHERE IsArchived = 0
end