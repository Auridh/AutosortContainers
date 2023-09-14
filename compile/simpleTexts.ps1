$modName = "AutosortContainers_SimpleTexts"
$modHandle = "Auridh_AC_ST"
$absPath = Resolve-Path -Path "./"
divine -a convert-loca -g bg3 -s "$absPath/$modName/Localization/English/AutosortContainers_SimpleTexts.xml" -d "$absPath/$modName/Localization/English/AutosortContainers_SimpleTexts.loca";
divine -a create-package -g bg3 -s "$absPath/$modName" -d "$absPath/$modName.pak" -c lz4;
Compress-Archive -Path "$absPath/$modName.pak" -DestinationPath "$absPath/$modName.zip" -Force