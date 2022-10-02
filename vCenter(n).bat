@echo off

set $VCName=vCenter
set $VCDomain=domain
set $VCServer=%$VCName%.%$VCDomain%
set $MYDATE=%DATE:~10,14%%DATE:~4,2%%DATE:~7,2%
if not exist "<Path>\%$MYDATE%" mkdir "<Path>\%$MYDATE%"
set $AttachmentDir="<Path>\%$MYDATE%"
set $AttachmentFile=%$VCName%.%$VCDomain%.xlsx

rem ===================
rem Start RVTools batch
rem ===================
rvtools.exe -passthroughAuth -u %$user% -p %$pass% -s %$VCServer% -c ExportAll2xlsx -d %$AttachmentDir% -f %$AttachmentFile%

exit