require("version.nut");

class FMainClass extends GSInfo {
	function GetAuthor()		{ return "DonaldDuck313"; }
	function GetName()			{ return "Local Authorities and Trees"; }
	function GetDescription() 	{ return "This game script does so that the local authorities don't get as mad at you for cutting down trees."; }
	function GetVersion()		{ return SELF_VERSION; }
	function GetDate()			{ return "2021-04-18"; }
	function CreateInstance()	{ return "MainClass"; }
	function GetShortName()		{ return "gls0"; } // Replace this with your own unique 4 letter string
	function GetAPIVersion()	{ return "1.10"; }
	function GetURL()			{ return "https://github.com/DonaldDuck313/OpenTTD-NewGRFs/tree/main/LocalAuthoritiesAndTrees"; }

	function GetSettings() {
	}
}

RegisterGS(FMainClass());
