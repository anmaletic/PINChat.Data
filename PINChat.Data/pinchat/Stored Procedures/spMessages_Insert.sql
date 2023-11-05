CREATE PROCEDURE [PINChat].[spMessages_Insert]
	@SourceId nvarchar(128),
    @TargetId nvarchar(128),
	@Content nvarchar(MAX),
	@Image nvarchar(MAX)
AS
begin
	set nocount on;

	insert into [PINChat].[Messages] (SourceId, TargetId, Content, [Image])
	values (@SourceId, @TargetId, @Content, @Image)
end