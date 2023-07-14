@echo off
@echo Setting Params
call .\BuildParams.bat

@echo Merging Game Scenes
@echo Delete Existing Scene
del %SCENE_HOME%\%TARGET_SCENE% /f /q
@echo Merging Scenes...
%UNITY_HOME%\Editor\Data\Tools\UnityYAMLMerge.exe merge -l --force %SCENE_HOME%\%BASE_SCENE% %SCENE_HOME%\%MAIN_SCENE% %SCENE_HOME%\%OPTIMISED_GAME_OBJECT_SCENE% %SCENE_HOME%\%TARGET_SCENE%
@echo Merging Complete!