﻿CREATE PROCEDURE [PINChat].[spUsers_Update]
	@Id nvarchar(128),
	@DisplayName nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Avatar varbinary(max)
AS
begin
	set nocount on;

	update [PINChat].[Users]
	set 
		DisplayName = @DisplayName,
		FirstName = @FirstName,
		LastName = @LastName,
		Avatar = @Avatar
	where
		Id = @Id
end