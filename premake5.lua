project "glm"
	kind "StaticLib"	-- StaticLib for .lib
	language "C++"		-- C++

	targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

	-- Files that should be included into this project
	files
	{
		"glm/**.hpp",
    "glm/**.inl"
	}

	-- If the system is windows
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	-- Debug configuration
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	-- Release configuration
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
