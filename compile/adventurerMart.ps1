$modName = "AutosortContainers_AdventurerMart"
$modHandle = "Auridh_AC_AdventurerMart"
$absPath = Resolve-Path -Path "./"
divine -a convert-loca -g bg3 -s "$absPath/$modName/Localization/English/$modName.xml" -d "$absPath/$modName/Localization/English/$modName.loca";
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/Content/UI/[PAK]_UI" -d "$absPath/$modName/Public/$modHandle/Content/UI/[PAK]_UI" -i lsx -o lsf;
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/GUI" -d "$absPath/$modName/Public/$modHandle/GUI" -i lsx -o lsf;
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/RootTemplates" -d "$absPath/$modName/Public/$modHandle/RootTemplates" -i lsx -o lsf;
divine -a create-package -g bg3 -s "$absPath/$modName" -d "$absPath/$modName.pak" -c lz4;
Compress-Archive -Path "$absPath/$modName.pak" -DestinationPath "$absPath/$modName.zip" -Force