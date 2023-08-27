# Addon Installation
To install, follow the same steps as for the [main mod](main.md).<br><br>
<span style="color:#ed3a12">All Addons should be loaded <strong>AFTER</strong> the main mod!<span>

The [Script Extender](https://github.com/Norbyte/bg3se/releases) by Norbyte is **required** for this addon to function!
You install it by dropping it into the bin folder in your game directory.
If you're using the BG3ModManager, you can go to "Tools" -> "Download & Extract Script Extender" and have the manager install it for you.


## Manual Installation
For manual installation use the codeblocks below instead of the blocks in the installation instruction of the main mod.

```xml
<node id="Module">
    <attribute id="UUID" type="FixedString" value="59333472-ed8a-4ae5-a8ec-1a5b03806e6f"/>
</node>
```
```xml
<node id="ModuleShortDesc">
    <attribute id="Folder" type="LSWString" value="Auridh_AC_RW"/>
    <attribute id="MD5" type="LSString" value=""/>
    <attribute id="Name" type="FixedString" value="Autosort Containers Reduced Weight"/>
    <attribute id="UUID" type="FixedString" value="59333472-ed8a-4ae5-a8ec-1a5b03806e6f"/>
    <attribute id="Version" type="int32" value="144115188075855912"/>
</node>
```
