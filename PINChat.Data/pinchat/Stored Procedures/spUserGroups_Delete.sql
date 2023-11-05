CREATE PROCEDURE [PINChat].[spUserGroups_Delete]
	@Id nvarchar(128),
	@UserId nvarchar(128),
	@GroupId nvarchar(128)
AS
begin
	set nocount on;

	declare @RecordId nvarchar(128);

	select @RecordId = Id
	from [PINChat].[UserGroups]
	where 
		UserId = @UserId
		and GroupId = @GroupId
		and IsArchived = 0

	update [PINChat].[UserGroups]
	set IsArchived = 1
	where Id=@RecordId
end