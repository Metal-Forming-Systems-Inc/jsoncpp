project "jsoncpp"
    kind "StaticLib"
    language "C"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/obj/" .. outputdir .. "/%{prj.name}")

	includedirs
	{
		"include"
	}

    files
    {
        "src/lib_json/**.cpp",
        "src/lib_json/**.h",
        "src/lib_json/**.inl",
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"