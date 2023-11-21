CREATE PROCEDURE [PINChat].[spSettings_GetByKey]
	@Key nvarchar(100)
AS
begin 
	set nocount on;

	SELECT [Id], [Key], [Value]
	FROM [PINChat].[Settings] m
	WHERE 
		[Key] = @Key
end
