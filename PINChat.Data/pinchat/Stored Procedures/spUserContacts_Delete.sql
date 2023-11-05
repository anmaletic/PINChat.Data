CREATE PROCEDURE [PINChat].[spUserContacts_Delete]
	@Id nvarchar(128),
	@UserId nvarchar(128),
	@ContactId nvarchar(128)
AS
begin
	set nocount on;

	declare @RecordId nvarchar(128);

	select @RecordId = Id
	from [PINChat].[UserContacts]
	where 
		UserId = @UserId
		and ContactId = @ContactId
		and IsArchived = 0

	update [PINChat].[UserContacts]
	set IsArchived = 1
	where Id=@RecordId
end