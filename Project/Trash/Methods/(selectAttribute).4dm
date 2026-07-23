//%attributes = {"invisible":true}
C_LONGINT:C283($nPos; $nLine)
ARRAY TEXT:C222(arrText; 0)

varJSON:=arrJSON{arrTitle}
TEXT TO ARRAY:C1149(varJSON; arrText; 50000; ""; 13; Plain:K14:1; *)

// retieve the line nuber
$nLine:=OB Get:C1224(OB Get:C1224(objSymbol; arrPropertyName{$1}); "line")

// retrieve the offset
$nPos:=OB Get:C1224(OB Get:C1224(objSymbol; arrPropertyName{$1}); "offset")+1

//set size=18 and color=Fushia to the first element of selected attribute
ST SET ATTRIBUTES:C1093(arrText{$nLine}; $nPos; $nPos+2; Attribute text color:K65:7; "Fuchsia")
ST SET ATTRIBUTES:C1093(arrText{$nLine}; $nPos; $nPos+2; Attribute text size:K65:6; 18)

// set backgroud color=gainsboro to the line of selected attribute
ST SET ATTRIBUTES:C1093(arrText{$nLine}; ST Start text:K78:15; ST End text:K78:16; Attribute background color:K65:8; "gainsboro")

varJSON:=""
For ($i; 1; Size of array:C274(arrText))
	varJSON:=varJSON+arrText{$i}+"\n"
End for 