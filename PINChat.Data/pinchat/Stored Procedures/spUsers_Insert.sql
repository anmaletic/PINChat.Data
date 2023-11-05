CREATE PROCEDURE [PINChat].[spUsers_Insert]
	@Id nvarchar(128)
AS
begin
	set nocount on;

	insert into [PINChat].[Users] (Id)
	values (@Id)
end