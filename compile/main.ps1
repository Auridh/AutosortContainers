$modName = "AutosortContainers"
$modHandle = "Auridh_AC"
$absPath = Resolve-Path -Path "./"
divine -a convert-loca -g bg3 -s "$absPath/$modName/Localization/English/$modName.xml" -d "$absPath/$modName/Localization/English/$modName.loca";
#divine -a convert-loca -g bg3 -s "$absPath/$modName/Localization/French/$modName.xml" -d "$absPath/$modName/Localization/French/$modName.loca";
divine -a convert-loca -g bg3 -s "$absPath/$modName/Localization/German/$modName.xml" -d "$absPath/$modName/Localization/German/$modName.loca";
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/Content/UI/[PAK]_UI" -d "$absPath/$modName/Public/$modHandle/Content/UI/[PAK]_UI" -i lsx -o lsf;
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/GUI" -d "$absPath/$modName/Public/$modHandle/GUI" -i lsx -o lsf;
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/RootTemplates" -d "$absPath/$modName/Public/$modHandle/RootTemplates" -i lsx -o lsf;
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/Tags" -d "$absPath/$modName/Public/$modHandle/Tags" -i lsx -o lsf;
divine -a create-package -g bg3 -s "$absPath/$modName" -d "$absPath/$modName.pak" -c lz4;
Compress-Archive -Path "$absPath/$modName.pak" -DestinationPath "$absPath/$modName.zip" -Force