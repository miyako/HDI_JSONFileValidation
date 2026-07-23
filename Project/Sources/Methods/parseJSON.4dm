//%attributes = {"invisible":true}
// vJSON contains the JSON object to validate

//load the JSON document to validate
vJSON:=arrJSON{arrTitle}

// Parse the JSON document
vResult:=JSON Stringify:C1217(JSON Parse:C1218(vJSON; *); *)

// set the new "__symbols" attribute in TEAL CSS color
ST SET ATTRIBUTES:C1093(vResult; Position:C15("__symbol"; vResult)-1; ST End text:K78:16; Attribute text color:K65:7; "Teal")

