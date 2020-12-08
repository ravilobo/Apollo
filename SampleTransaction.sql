
create proc foo
as 

/***************************************************************************************
Project                 : 
Date Created            : 
Authors                 : 



Usage:


Version History
Version   Date           Author               Description
---------------------------------------------------------------------------------
1.0       12/26/2013     

****************************************************************************************/
set nocount on 

begin 
     
     begin try 
        BEGIN TRANSACTION 
		-- update  table 1
		-- update  table 2
		-- update  table 3

		COMMIT 
     return 0 
     end try 
     
     begin catch     
	 rollback transaction 
        select error_number() as errornumber ,error_message() as errormessage;
        -- log table 
		-- send mail  
		
	 return 1 
     end catch 
end 
go 
