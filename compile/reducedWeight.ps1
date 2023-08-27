$modName = "AutosortContainers_ReducedWeight"
$absPath = Resolve-Path -Path "./"
divine -a create-package -g bg3 -s "$absPath/$modName" -d "$absPath/$modName.pak" -c lz4;
Compress-Archive -Path "$absPath/$modName.pak" -DestinationPath "$absPath/$modName.zip" -Force