CREATE PROCEDURE [PINChat].[spGroups_Insert]
	@Id nvarchar(128),
    @Name nvarchar(50),
	@Avatar varbinary(MAX),
	@AvatarPath nvarchar(255)
AS
begin
	set nocount on;

	insert into [PINChat].[Groups] (Id, [Name], Avatar, AvatarPath)
	values (@Id, @Name, @Avatar, @AvatarPath)
end