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
	OBJECT GET RGB COLORS:C1074(*; "refErrorFill"; $fg; $bg)
	OBJECT SET RGB COLORS:C628(oResult; ""; $bg)
Else 
	//if successful, use success fill
	OBJECT GET RGB COLORS:C1074(*; "refSuccessFill"; $fg; $bg)
	OBJECT SET RGB COLORS:C628(oResult; ""; $bg)
End if 