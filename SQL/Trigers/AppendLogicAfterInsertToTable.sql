create trigger BenTableTest_AfterInsert_trigger on Bentabletest after insert 
as
begin
	declare @vname varchar(100)
	declare @vrecordID bigint

	select @vname = name  , @vrecordID = RECID from inserted
	update BENTABLETEST set name = 'Au test' where recid = @vrecordID

end
