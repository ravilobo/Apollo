	 end try 
     
     begin catch     
        select error_number() as errornumber ,error_message() as errormessage;
		-- insert log table 
         
		declare @subject varchar(500)
		declare @body    varchar(1000)
		declare @rec     varchar(1000) = 'rajesh@gmail.com;'		
		
		
		set @subject  = 'There was an exception'
		set @body     = 'There has been an exception. Following are the details:' 		                
		                + char(10) + ERROR_MESSAGE() 
						+ char(10) + char(13) + '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-==-='
						+ char(10) + 'Proc Name   : [some proc]'  
						+ char(10) + 'Server Name : [SAP server]'  		                
						
		EXEC msdb..sp_send_dbmail 			
			@recipients   = @rec,
			@subject      = @subject,
			@body         = @body

     end catch 
