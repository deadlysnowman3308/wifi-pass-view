::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpaRQ+HKFeeCaIS5Of66/m7tUQbXd1sKdeWi+HZc64a6UqE
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZko0
::ZQ05rAF9IBncCkqN+0xwdVsFAlXi
::ZQ05rAF9IAHYFVzEqQIHIR1dARSDL3j3ELwZ/4g=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWHGF90k5JhxCRQiDXA==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpaRQ+HKFeeA6YX/Ofr092OpERTUfo6GA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
cls
@echo off
title Wifi Password Viewer (Aniket)
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
set /p choice=Please type the Wifi name for view password:
netsh wlan show profile %choice% key=clear
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
