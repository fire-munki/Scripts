$logpath="U:\test"
#Log path

$stamp=Get-Date -format "yyyy-MM-dd HH-mm"
#Create date time stamp

$filename="$stamp.log"
#Format yyyy-mm-dd HH:mm in log filename

robocopy C:\Users\Matt\Documents\Downloads U:\test /mir /xo /log:"$logpath\$filename"
#Run robocopy