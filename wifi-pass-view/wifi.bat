cls
@echo off
title Wifi Password Viewer (Made by Aniket)
set /p name=Enter Your Name  :  
cls
:again
cls
echo.
echo.
echo.                                                                                                 
echo.                                                                                                    
echo                                              `......`                                              
echo                                      `-+shdNMMMMMMMMMMNdhs+-`                                      
echo                                  `:sdMMMMMMMMMNNmmNNMMMMMMMMMds:`                                  
echo                               `/hMMMMMNds+:.`        `.:+sdNMMMMMh/`                               
echo                             .sNMMMMdo-         ````         -odMMMMNs.                             
echo                            oMMMMm+.    `-+shmNMMMMMMNmhs+-     .+mMMMMo                            
echo                            +mNh:    .+hMMMMMMMMMMMMMMMMMMMMh+.    :hNm+                            
echo                                   /dMMMMMds+:.`    `.:+sdMMMMMh/                                   
echo                                  dMMMMh/`                `/hMMMMd                                  
echo                                  +ddo.    -+ydmNMMNNdy+-    .odd+                                  
echo                                        .omMMMMMMMMMMMMMMmo.                                        
echo                                       .NMMMNs/-````-/sNMMMN.                                       
echo                                        ohy/            /yho                                        
echo                                              `odNNdo`                                              
echo                                              mMMMMMMm                                              
echo                                             `NMMMMMMN`                                             
echo                                              -hMMMMh-                                              
echo                                                `..`                                                
echo.

pause
netsh wlan show profiles
echo Please Type the WIFI name in double inverted comma
echo etc: "test" or "Wifi name"
echo.
echo.
set /p choice=Please type the Wifi name for view password:
netsh wlan show profile %choice% key=clear
echo Press any key
pause >nul                              
echo.
echo.
set /p exit=Want to Exit?   [Y] or [N]
echo. 
if [%exit%] == [y] goto exit
if [%exit%] == [Y] goto exit                         
if [%exit%] == [n] goto again
if [%exit%] == [N] goto again
if [%exit%] == [ ] goto again 
if [%exit%] == [] goto again

:exit
@echo off
cls
color 0e
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        %name%              █▬█ █ ▀█▀                      bye
timeout 3 >nul
