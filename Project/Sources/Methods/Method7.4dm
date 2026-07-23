//%attributes = {}
ALL RECORDS:C47([JSON_example:1])
$j:=Selection to JSON:C1234([JSON_example:1])
Folder:C1567(fk desktop folder:K87:19).file("JSON_example-j.json").setText($j)

ALL RECORDS:C47([SAMPLES:2])
$j:=Selection to JSON:C1234([SAMPLES:2])
Folder:C1567(fk desktop folder:K87:19).file("SAMPLES-j.json").setText($j)