//%attributes = {"invisible":true}
ARRAY TEXT:C222(TabControl; 0)
ARRAY TEXT:C222(TextTabControl; 0)

var $json : Collection
$json:=JSON Parse:C1218(File:C1566(Localized document path:C1105("SAMPLES.json"); fk platform path:K87:2).getText())

$json:=$json.orderBy("SampleSort asc")

COLLECTION TO ARRAY:C1562($json; TabControl; "Title"; TextTabControl; "Text")

TabControl:=1
Var:=TextTabControl{TabControl}

ARRAY TEXT:C222(arrTitle; 0)
ARRAY TEXT:C222(arrJSON; 0)

$json:=JSON Parse:C1218(File:C1566(Localized document path:C1105("JSON_example.json"); fk platform path:K87:2).getText())
COLLECTION TO ARRAY:C1562($json; arrTitle; "Title"; arrJSON; "JSON_text")
