$modName = "AutosortContainers_SimpleIcons"
$modHandle = "Auridh_AC_SI"
$absPath = Resolve-Path -Path "./"
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/Content/UI/[PAK]_UI" -d "$absPath/$modName/Public/$modHandle/Content/UI/[PAK]_UI" -i lsx -o lsf;
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/GUI" -d "$absPath/$modName/Public/$modHandle/GUI" -i lsx -o lsf;
divine -a convert-resources -g bg3 -s "$absPath/$modName/Public/$modHandle/RootTemplates" -d "$absPath/$modName/Public/$modHandle/RootTemplates" -i lsx -o lsf;
divine -a create-package -g bg3 -s "$absPath/$modName" -d "$absPath/$modName.pak" -c lz4;
Compress-Archive -Path "$absPath/$modName.pak" -DestinationPath "$absPath/$modName.zip" -Force