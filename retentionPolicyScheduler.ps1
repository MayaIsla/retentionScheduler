
$Path = "C:/dir/to/Log" #replace the path
$num = Read-Host("Enter number here: ")
$Daysback = $num #Change to any amount of days to keep retention policy
$string = "*.log" #Log file extension
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays("-"+$Daysback)
Get-ChildItem $Path -Recurse -Filter $string | Where-Object{ $_.LastWriteTime -lt $DatetoDelete } | Remove-Item
