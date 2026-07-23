//%attributes = {"invisible":true}
// vSchema contains the JSON schema
// vJSON contains the JSON object to validate

//load the JSON document to validate
vJSON:=arrJSON{arrTitle}

// validate the varJSON against to varSchema
oResult:=JSON Validate:C1456(JSON Parse:C1218(vJSON; *); JSON Parse:C1218(vSchema))

// read theme-appropriate colors from hidden reference rectangles
var $fg; $bg : Integer

// check the validity
If (OB Get:C1224(oResult; "success")=False:C215)
	//if unsuccessful, use error fill
	OBJECT GET RGB COLORS(*; "refErrorFill"; $fg; $bg)
	OBJECT SET RGB COLORS:C628(oResult; 0x0000; $bg)
Else 
	//if successful, use success fill
	OBJECT GET RGB COLORS(*; "refSuccessFill"; $fg; $bg)
	OBJECT SET RGB COLORS:C628(oResult; 0x0000; $bg)
End if 