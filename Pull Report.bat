@echo off
rem =====================================
rem Include robware/rvtools in searchpath
rem =====================================
set path=%path%;c:\program files (x86)\robware\rvtools


rem =========================
rem Set environment variables
rem =========================


set $user=
# Can be encrypted using RVTools Encryption .exe file
set $pass=_RVToolsPWD****************************

rem ===================
rem Start RVTools batch
rem ===================

start cmd /k call vCenter
start cmd /k call vCenter1
start cmd /k call vCenter2
start cmd /k call vCenter3
start cmd /k call vCenter4
start cmd /k call vCenter5
start cmd /k call vCenter6
start cmd /k call vCenter7
start cmd /k call vCenter8
start cmd /k call vCenter9
start cmd /k call vCenter10
start cmd /k call vCenter11
start cmd /k call vCenter12
start cmd /k call vCenter13
start cmd /k call vCenter14
start cmd /k call vCenter15
start cmd /k call vCenter16
start cmd /k call vCenter17
start cmd /k call vCenter18
start cmd /k call vCenter19
start cmd /k call vCenter20
start cmd /k call vCenter21
start cmd /k call vCenter22
start cmd /k call vCenter23
start cmd /k call vCenter24
timeout 1800
start powershell 'Merge-All-vCenter.ps1'
exit