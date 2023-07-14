@echo off

set /p "ASSETTARGET=Target Assets path: "

@echo Mapping Global Common Script
mkdir "%ASSETTARGET%\Global Scripts"
mklink /J "%ASSETTARGET%\Global Scripts\Common" "E:\Dev\DaftAppleGames\DaftAppleGames-Global-Resources\Global Scripts\Common"

@echo Mapping Global Editor Scripts
mklink /J "%ASSETTARGET%\Global Scripts\Editor" "E:\Dev\DaftAppleGames\DaftAppleGames-Global-Resources\Global Scripts\Editor"

@echo Mapping Global Shared Assets
mklink /J "%ASSETTARGET%\Global Assets" "E:\Dev\DaftAppleGames\DaftAppleGames-Global-Resources\Global Assets"

@echo Mapping Project Shared Assets
mklink /J "%ASSETTARGET%\Project Shared Assets" "E:\Dev\DaftAppleGames\Darkserry-Redemption\Darskerry-Redemption-2022-BIRP_MASTER\Project Shared Assets"

@echo Mapping Script Templates
mklink /J "%ASSETTARGET%\ScriptTemplates" "E:\Dev\DaftAppleGames\Global-Resources\ScriptTemplates"

pause
