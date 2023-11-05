CREATE PROCEDURE [PINChat].[spUserGroups_Insert]
	@Id nvarchar(128),
	@UserId nvarchar(128),
	@GroupId nvarchar(128)
AS
begin
	set nocount on;

	declare @RecordExists int;

	select @RecordExists = 1
	from [PINChat].[UserGroups]
	where 
		UserId = @UserId
		and GroupId = @GroupId
		and IsArchived = 1

	if @RecordExists = 1
	begin
		update [PINChat].[UserGroups]
		set IsArchived = 0
		where 
			UserId = @UserId
			and GroupId = @GroupId
	end
	else
	begin
		insert into [PINChat].[UserGroups] (UserId, GroupId)
		values (@UserId, @GroupId)
	end
end