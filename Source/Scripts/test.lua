local file, fileErr = io.open ("c:\\Program Files (x86)\\Steam\\steamapps\\common\\KingdomComeDeliverance\\mods\\Cheat\\test.txt", "rb")
if not fileErr then
	--   local file = io.open('Mods\\Cheat_Tool\\cmd.txt', "rb");
	print("Executing commands.")
	dofile("c:\\Program Files (x86)\\Steam\\steamapps\\common\\KingdomComeDeliverance\\mods\\Cheat\\test.txt")
	dofile("C:\\Data\\GIT\\KCD-Cheat\\Source\\Scripts\\Startup\\main.lua")
	clear_console()
end