@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Ruby25-x64\bin\ruby.exe" "C:/temp/owncloudqs4/vendor/bundle/ruby/2.5.0/bin/safe_yaml" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Ruby25-x64\bin\ruby.exe" "%~dpn0" %*
