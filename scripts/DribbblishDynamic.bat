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
@powershell -NoProfile -ExecutionPolicy Bypass -Command "cd $(spicetify -c | Split-Path); cd Themes\DribbblishDynamic\; cp dribbblish-dynamic.js ..\..\Extensions" >nul
spicetify config extensions dribbblish-dynamic.js >nul
spicetify config current_theme DribbblishDynamic color_scheme dark >nul
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 >nul
spicetify apply >nul
