//%attributes = {"invisible":true}
// vSchema contains the JSON schema
// vJSON contains the JSON object to validate

//load the JSON document to validate
vJSON:=arrJSON{arrTitle}

// validate the varJSON against to varSchema
oResult:=JSON Validate:C1456(JSON Parse:C1218(vJSON; *); JSON Parse:C1218(vSchema))

// check the validity
If (OB Get:C1224(oResult; "success")=False:C215)
	//if unsuccessful, set the background object to red
	OBJECT SET RGB COLORS:C628(oResult; 0x0000; 0x00FFCCCC)
Else 
	//if successful, set the background object to green
	OBJECT SET RGB COLORS:C628(oResult; 0x0000; 0x00DDFFCC)
End if 