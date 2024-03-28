CREATE PROCEDURE [PINChat].[spGroups_Update]
	@Id nvarchar(128),
	@Name nvarchar(50),
	@Avatar varbinary(max),
	@AvatarPath nvarchar(255)
AS
begin
	set nocount on;

	update [PINChat].[Groups]
	set 
		[Name] = @Name,
		Avatar = @Avatar,
		AvatarPath = @AvatarPath
	where
		Id = @Id
end