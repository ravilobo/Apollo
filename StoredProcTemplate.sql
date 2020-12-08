
if object_id('foo') is not null drop proc foo
go 
create proc foo
as 

/***************************************************************************************
Project                 : 
Date Created            : 
Authors                 : 
Program Description     : 


Usage:


Version History
Version   Date           Author               Description
---------------------------------------------------------------------------------
1.0       12/08/2020     Rajesh            Created the proc.

****************************************************************************************/
set nocount on 

begin 
     
     begin try 
        

		  select 1/0

		  return 1

     end try 
     
     begin catch     
        select error_number() as errornumber ,error_message() as errormessage;        
		return 0 

     end catch 
end 
go 

--exec foo
