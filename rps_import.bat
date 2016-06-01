@echo off
rem Make sure we have a schema
echo Locating schema file...
if not exist %ROOT%rps.schema goto no_schema
rem Test to see if the schema will load
echo Testing schema load...
dbs RPS:rpsutl -i %ROOT%rps.schema -ia -ir -s -n %ROOT%rpsmain.new %ROOT%rpstext.new
if "%ERRORLEVEL%"=="1" goto parse_fail
if exist %ROOT%rpsmain.new del /q %ROOT%rpsmain.new
if exist %ROOT%rpsmain.ne1 del /q %ROOT%rpsmain.ne1
if exist %ROOT%rpstext.new del /q %ROOT%rpstext.new
if exist %ROOT%rpstext.ne1 del /q %ROOT%rpstext.ne1
echo Test OK
rem Load the schema
echo Performing schema load...
dbs RPS:rpsutl -i %ROOT%rps.schema -ia -ir
if "%ERRORLEVEL%"=="1" goto load_fail
echo Schema loaded OK
goto done
:no_schema
echo *ERROR* Schema file not found!
goto done
:parse_fail
echo *ERROR* Schema parse failed - repository not changed
goto done
:load_fail
echo *ERROR* Schema load failed - repository not changed
:done
