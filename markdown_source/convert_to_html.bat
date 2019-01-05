echo off

REM Make sure that we're on the right drive.
C:


REM Change dir to Perl bin.
cd \Perl64\bin


REM Convert markdown to html.
echo on
perl Markdown.pl --html4tags \Users\grraka\Documents\GitHub\gregraka.github.io\markdown_source\test.txt > \Users\grraka\Documents\GitHub\gregraka.github.io\test.html
perl Markdown.pl --html4tags \Users\grraka\Documents\GitHub\gregraka.github.io\markdown_source\test2.txt > \Users\grraka\Documents\GitHub\gregraka.github.io\test2.html
echo off
REM Add new line above 'echo off.'


echo --------------------------------
echo %DATE%  %TIME%
echo ________________________________
pause
