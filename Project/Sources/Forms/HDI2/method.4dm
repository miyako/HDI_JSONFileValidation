
Case of 
	: (Form event code:C388=On Load:K2:1)
		initHDI
		
		C_TEXT:C284(vResult; vJSON; vSchema)
		C_OBJECT:C1216(oResult)
		
		//load the JSON schema
		vSchema:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"PersonSchema.json")
		
	: (Form event code:C388=On Page Change:K2:54)
		Var:=TextTabControl{TabControl}
		Case of 
			: (FORM Get current page:C276=3)
				arrTitle:=1
				validateJSON
				
			: (FORM Get current page:C276=4)
				arrTitle:=1
				parseJSON
		End case 
		
End case 
