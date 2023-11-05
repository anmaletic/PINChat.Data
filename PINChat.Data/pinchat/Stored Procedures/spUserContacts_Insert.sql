CREATE PROCEDURE [PINChat].[spUserContacts_Insert]
	@Id nvarchar(128),
	@UserId nvarchar(128),
	@ContactId nvarchar(128)
AS
begin
	set nocount on;

	declare @RecordExists int;

	select @RecordExists = 1
	from [PINChat].[UserContacts]
	where 
		UserId = @UserId
		and ContactId = @ContactId
		and IsArchived = 1

	if @RecordExists = 1
	begin
		update [PINChat].[UserContacts]
		set IsArchived = 0
		where 
			UserId = @UserId
			and ContactId = @ContactId
	end
	else
	begin
		insert into [PINChat].[UserContacts] (UserId, ContactId)
		values (@UserId, @ContactId)
	end
end