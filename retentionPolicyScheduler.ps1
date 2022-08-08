# Delete all Files in C:\temp older than 30 day(s)
$Path = "C:\file\path\to\server" #replace the path
$Daysback = "-5" #Change to any amount of days to keep retention policy
$string = "*log*" #Replace 'log' with the word you're looking for.
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path -Recurse -Include $string | Where{ $_.LastWriteTime -lt $DatetoDelete } | Remove-Item