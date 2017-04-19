
@ECHO off

:reecho
ECHO.
ECHO Massive Chalice - massive
ECHO Diablo 3        - d3
ECHO Civilization 5  - civ5
ECHO Civilization 6  - civ6
ECHO For The King    - ftk
ECHO Slime Ranchers  - slime
ECHO CLOSE LAUNCHER  - end
ECHO.

:start 
  set /p game=Enter shortcut name: 

  IF "%game%" == "massive" (
  call massive.bat
  GOTO launch )
  IF "%game%" == "d3" (
  call d3.bat
  GOTO launch )
  IF "%game%" == "civ5" (
  call civ5.bat
  GOTO launch )
  IF "%game%" == "civ6" (
  call civ6.bat
  GOTO launch )
  IF "%game%" == "ftk" (
  call ftk.bat
  GOTO launch )
  IF "%game%" == "slime" (
  call slime.bat
  GOTO launch )
  IF "%game%" == "end" (
  GOTO close
  ) ELSE (
  GOTO error )

:launch
  ECHO Enjoy the game
  GOTO close

:error
  ECHO Invalid input
  ECHO Please input a valid shortcut
  ECHO.
  GOTO reecho

:close
  ECHO Goodbye...
  SLEEP 2