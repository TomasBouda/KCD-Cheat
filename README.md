# KCD-Cheat

Kingdom Come: Deliverance - Cheat Mod

[Mod page at nexusmods.com](https://www.nexusmods.com/kingdomcomedeliverance/mods/106)

## Create new release

1. Edit `./Source/Scripts/Startup/main.lua` and set **major** + **minor** version number

```lua
    cheat.versionMajor = 1
    cheat.versionMinor = 31
```

2. Run `./build.sh`(or `./build.ps1` on windows). This will do three things:
    1. Catch some synatx errors
    2. Run the unit tests
    3. Regenerate `./Source/Docs/help.txt` and `./Source/Docs/commands.txt`

3. Update `mod_page.txt` with new content from `help.txt`, `commands.txt`

4. Commit and push all changes

5. Relase:
    * On linux run `./release.sh`
    * On windows run `./release.ps1`

6. Upload new release zip files
    * `./Release/Cheat-X.XX.zip`
    * `./Release/Cheat-NOKEYS-X.XX.zip`
