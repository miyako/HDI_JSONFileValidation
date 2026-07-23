//%attributes = {"invisible":true}
ARRAY TEXT:C222(TabControl; 0)
ARRAY TEXT:C222(TextTabControl; 0)
ALL RECORDS:C47([SAMPLES:2])
ORDER BY:C49([SAMPLES:2]; [SAMPLES:2]SampleSort:4; >)
SELECTION TO ARRAY:C260([SAMPLES:2]Title:2; TabControl)
SELECTION TO ARRAY:C260([SAMPLES:2]Text:3; TextTabControl)
UNLOAD RECORD:C212([SAMPLES:2])

TabControl:=1
Var:=TextTabControl{TabControl}

ALL RECORDS:C47([JSON_example:1])
SELECTION TO ARRAY:C260([JSON_example:1]Title:3; arrTitle; [JSON_example:1]JSON_text:2; arrJSON)