@echo OFF
color 0B 
mode con:cols=100 lines=15
echo.
echo.
echo.
@echo   �����    ������       �����       ��     ������   ������ 
@echo  ��    ��  ��   ��    ��          ��  ��   ��   ��  ��   ��
@echo  ���       ��   ��   ��          ��    ��  ��   ��  ��   ��
@echo   ���      �����     ��          ��������  �����    �����
@echo    ���     ��        ��          ��    ��  ��       ��
@echo       ��   ��         ��         ��    ��  ��       ��
@echo  �����     ��           �����    ��    ��  ��       ��
@echo.
@echo off   
@powershell rm $(spicetify -c) >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
spicetify config current_theme DanDrumStoneNew >nul
spicetify apply >nul