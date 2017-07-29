@echo off
:: Submodule update
::git submodule update --recursive

:: import ilruntime dll

set SRC_MONO_PATH=ILRuntime\Mono.Cecil.20\
set SRC_MONOPDB_PATH=ILRuntime\Mono.Cecil.Pdb\
set SRC_ILRUNTIME_PATH=ILRuntime\ILRuntime\

set SRC_ASSET_PATH=KEngine\KEngine.UnityProject\Assets
set DST_ASSETS_PATH=KSFramework\Assets
set DST_PLUGIN_PATH=KSFramework\Assets\Plugins\KEngine
set DST_EDITOR_PATH=KSFramework\Assets\Plugins\Editor\KEngineEditor


mkdir %DST_ASSETS_PATH%\..\Product\SettingSource
mkdir %DST_ASSETS_PATH%\..\Product\Bundles


echo %SRC_ASSET_PATH%
echo %DST_PLUGIN_PATH%

mkdir %DST_PLUGIN_PATH% 2>nul
rmdir %DST_PLUGIN_PATH%\KEngine
mklink /J %DST_PLUGIN_PATH%\KEngine %SRC_ASSET_PATH%\KEngine
rmdir %DST_PLUGIN_PATH%\KEngine.Lib
mklink /J %DST_PLUGIN_PATH%\KEngine.Lib %SRC_ASSET_PATH%\KEngine.Lib
rmdir %DST_PLUGIN_PATH%\KEngine.Lib.UI
mklink /J %DST_PLUGIN_PATH%\KEngine.UI %SRC_ASSET_PATH%\KEngine.UI

mkdir %DST_EDITOR_PATH% 2>nul
rmdir %DST_EDITOR_PATH%\KEngine.Editor
mklink /J %DST_EDITOR_PATH%\KEngine.Editor %SRC_ASSET_PATH%\KEngine.Editor\Editor
rmdir %DST_EDITOR_PATH%\KEngine.EditorTools
mklink /J %DST_EDITOR_PATH%\KEngine.EditorTools %SRC_ASSET_PATH%\KEngine.EditorTools\Editor
rmdir %DST_EDITOR_PATH%\KEngine.UI.Editor
mklink /J %DST_EDITOR_PATH%\KEngine.UI.Editor %SRC_ASSET_PATH%\KEngine.UI.Editor\Editor

mkdir KSFramework\Assets\Plugins\libs\ 2>nul
xcopy %SRC_ASSET_PATH%\Plugins\Android\libs\KEngine.Android.jar KSFramework\Assets\Plugins\Android\libs\KEngine.Android.jar /S/Y/R/I


echo Finish!
ping -n 5 127.0.0.1>nul 

