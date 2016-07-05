@echo off
:: Renaming arguments
set file_name=%~1%
set file_path=%~2%

:: Change this accordingly to your After Effects version
set version=CC 2015.3

:: Adobe After Effects folder location
set base_path=D:\joebo\Creative Cloud Apps
set ae_folder_path=%base_path%\Adobe After Effects %version%\Support Files
set ae_scripts_folder_path=%ae_folder_path%\Scripts

:: Copying script to Scripts folder
REM copy "%file_path%\%file_name%" "%ae_scripts_folder_path%"

cd "%ae_folder_path%"

:: Running script in After Effects
AfterFX -r "%file_path%\%file_name%"

:: Printing happy feedback in the console
echo AfterFX ran script "%file_path%\%file_name%"
