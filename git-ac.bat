set date=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
echo %data%

@echo off
Rem xcopy "C:\XUS\200-CODE\Dassault_Systemes\3DEXPERIENCE_XUS_Code\B423\win_b64"\*.* C:\XUS\100-APPS\3DEXPERIENCE_APP\CATApps\BMEDI_B423\CATApps\win_b64    /s /e /c /y /h /r  /d


cd /d %~dp0/docs

git add .

@echo WRITE UPDATE AND PRESS ENTER:
::set /p GetYourLog=
git commit -m "%date%"
git push -u origin master
cd ..

pause