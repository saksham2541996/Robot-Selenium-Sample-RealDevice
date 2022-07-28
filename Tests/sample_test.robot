*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser
 
*** Variables ***

*** Test Cases ***

Example of connecting to Lambdatest via Robot Framework 
	[Timeout]   ${TIMEOUT}
	Page should contain element  name:li1
	Page should contain element  name:li2

	Click button  name:li1	
	Click button  name:li2	
		
	Input text  id:sampletodotext  Yey Let's add it to list
	Click button  id:addbutton
	