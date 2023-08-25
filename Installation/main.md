# Main Mod Installation
Choose one of the following methods:
* Use the [Vortex](https://www.nexusmods.com/about/vortex/) mod manager
* Use the [BG3ModManager](https://github.com/LaughingLeader/BG3ModManager)
* Install manually

## Manual Installation
1. Download [AutosortContainers](https://www.nexusmods.com/baldursgate3/mods/1091?tab=files) from Nexusmods
2. Extract the zip file to `%localappdata%\Larian Studios\Baldur's Gate 3\Mods`
3. Open `%localappdata%\Larian Studios\Baldur's Gate 3\PlayerProfiles\Public\modsettings.lsx` in a text editor
4. Add parts like instructed below:
   ```xml
    <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
    <save>
      <version major="4" minor="0" revision="10" build="400"/>
      <region id="ModuleSettings">
        <node id="root">
          <children>
            <node id="ModOrder">
              <children>
   ```
   Add the _**next**_ block
   ```xml
                <node id="Module">
                  <attribute id="UUID" type="FixedString" value="c143b33a-7039-4cfd-b0d1-4f4a3bb0667f"/>
                </node>
   ```
   ```xml
                <!-- Already existing mods !-->
              </children>
            </node>
            <node id="Mods">
              <children>
                <node id="ModuleShortDesc">
                  <attribute id="Folder" type="LSString" value="GustavDev"/>
                  <attribute id="MD5" type="LSString" value=""/>
                  <attribute id="Name" type="LSString" value="GustavDev"/>
                  <attribute id="UUID" type="FixedString" value="28ac9ce2-2aba-8cda-b3b5-6e922f71b6b8"/>
                  <attribute id="Version64" type="int64" value="36028797018963968"/>
                </node>
   ```
   Add the _**next**_ block
   ```xml
                <node id="ModuleShortDesc">
                  <attribute id="Folder" type="LSWString" value="Auridh_AC"/>
                  <attribute id="MD5" type="LSString" value=""/>
                  <attribute id="Name" type="FixedString" value="Autosort Containers"/>
                  <attribute id="UUID" type="FixedString" value="c143b33a-7039-4cfd-b0d1-4f4a3bb0667f"/>
                  <attribute id="Version" type="int32" value="144115188075855912"/>
                </node>
   ```
   ```xml
                <!-- Already existing mods !-->
              </children>
            </node>
          </children>
        </node>
      </region>
    </save>
   ```